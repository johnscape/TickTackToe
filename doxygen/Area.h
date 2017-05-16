#ifndef AREA_H
#define AREA_H

#include "Widget.h"
#include <functional>


class Area : public Widget
{
    public:
        /** \brief Létrehoz egy új területet a X vagy O kijelzésére
         *
         * \param x int Az x koordináta
         * \param y int Az y koordináta
         *
         */
        Area(int x, int y);

        virtual ~Area();

        /** \brief Beállítja az eseményt, ami akkor következik be, ha rákattintanak
         *
         * \param Area* Saját magát adja vissza
         * \return void
         *
         */
        void SetEventVoid(std::function<void(Area*)> event);

        /** \brief Beállítja az értékét
         *
         * \param value int A beállítandó érték
         * \return void
         *
         */
        void SetValue(int value);

        /** \brief A kijelzés színét adja meg
         *
         * \param r int A piros érték
         * \param g int A zöld érték
         * \param b int A kék érték
         * \return void
         *
         */
        void SetMarkerColour(int r, int g, int b);

        /** \brief Megadja az aktuális értékét
         *
         * \return int Az aktuális érték
         *
         */
        int GetValue();

        /** \brief Megadja az x koordinátáját
         *
         * \return int Az x koordináta
         *
         */
        int GetXPostion();

        /** \brief Megadja az y koordinátáját
         *
         * \return int Az y koordináta
         *
         */
        int GetYPosition();


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

    protected:

    private:
        int XVal;/**< Az x koordináta */
        int YVal;/**< Az y koordináta */
        int Value;/**< Az aktuális értéke */
        Colour * MarkColour;/**< A kijelzés színe */
        std::function<void(Area*)> OnEvent;/**< Az event hatására meghívódó esemény */
};

#endif // AREA_H
