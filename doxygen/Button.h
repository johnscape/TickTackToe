#ifndef BUTTON_H
#define BUTTON_H

#include <functional>
#include "Label.h"
#include "Widget.h"
#include "graphics.hpp"

class Button : public Label
{
    public:

        /** \brief Létrehoz egy új gombot
         *
         * \return Button(int x, int y, int xSize, int ySize, std::string text,
         *
         */
        Button(int x, int y, int xSize, int ySize, std::string text, std::function<void()> fv);
        virtual ~Button();


        /** \brief Kirajzolja a widgetet
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


        /** \brief A kattintáskor látható színt változtatja meg
         *
         * \param r int Az új szín piros értéke
         * \param g int Az új szín zöld értéke
         * \param b int Az új szín kék értéke
         * \return void
         *
         */
        void SetOnClickColor(int r, int g, int b);

    protected:

    private:
        std::function<void()> Function;/**< A kattintáskor meghívandó funció */
        Colour * OnClickColor;/**< A kattintáskor látható szín */
        bool isClicking;/**< Le van-e nyomva a gomb */
};

#endif // BUTTON_H
