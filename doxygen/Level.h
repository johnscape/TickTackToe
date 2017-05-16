#ifndef LEVEL_H
#define LEVEL_H

#include <iostream>

class Level
{
    public:
        /** \brief L�trehoz egy �j p�ly�t
         *
         * \param levelSize int A p�lya m�rete (X*X)
         * \param win int A sz�ks�ges pontsz�m a j�t�k megnyer�s�hez
         *
         */
        Level(int levelSize, int win);
        virtual ~Level();

        /** \brief Megadja a p�lya egy adott koordin�t�j�n lev� mez� �rt�k�t
         *
         * \param x int Az x koordin�ta
         * \param y int Az y koordin�ta
         * \return int Az x,y koordin�t�n lev� �rt�k
         *
         */
        int GetValue(int x, int y);

        /** \brief Visszat�r�sk�nt megadja, hogy h�ny pont kell a gy�zelemhez
         *
         * \return int Pontok sz�ma a gy�zelemhez
         *
         */
        int ValueToWin();

        /** \brief A p�lya m�ret�t adja meg
         *
         * \return int A p�lya m�rete
         *
         */
        int GetSize();

        /** \brief A megadott koordin�t�kra elhelyez egy �rt�ket
         *
         * \param x int Az x koordin�ta
         * \param y int Az y koordin�ta
         * \param xVal bool Az elhelyezni k�v�nt �rt�k x-e
         * \return void
         *
         */
        void Place(int x, int y, bool xVal);

        /** \brief Megadja, hogy megnyerte-e valaki a j�t�kot
         *
         * \return int A j�t�k aktu�lis �llapota sz�mk�nt (-1 nincs v�ge, 0 d�ntetlen, 1 x nyert, 2 O nyert)
         *
         */
        int IsGameWon();

        /** \brief Egy adott koordin�t�r�l t�lri az �rt�ket
         *
         * \param x int Az x koordin�ta
         * \param y int Az y koordin�ta
         * \return void
         *
         */
        void RemoveValue(int x, int y);

        /** \brief Megadja, hogy egy adott koordin�ta k�r�l �resek-e a mez�k
         *
         * \param x int Az x koordin�ta
         * \param y int Az y koordin�ta
         * \return bool �resek-e a mez�k egy inervalumon bel�l
         *
         */
        bool IsAreaEmpty(int x, int y);

        /** \brief Megadja, hogy �res-e a p�lya
         *
         * \return bool �res-e a p�lya
         *
         */
        bool IsLevelEmpty();

        /** \brief Megsz�molja, hogy h�ny X �s O van a p�ly�n
         *
         * \return void
         *
         */
        void Recount();

        /** \brief Vissza�ll�tja a p�ly�t alap�rtelmezetten �resbe
         *
         * \return void
         *
         */
        void Reset();

        /** \brief Az utolj�ra m�dos�tott mez� x koordin�t�j�t adja vissza
         *
         * \return int Az utolj�ra m�dos�tott mez� x koordin�t�ja
         *
         */
        int GetLastX();

        /** \brief Az utolj�ra m�dos�tott mez� y koordin�t�j�t adja vissza
         *
         * \return int Az utolj�ra m�dos�tott mez� y koordin�t�ja
         *
         */
        int GetLastY();

        /** \brief A megadott m�don ki�rja a p�lya aktu�lis tartalm�t
         *
         * \param writer std::ostream& A kimeneti forr�s
         * \return void
         *
         */
        void WriteCurrentPosition(std::ostream& writer);

    protected:

    private:
        int** LevelData;/**< Maga a p�lya adatai */
        int Size;/**< A p�lya m�rete */
        int NeedToWin;/**< A nyer�shet sz�ks�ges pontsz�m */

        int XCount;/**< X-ek sz�ma */
        int OCount;/**< O-k sz�ma */

        int LastX;/**< Az utolj�ra m�dos�tott mez� X koordin�t�ja */
        int LastY;/**< Az utolj�ra m�dos�tott mez� Y koordin�t�ja */

        /** \brief Egy ter�leten ellen�rzi, hogy el�g pontja van-e a j�t�kosnak a gy�zelemhez
         *
         * \param x int A ter�let k�zep�nek x koordin�t�ja
         * \param y int A ter�let k�zep�nek y koordin�t�ja
         * \param LookFor int A j�t�kos, akit figyelni kell
         * \return int Az adott j�t�kos �rt�ke, ha nyert, 0 ha nem
         *
         */
        int CheckArea(int x, int y, int LookFor);
};

#endif // LEVEL_H
