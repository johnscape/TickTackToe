#ifndef SELECTIONBOX_H
#define SELECTIONBOX_H

#include <vector>
#include <string>
#include "Label.h"
#include "Colour.h"
#include "graphics.hpp"


class SelectionBox : public Label
{
    public:
        /**
        * Egy leg�rd�l� men�t ad meg.
        * @param x A widget X poz�ci�ja
        * @param y A widget Y poz�ci�ja
        * @param xSize A widget hossza
        * @param ySize A widget magass�ga
        * @param values A widget kezd� �rt�keit tartalmazza
        */
        SelectionBox(int x, int y, int xSize, int ySize, std::vector<std::string> values);
        virtual ~SelectionBox();

        /**
        * Ez felel a widget kirajzol�s��rt
        */
        void Draw();

        /**
        * Ez a f�ggv�ny kezeli az eventeket
        * @param ev Az aktu�lis event objektum
        */
        void Handle(genv::event ev);

        /**
        * Megadja, hogy az eg�r a saj�t keretein bel�l van-e
        * @param x Az eg�r X poz�ci�ja
        * @param y Az eg�r Y poz�ci�ja
        */
        bool IsInLine(int x, int y);


        /**
        * �j elemet ad hozz� a list�hoz
        * @param value Az �j elem
        */
        void AddItem(std::string value);

        /**
        * T�r�l egy elemet a list�b�l
        * @param value A t�r�lni k�v�nt elem
        */
        void RemoveItem(std::string value);

        /**
        * T�r�l egy elemet a list�b�l
        * @param value A t�r�lni k�v�nt elem helye
        */
        void RemoveItem(int place);

        /**
        * Megadja a jelenleg kijel�lt elem sorsz�m�t a list�ban
        * @return A kijel�lt elem sorsz�ma
        */
        int CurrentlySelectedValue();

        /**
        * Megadja a jelenleg kijel�lt elemet
        * @return A kijel�lt elem �rt�ke
        */
        std::string CurrentlySelectedItem();

        /**
        * �t�l�tja kijel�lt sz�veg sz�n�t
        * @param r Az �j piros �rt�k
        * @param g Az �j z�ld �rt�k
        * @param b Az �j k�k �rt�k
        */
        void EditSelectedFontColour(int r, int g, int b);

        /**
        * �t�l�tja a kijel�lt el�t�r sz�n�t
        * @param r Az �j piros �rt�k
        * @param g Az �j z�ld �rt�k
        * @param b Az �j k�k �rt�k
        */
        void EditSelectedFrontColour(int r, int g, int b);

        /**
        * Megadja a kis gombok m�ret�t �s a men� mellett l�that� nagy gomb sz�less�g�t
        * @param button A gombok m�rete
        */
        void SetButtonSize(int button);

        /**
        * �t�l�tja, hogy maximum h�ny elem l�tsz�djon a leny�l� men�ben. Amennyiben t�bb elemet tartalmaz, mint ez a sz�m, g�rgetni kell
        * @param Az egyszerre l�that� elemek sz�ma
        */
        void EditMaxItemInView(int elements);

    protected:

    private:
        bool isOpened; /**< Megadja, hogy le van-e g�rd�tve a lista */
        int maxItemsInView; /**< Megadja, hogy h�ny elem l�that� egyszerre */
        int currentlySelected; /**< Megadja, hogy hanyadik elem van jelenleg kiv�lasztva */
        int mouseOnItem; /**< Megadja, hogy jelenleg hanyadik elem f�l�tt van az eg�r. -1 ha egyik f�l�tt sem vagy a lista csukva van */
        int topItem; /**< Megadja, hogy a leg�rd�l� list�ban melyik elem l�that� legf�l�l */

        Colour* selectedFontColour; /**< A kiv�laszt�s bet�sz�ne */
        Colour* selectedFrontColour; /**< A kiv�laszt�s el�t�r sz�ne */
        Colour* buttonColour; /**< A gomb sz�ne */
        Colour* buttonOnClickColour; /**< A gomb sz�ne kattint�skor */

        int buttonSize = 15; /**< A gombok m�rete */

        std::vector<std::string> Values; /**< Ebben vannak t�rolva az �rt�kek */
};

#endif // SELECTIONBOX_H
