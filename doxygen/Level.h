#ifndef LEVEL_H
#define LEVEL_H

#include <iostream>

class Level
{
    public:
        /** \brief Létrehoz egy új pályát
         *
         * \param levelSize int A pálya mérete (X*X)
         * \param win int A szükséges pontszám a játék megnyeréséhez
         *
         */
        Level(int levelSize, int win);
        virtual ~Level();

        /** \brief Megadja a pálya egy adott koordinátáján levõ mezõ értékét
         *
         * \param x int Az x koordináta
         * \param y int Az y koordináta
         * \return int Az x,y koordinátán levõ érték
         *
         */
        int GetValue(int x, int y);

        /** \brief Visszatérésként megadja, hogy hány pont kell a gyõzelemhez
         *
         * \return int Pontok száma a gyõzelemhez
         *
         */
        int ValueToWin();

        /** \brief A pálya méretét adja meg
         *
         * \return int A pálya mérete
         *
         */
        int GetSize();

        /** \brief A megadott koordinátákra elhelyez egy értéket
         *
         * \param x int Az x koordináta
         * \param y int Az y koordináta
         * \param xVal bool Az elhelyezni kívánt érték x-e
         * \return void
         *
         */
        void Place(int x, int y, bool xVal);

        /** \brief Megadja, hogy megnyerte-e valaki a játékot
         *
         * \return int A játék aktuális állapota számként (-1 nincs vége, 0 döntetlen, 1 x nyert, 2 O nyert)
         *
         */
        int IsGameWon();

        /** \brief Egy adott koordinátáról tölri az értéket
         *
         * \param x int Az x koordináta
         * \param y int Az y koordináta
         * \return void
         *
         */
        void RemoveValue(int x, int y);

        /** \brief Megadja, hogy egy adott koordináta körül üresek-e a mezõk
         *
         * \param x int Az x koordináta
         * \param y int Az y koordináta
         * \return bool Üresek-e a mezõk egy inervalumon belül
         *
         */
        bool IsAreaEmpty(int x, int y);

        /** \brief Megadja, hogy üres-e a pálya
         *
         * \return bool Üres-e a pálya
         *
         */
        bool IsLevelEmpty();

        /** \brief Megszámolja, hogy hány X és O van a pályán
         *
         * \return void
         *
         */
        void Recount();

        /** \brief Visszaállítja a pályát alapértelmezetten üresbe
         *
         * \return void
         *
         */
        void Reset();

        /** \brief Az utoljára módosított mezõ x koordinátáját adja vissza
         *
         * \return int Az utoljára módosított mezõ x koordinátája
         *
         */
        int GetLastX();

        /** \brief Az utoljára módosított mezõ y koordinátáját adja vissza
         *
         * \return int Az utoljára módosított mezõ y koordinátája
         *
         */
        int GetLastY();

        /** \brief A megadott módon kiírja a pálya aktuális tartalmát
         *
         * \param writer std::ostream& A kimeneti forrás
         * \return void
         *
         */
        void WriteCurrentPosition(std::ostream& writer);

    protected:

    private:
        int** LevelData;/**< Maga a pálya adatai */
        int Size;/**< A pálya mérete */
        int NeedToWin;/**< A nyeréshet szükséges pontszám */

        int XCount;/**< X-ek száma */
        int OCount;/**< O-k száma */

        int LastX;/**< Az utoljára módosított mezõ X koordinátája */
        int LastY;/**< Az utoljára módosított mezõ Y koordinátája */

        /** \brief Egy területen ellenõrzi, hogy elég pontja van-e a játékosnak a gyõzelemhez
         *
         * \param x int A terület közepének x koordinátája
         * \param y int A terület közepének y koordinátája
         * \param LookFor int A játékos, akit figyelni kell
         * \return int Az adott játékos értéke, ha nyert, 0 ha nem
         *
         */
        int CheckArea(int x, int y, int LookFor);
};

#endif // LEVEL_H
