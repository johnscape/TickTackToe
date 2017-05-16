#ifndef RADIOBUTTON_H
#define RADIOBUTTON_H

#include <string>
#include "Label.h"
#include "Colour.h"

class RadioButton : public Label
{
    public:
        /** \brief Létrehoz egy új kiválasztó gombot
         *
         * \param x int Az x koordináta
         * \param y int Az y koordináta
         * \param buttonSize int A gomb sugara
         * \param text std::string A gomb szövege
         * \param value int A gomb értéke
         *
         */
        RadioButton(int x, int y, int buttonSize, std::string text, int value);
        virtual ~RadioButton();


        /** \brief Kirajzolja a gombot
         *
         * \return virtual void
         *
         */
        virtual void Draw();

        /** \brief Kezeli a widgetet az inputnak megfelelõen
         *
         * \param ev genv::event Az input eventje
         * \return virtual void
         *
         */
        virtual void Handle(genv::event ev);

        /** \brief Megadja, hogy egy koordináta rajta van-e a widgeten
         *
         * \param x int Az x koordináta
         * \param y int Az y koordináta
         * \return virtual bool
         *
         */
        virtual bool IsInLine(int x, int y);

        /** \brief Beállítja, hogy ki van-e jelölve
         *
         * \param value bool A kijelölés értéke
         * \return void
         *
         */
        void SetSelection(bool value);

        /** \brief Megadja, hogy ki van-e jelölve
         *
         * \return bool A kijelölés értéke
         *
         */
        bool GetSelection();

        /** \brief Megadja a gomb értékét
         *
         * \return int A gomb értéke
         *
         */
        int GetValue();

    protected:

    private:
        int Value;/**< A gomb értéke */
        bool IsSelected;/**< A gomb kiválasztottsága */
        Colour* onClickColour;/**< A gomb színe kattintáskor */

        /** \brief Rajzol egy kört
         *
         * \param x int A kör középpontjának x koordinátája
         * \param y int A kör középpontjának y koordinátája
         * \param r int A kör sugara
         * \param thickness int A kör vastagsága
         * \return void
         *
         */
        void DrawCircle(int x, int y, int r, int thickness);
};

#endif // RADIOBUTTON_H
