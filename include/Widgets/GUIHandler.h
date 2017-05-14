#ifndef GUIHANDLER_H
#define GUIHANDLER_H
#include "graphics.hpp"
#include <vector>
#include <iostream>
#include <fstream>
#include "Widget.h"

class GUIHandler
{
    public:

        /**
        * Ez az osztály kezeli az összes widgetet
        * @param xx az ablak szélessége
        * @param yy az ablak magassága
        */
        GUIHandler(int& xx, int& yy);

        virtual ~GUIHandler();

        /**
        * Ezzel a függvvénnyel lehet új widgetet hozzádani az osztályhoz
        * @param w egy mutató a hozzádani kívánt widgetre
        */
        void AddWidget(Widget* w);

        /**
        * Ez a függvény az adott pozícion levõ widgetet távolítja el az osztályból, es törli a képernyõrõl
        * @param num adja meg a vektorban levõ sorszámát a törölni kívánt vektornak
        */
        void RemoveWidget(int num);

        /**
        * Ez a függvény törli a megadott widgetet az osztályból, ha létezik
        * @param w a törölni kívánt widget
        */
        void RemoveWidget(Widget* w);


        void DeleteAllWidget();

        /**
        * Ez a függvény indítja el a fõ ciklust ami kezeli az inputot és a widgeteket
        * @param exitOnEscape ha igazra van állitva a grafikus felületbõl ki lehet lépni az Esc billentyû lenyomásával
        * @param timer megadja, hogy hány milliszekundomonként rajzolja újra a képernyõt
        */
        void Start(bool exitOnEscape, int timer);

        void Exit();
        bool GetIsRunning();

    protected:

    private:

        std::vector<Widget*> Widgets; /**< Ez a vektor tárolja a widgeteket*/
        int SelectedWidget; /**< Ez az éppen kiválasztott widget sorszámát tárolja*/
        Colour* bgColour; /**< Ez az ablak háttérszínét adja meg*/
        int WindowX; /**< Ebben tárolom az ablak szélességét*/
        int WindowY; /**< Ebben tárolom az ablak magasságát*/
        bool Exiting;
        bool IsRunning;

        bool isEscapeExit; /**< Ezzel ellenõrzöm, hogy ki kell-e lépni az Esc billentyû lenyomására*/

        /**
        * Ez a függvény felel a képernyõ törléséért és a widgetek kirajzolásáért
        */
        void Draw();

        /**
        * Ez a függvény kezeli az inputokat
        * @param ev a megkapott eventet tárolja
        */
        void Handle(genv::event ev);
};

#endif // GUIHANDLER_H
