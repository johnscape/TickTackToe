#ifndef WIDGET_H
#define WIDGET_H
#include "graphics.hpp"
#include "Colour.h"

class Widget
{
    public:
        /**
        * Egy új widgetet hoz létre.
        * @param x A widget X pozíciója
        * @param y A widget Y pozíciója
        * @param xSize A widget hossza
        * @param ySize A widget magassága
        */
        Widget(int x, int y, int xSize, int ySize);
        virtual ~Widget();

        /**
        * Ez felel a widget kirajzolásáért
        */
        virtual void Draw() = 0;

        /**
        * Ez a függvény kezeli az eventeket
        * @param ev Az aktuális event objektum
        */
        virtual void Handle(genv::event ev) = 0;

        /**
        * Megadja, hogy az egér a saját keretein belül van-e
        * @param x Az egér X pozíciója
        * @param y Az egér Y pozíciója
        */
        virtual bool IsInLine(int x, int y) = 0;

        /**
        * Átálítja a margó vastagságát
        * @param thickness Az új vastagság
        */
        void SetBorderThickness(int thickness);

        /**
        * Átálítja a widget háttérszínét
        * @param r Az új piros érték
        * @param g Az új zöld érték
        * @param b Az új kék érték
        */
        void SetBackgroundColour(int r, int g, int b);

        /**
        * Átálítja a widget elõtér színét
        * @param r Az új piros érték
        * @param g Az új zöld érték
        * @param b Az új kék érték
        */
        void SetFrontColour(int r, int g, int b);

        void SetEnable(bool value);

        void SetVisible(bool value);

    protected:
        int X; /**< A widget X koordinátája */
        int Y; /**< A widget Y koordinátája */
        int XSize; /**< A widget szélessége */
        int YSize; /**< A widget magassága */
        Colour* bgColor; /**< A háttér színe */
        Colour* frontColor; /**< Az elõtér színe */

        int borderThickness; /**< A margó vastagsága */
        bool Selected; /**< Ki van-e választva a widget */

        bool IsEnabled;
        bool IsVisible;

    private:

};

#endif // WIDGET_H
