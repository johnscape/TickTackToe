#ifndef LABEL_H
#define LABEL_H

#include "Colour.h"
#include "graphics.hpp"
#include "Widget.h"
#include <string.h>


class Label : public Widget
{
    public:
        /**
        * Egy Label widgetet hoz létre ami egyszerűen egy szöveget tárol és rajzol ki
        * @param x Az X pozíciót tárolja
        * @param y Az Y pozíciót tátolja
        * @param xSize Az X tengelyen való hosszt tárolja
        * @param ySize Az Y tengelyen való magasságot tárolja
        * @param text A kirajzolni kívánt szöveg
        */
        Label(int x, int y, int xSize, int ySize, std::string text);
        virtual ~Label();


        /**
        * Ez a függvény felel a widget kirajzolásáért
        */
        virtual void Draw();

        /**
        * Ez a függvény kezeli az eventeket (ebben az oszályban üres, mivel a Label csak szöveg kijelzsésére használt)
        * @param ev Az aktuális event objektum
        */
        virtual void Handle(genv::event ev) {}//üresen hagyom, mert a label nem csinál semmit

        /**
        * Megadja, hogy az egér a saját keretein belül van-e
        * @param x Az egér X pozíciója
        * @param y Az egér Y pozíciója
        */
        virtual bool IsInLine(int x, int y);


        /**
        * Megadja, hogy az éppen tárolt szöveg elfér-e a widgeten
        * @return Elfér-e a "Text" a widgeten
        */
        bool IsTextFits();


        /**
        * Átálítja az betű színét
        * @param r A betű piros értéke
        * @param g A betű zöld értéke
        * @param b A betű kék értéke
        */
        void SetFontColour(int r, int g, int b);

        /**
        * Átálítja az aktuális szöveget
        * @param newText Az új szöveg
        */
        void SetText(std::string newText);

    protected:
        Colour* fontColor; /**< A szöveg színét tárolja */
        std::string Text; /**< Az aktuális szöveget tárolja */
    private:

};

#endif // LABEL_H
