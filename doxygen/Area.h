#ifndef AREA_H
#define AREA_H

#include "Widget.h"
#include <functional>


class Area : public Widget
{
    public:
        /** \brief L�trehoz egy �j ter�letet a X vagy O kijelz�s�re
         *
         * \param x int Az x koordin�ta
         * \param y int Az y koordin�ta
         *
         */
        Area(int x, int y);

        virtual ~Area();

        /** \brief Be�ll�tja az esem�nyt, ami akkor k�vetkezik be, ha r�kattintanak
         *
         * \param Area* Saj�t mag�t adja vissza
         * \return void
         *
         */
        void SetEventVoid(std::function<void(Area*)> event);

        /** \brief Be�ll�tja az �rt�k�t
         *
         * \param value int A be�ll�tand� �rt�k
         * \return void
         *
         */
        void SetValue(int value);

        /** \brief A kijelz�s sz�n�t adja meg
         *
         * \param r int A piros �rt�k
         * \param g int A z�ld �rt�k
         * \param b int A k�k �rt�k
         * \return void
         *
         */
        void SetMarkerColour(int r, int g, int b);

        /** \brief Megadja az aktu�lis �rt�k�t
         *
         * \return int Az aktu�lis �rt�k
         *
         */
        int GetValue();

        /** \brief Megadja az x koordin�t�j�t
         *
         * \return int Az x koordin�ta
         *
         */
        int GetXPostion();

        /** \brief Megadja az y koordin�t�j�t
         *
         * \return int Az y koordin�ta
         *
         */
        int GetYPosition();


        /** \brief Kirajzolja a widgetet
         *
         * \return virtual void
         *
         */
        virtual void Draw();

        /** \brief Kezeli a widgetet az inputnak megfelel�en
         *
         * \param ev genv::event Az input eventje
         * \return virtual void
         *
         */
        virtual void Handle(genv::event ev);

        /** \brief Megadja, hogy egy koordin�ta rajta van-e a widgeten
         *
         * \param x int Az x koordin�ta
         * \param y int Az y koordin�ta
         * \return virtual bool
         *
         */
        virtual bool IsInLine(int x, int y);

    protected:

    private:
        int XVal;/**< Az x koordin�ta */
        int YVal;/**< Az y koordin�ta */
        int Value;/**< Az aktu�lis �rt�ke */
        Colour * MarkColour;/**< A kijelz�s sz�ne */
        std::function<void(Area*)> OnEvent;/**< Az event hat�s�ra megh�v�d� esem�ny */
};

#endif // AREA_H
