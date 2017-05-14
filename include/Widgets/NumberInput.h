#ifndef NUMBERINPUT_H
#define NUMBERINPUT_H

#include "graphics.hpp"
#include "Label.h"
#include "Colour.h"
#include <functional>

class NumberInput : public Label
{
    public:
        /**
        * Egy számláló widget aminek az értéke két gombbal, valamint a fel és le nyilakkal és a page up, page down gombokkal szabályozható
        * @param x A widget X pozíciója
        * @param y A widget Y pozíciója
        * @param xSize A widget hossza (20 pixel még tartozik a végéhez, ezek a gombok)
        * @param ySize A widget magassága
        * @param startingNumber A számláló kezdõ száma
        * @param maxValue A maximum érték, a számláló nem mehet ezen túl
        * @param minValue A minimum érték, a számláló értéke nem lehet ennél kisebb
        */
        NumberInput(int x, int y, int xSize, int ySize, int startingNumber, int maxValue, int minValue);
        virtual ~NumberInput();

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
        * Átálítja a számláló értékét
        * @param val Az új érték
        */
        void SetValue(int val);

        /**
        * Hozzáad valamennyit a számláló jelenlegi értékéhez
        * @param val A hpzzáadandó érték
        */
        void AdjustValue(int val);

        /**
        * A számlálót lépteti kis vagy nagy egységnyivel pozitív vagy negatív irányba
        * @param up Ez adja meg, hogy pozitív irányba lép-e
        * @param bug Ez adja meg, hogy kis vagy nagy egységet lép
        */
        void Step(bool up, bool big);

        /**
        * Új felsõkorlátot ad a widgetnek
        * @param maximum Az új maximum
        */
        void SetMaximumValue(int maximum);

        /**
        * Új alsókorlátot ad a widgetnek
        * @param minimum Az új minimum
        */
        void SetMinimumValue(int minimum);

        /**
        * Átálítja a kis egység értékét (amit egy kattintással lép)
        * @param step Az új egység értéke
        */
        void SetStepValue(int step);

        /**
        * Átálítja a nagy egység értékét (amit a page up/down gombra lép)
        * @param bigstep Az új egység értéke
        */
        void SetBigStepValue(int bigstep);



        /**
        * Átálítja a gomb színét
        * @param r Az új piros érték
        * @param g Az új zöld érték
        * @param b Az új kék érték
        */
        void SetButtonColour(int r, int g, int b);

        /**
        * Átálítja a gomb kattintáskor látható színét
        * @param r Az új piros érték
        * @param g Az új zöld érték
        * @param b Az új kék érték
        */
        void SetButtonOnClickColour(int r, int g, int b);

        int GetCurrentValue();

        void SetEventVoid(std::function<void(NumberInput*)> event);

    protected:

    private:
        int CurrentNumber; /**< A jelenlegi érték */
        int MaximumValue; /**< A maximum érték */
        int MinimumValue; /**< A minimum érték */
        int StepValue; /**< A kis lépés mértéke */
        int BigStepValue; /**< A nagy lépés mértéke */

        bool buttonUpClicking; /**< Igaz, amennyiben a felfele gombra éppen rákattintanak */
        bool buttonDownClicking; /**< Igaz, amennyiben a lefele gombra éppen rákattintanak */

        std::function<void(NumberInput*)> OnEvent;

        /**
        * Ellenõrzi, hogy a jelenlegi érték nem-e lóg ki a határokon
        */
        void CheckValue();

        Colour* buttonColour; /**< A gomb színét tárolja */
        Colour* buttonClickColour; /**< A gomb kattintáskor látható színét tárolja */
        //Colour* selectedColour; /**< A kiválasztás színét tárolja */
};

#endif // NUMBERINPUT_H
