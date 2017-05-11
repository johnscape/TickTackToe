#ifndef MINMAX_H
#define MINMAX_H

#include "Level.h"
#include <fstream>


class MinMax
{
    public:
        MinMax(int deep, Level * currentLevel, bool isX);
        virtual ~MinMax();
        void Step();

    protected:

    private:
        bool IsX;
        Level * playingLevel;
        Level * computingLevel;
        int MaxSteps;
        int MapSize;

        int NextStep(int x, int y, int deep);
        void CopyLevels();
        std::ofstream Writer;
};

#endif // MINMAX_H
