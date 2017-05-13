#ifndef WIDGET_H
#define WIDGET_H
#include "graphics.hpp"
#include "Colour.h"

class Widget
{
    public:
        /**
        * Egy �j widgetet hoz l�tre.
        * @param x A widget X poz�ci�ja
        * @param y A widget Y poz�ci�ja
        * @param xSize A widget hossza
        * @param ySize A widget magass�ga
        */
        Widget(int x, int y, int xSize, int ySize);
        virtual ~Widget();

        /**
        * Ez felel a widget kirajzol�s��rt
        */
        virtual void Draw() = 0;

        /**
        * Ez a f�ggv�ny kezeli az eventeket
        * @param ev Az aktu�lis event objektum
        */
        virtual void Handle(genv::event ev) = 0;

        /**
        * Megadja, hogy az eg�r a saj�t keretein bel�l van-e
        * @param x Az eg�r X poz�ci�ja
        * @param y Az eg�r Y poz�ci�ja
        */
        virtual bool IsInLine(int x, int y) = 0;

        /**
        * �t�l�tja a marg� vastags�g�t
        * @param thickness Az �j vastags�g
        */
        void SetBorderThickness(int thickness);

        /**
        * �t�l�tja a widget h�tt�rsz�n�t
        * @param r Az �j piros �rt�k
        * @param g Az �j z�ld �rt�k
        * @param b Az �j k�k �rt�k
        */
        void SetBackgroundColour(int r, int g, int b);

        /**
        * �t�l�tja a widget el�t�r sz�n�t
        * @param r Az �j piros �rt�k
        * @param g Az �j z�ld �rt�k
        * @param b Az �j k�k �rt�k
        */
        void SetFrontColour(int r, int g, int b);

        void SetEnable(bool value);

        void SetVisible(bool value);

    protected:
        int X; /**< A widget X koordin�t�ja */
        int Y; /**< A widget Y koordin�t�ja */
        int XSize; /**< A widget sz�less�ge */
        int YSize; /**< A widget magass�ga */
        Colour* bgColor; /**< A h�tt�r sz�ne */
        Colour* frontColor; /**< Az el�t�r sz�ne */

        int borderThickness; /**< A marg� vastags�ga */
        bool Selected; /**< Ki van-e v�lasztva a widget */

        bool IsEnabled;
        bool IsVisible;

    private:

};

#endif // WIDGET_H
