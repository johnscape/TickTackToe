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

        StepData NextStep(int deep, bool isAI);
        void CopyLevels();
        std::ofstream Writer;
};

#endif // MINMAX_H
