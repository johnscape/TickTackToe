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
        * Egy legördülõ menüt ad meg.
        * @param x A widget X pozíciója
        * @param y A widget Y pozíciója
        * @param xSize A widget hossza
        * @param ySize A widget magassága
        * @param values A widget kezdõ értékeit tartalmazza
        */
        SelectionBox(int x, int y, int xSize, int ySize, std::vector<std::string> values);
        virtual ~SelectionBox();

        /**
        * Ez felel a widget kirajzolásáért
        */
        void Draw();

        /**
        * Ez a függvény kezeli az eventeket
        * @param ev Az aktuális event objektum
        */
        void Handle(genv::event ev);

        /**
        * Megadja, hogy az egér a saját keretein belül van-e
        * @param x Az egér X pozíciója
        * @param y Az egér Y pozíciója
        */
        bool IsInLine(int x, int y);


        /**
        * Új elemet ad hozzá a listához
        * @param value Az új elem
        */
        void AddItem(std::string value);

        /**
        * Töröl egy elemet a listából
        * @param value A törölni kívánt elem
        */
        void RemoveItem(std::string value);

        /**
        * Töröl egy elemet a listából
        * @param value A törölni kívánt elem helye
        */
        void RemoveItem(int place);

        /**
        * Megadja a jelenleg kijelölt elem sorszámát a listában
        * @return A kijelölt elem sorszáma
        */
        int CurrentlySelectedValue();

        /**
        * Megadja a jelenleg kijelölt elemet
        * @return A kijelölt elem értéke
        */
        std::string CurrentlySelectedItem();

        /**
        * Átálítja kijelölt szöveg színét
        * @param r Az új piros érték
        * @param g Az új zöld érték
        * @param b Az új kék érték
        */
        void EditSelectedFontColour(int r, int g, int b);

        /**
        * Átálítja a kijelölt elõtér színét
        * @param r Az új piros érték
        * @param g Az új zöld érték
        * @param b Az új kék érték
        */
        void EditSelectedFrontColour(int r, int g, int b);

        /**
        * Megadja a kis gombok méretét és a menü mellett látható nagy gomb szélességét
        * @param button A gombok mérete
        */
        void SetButtonSize(int button);

        /**
        * Átálítja, hogy maximum hány elem látszódjon a lenyíló menüben. Amennyiben több elemet tartalmaz, mint ez a szám, görgetni kell
        * @param Az egyszerre látható elemek száma
        */
        void EditMaxItemInView(int elements);

    protected:

    private:
        bool isOpened; /**< Megadja, hogy le van-e gördítve a lista */
        int maxItemsInView; /**< Megadja, hogy hány elem látható egyszerre */
        int currentlySelected; /**< Megadja, hogy hanyadik elem van jelenleg kiválasztva */
        int mouseOnItem; /**< Megadja, hogy jelenleg hanyadik elem fölött van az egér. -1 ha egyik fölött sem vagy a lista csukva van */
        int topItem; /**< Megadja, hogy a legördülõ listában melyik elem látható legfölül */

        Colour* selectedFontColour; /**< A kiválasztás betûszíne */
        Colour* selectedFrontColour; /**< A kiválasztás elõtér színe */
        Colour* buttonColour; /**< A gomb színe */
        Colour* buttonOnClickColour; /**< A gomb színe kattintáskor */

        int buttonSize = 15; /**< A gombok mérete */

        std::vector<std::string> Values; /**< Ebben vannak tárolva az értékek */
};

#endif // SELECTIONBOX_H
