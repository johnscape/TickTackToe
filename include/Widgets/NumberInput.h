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
        * Egy sz�ml�l� widget aminek az �rt�ke k�t gombbal, valamint a fel �s le nyilakkal �s a page up, page down gombokkal szab�lyozhat�
        * @param x A widget X poz�ci�ja
        * @param y A widget Y poz�ci�ja
        * @param xSize A widget hossza (20 pixel m�g tartozik a v�g�hez, ezek a gombok)
        * @param ySize A widget magass�ga
        * @param startingNumber A sz�ml�l� kezd� sz�ma
        * @param maxValue A maximum �rt�k, a sz�ml�l� nem mehet ezen t�l
        * @param minValue A minimum �rt�k, a sz�ml�l� �rt�ke nem lehet enn�l kisebb
        */
        NumberInput(int x, int y, int xSize, int ySize, int startingNumber, int maxValue, int minValue);
        virtual ~NumberInput();

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
        * �t�l�tja a sz�ml�l� �rt�k�t
        * @param val Az �j �rt�k
        */
        void SetValue(int val);

        /**
        * Hozz�ad valamennyit a sz�ml�l� jelenlegi �rt�k�hez
        * @param val A hpzz�adand� �rt�k
        */
        void AdjustValue(int val);

        /**
        * A sz�ml�l�t l�pteti kis vagy nagy egys�gnyivel pozit�v vagy negat�v ir�nyba
        * @param up Ez adja meg, hogy pozit�v ir�nyba l�p-e
        * @param bug Ez adja meg, hogy kis vagy nagy egys�get l�p
        */
        void Step(bool up, bool big);

        /**
        * �j fels�korl�tot ad a widgetnek
        * @param maximum Az �j maximum
        */
        void SetMaximumValue(int maximum);

        /**
        * �j als�korl�tot ad a widgetnek
        * @param minimum Az �j minimum
        */
        void SetMinimumValue(int minimum);

        /**
        * �t�l�tja a kis egys�g �rt�k�t (amit egy kattint�ssal l�p)
        * @param step Az �j egys�g �rt�ke
        */
        void SetStepValue(int step);

        /**
        * �t�l�tja a nagy egys�g �rt�k�t (amit a page up/down gombra l�p)
        * @param bigstep Az �j egys�g �rt�ke
        */
        void SetBigStepValue(int bigstep);



        /**
        * �t�l�tja a gomb sz�n�t
        * @param r Az �j piros �rt�k
        * @param g Az �j z�ld �rt�k
        * @param b Az �j k�k �rt�k
        */
        void SetButtonColour(int r, int g, int b);

        /**
        * �t�l�tja a gomb kattint�skor l�that� sz�n�t
        * @param r Az �j piros �rt�k
        * @param g Az �j z�ld �rt�k
        * @param b Az �j k�k �rt�k
        */
        void SetButtonOnClickColour(int r, int g, int b);

        int GetCurrentValue();

        void SetEventVoid(std::function<void(NumberInput*)> event);

    protected:

    private:
        int CurrentNumber; /**< A jelenlegi �rt�k */
        int MaximumValue; /**< A maximum �rt�k */
        int MinimumValue; /**< A minimum �rt�k */
        int StepValue; /**< A kis l�p�s m�rt�ke */
        int BigStepValue; /**< A nagy l�p�s m�rt�ke */

        bool buttonUpClicking; /**< Igaz, amennyiben a felfele gombra �ppen r�kattintanak */
        bool buttonDownClicking; /**< Igaz, amennyiben a lefele gombra �ppen r�kattintanak */

        std::function<void(NumberInput*)> OnEvent;

        /**
        * Ellen�rzi, hogy a jelenlegi �rt�k nem-e l�g ki a hat�rokon
        */
        void CheckValue();

        Colour* buttonColour; /**< A gomb sz�n�t t�rolja */
        Colour* buttonClickColour; /**< A gomb kattint�skor l�that� sz�n�t t�rolja */
        //Colour* selectedColour; /**< A kiv�laszt�s sz�n�t t�rolja */
};

#endif // NUMBERINPUT_H
