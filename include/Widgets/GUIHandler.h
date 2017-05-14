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
        * Ez az oszt�ly kezeli az �sszes widgetet
        * @param xx az ablak sz�less�ge
        * @param yy az ablak magass�ga
        */
        GUIHandler(int& xx, int& yy);

        virtual ~GUIHandler();

        /**
        * Ezzel a f�ggvv�nnyel lehet �j widgetet hozz�dani az oszt�lyhoz
        * @param w egy mutat� a hozz�dani k�v�nt widgetre
        */
        void AddWidget(Widget* w);

        /**
        * Ez a f�ggv�ny az adott poz�cion lev� widgetet t�vol�tja el az oszt�lyb�l, es t�rli a k�perny�r�l
        * @param num adja meg a vektorban lev� sorsz�m�t a t�r�lni k�v�nt vektornak
        */
        void RemoveWidget(int num);

        /**
        * Ez a f�ggv�ny t�rli a megadott widgetet az oszt�lyb�l, ha l�tezik
        * @param w a t�r�lni k�v�nt widget
        */
        void RemoveWidget(Widget* w);


        void DeleteAllWidget();

        /**
        * Ez a f�ggv�ny ind�tja el a f� ciklust ami kezeli az inputot �s a widgeteket
        * @param exitOnEscape ha igazra van �llitva a grafikus fel�letb�l ki lehet l�pni az Esc billenty� lenyom�s�val
        * @param timer megadja, hogy h�ny milliszekundomonk�nt rajzolja �jra a k�perny�t
        */
        void Start(bool exitOnEscape, int timer);

        void Exit();
        bool GetIsRunning();

    protected:

    private:

        std::vector<Widget*> Widgets; /**< Ez a vektor t�rolja a widgeteket*/
        int SelectedWidget; /**< Ez az �ppen kiv�lasztott widget sorsz�m�t t�rolja*/
        Colour* bgColour; /**< Ez az ablak h�tt�rsz�n�t adja meg*/
        int WindowX; /**< Ebben t�rolom az ablak sz�less�g�t*/
        int WindowY; /**< Ebben t�rolom az ablak magass�g�t*/
        bool Exiting;
        bool IsRunning;

        bool isEscapeExit; /**< Ezzel ellen�rz�m, hogy ki kell-e l�pni az Esc billenty� lenyom�s�ra*/

        /**
        * Ez a f�ggv�ny felel a k�perny� t�rl�s��rt �s a widgetek kirajzol�s��rt
        */
        void Draw();

        /**
        * Ez a f�ggv�ny kezeli az inputokat
        * @param ev a megkapott eventet t�rolja
        */
        void Handle(genv::event ev);
};

#endif // GUIHANDLER_H
