#ifndef MINMAX_H
#define MINMAX_H

#include "Level.h"
#include <fstream>

struct StepData
{
    StepData(){};
    StepData(int a) : point(a){x = 0; y = 0;}
    int x;
    int y;
    int point;
};

class MinMax
{
    public:
        /** \brief Létrehoz egy új MiniMax algoritmus alapján működő számítógépes játékost
         *
         * \param deep int Ezzel lehet megadni, hogy maximum hány lépést számoljon előre
         * \param currentLevel Level* Ez a aktuális pályára mutató mutató
         * \param isX bool Ez adja meg, hogy a gépi játékos az X-el játszik-e
         *
         */
        MinMax(int deep, Level * currentLevel, bool isX);
        virtual ~MinMax();
        /** \brief Ez a funckció számolja ki a következõ lépését a MiniMax algoritmusnak
         *
         * \return void
         *
         */
        void Step();

    protected:

    private:
        bool IsX;/**< Ez a változó tárolja, hogy a gép 'X' szerint játszik-e */
        Level * playingLevel;/**< Ez a mutató mutat a valódi pályára, amin a játék zajlik */
        Level * computingLevel;/**< Ezen a pályán számolja a lépéseit, így nem kell az éles pályán megtenni a próbalépéseket */
        int MaxSteps;/**< Ez a változó adja meg, hogy maximum hány lépést számolhat elõre. Minnél nagyobb annál pontosabban lép, de a számolás hosszúsága exponenciálisan nõ */
        int MapSize;/**< Ez a változó tárolja a pálya méretét, így nem kell újra és újra lekérni */

        /** \brief Ez a függvény számolja a következõ lépést, úgy hogy rekurzívan meghívja önmagát
         *
         * \param deep int Az aktuális érték, hogy hány lépést számolt elõre
         * \param isAI bool Megadja, hogy az aktuális lépés neki tesz jót, vagy a játékosnal
         * \return StepData Megadja a lépés helyét, és a maximálisan szerzett pontot
         *
         */
        StepData NextStep(int deep, bool isAI);
        void CopyLevels();
        std::ofstream Writer;
};

#endif // MINMAX_H
