#include "MinMax.h"
#include <iostream>
#include <fstream>
#include <vector>
#include <stdio.h>
#include <random>

MinMax::MinMax(int deep, Level * currentLevel, bool isX)
{
    IsX = isX;
    playingLevel = currentLevel;
    MaxSteps = deep;
    MapSize = currentLevel->GetSize();
    computingLevel = new Level(MapSize, playingLevel->ValueToWin());
    CopyLevels();


}

MinMax::~MinMax()
{
    delete computingLevel;
}

void MinMax::CopyLevels()
{

    for (int x = 0; x < MapSize; x++)
    {
        for (int y = 0; y < MapSize; y++)
        {
            if (playingLevel->GetValue(x, y) == 1)
                computingLevel->Place(x, y, true);
            else if (playingLevel->GetValue(x, y) == 2)
                computingLevel->Place(x, y, false);
        }
    }

    computingLevel->Recount();
}

void MinMax::Step()
{
    CopyLevels();
    StepData s = NextStep(0, true);
    playingLevel->Place(s.x, s.y, IsX);

}

StepData MinMax::NextStep(int deep, bool isAI)
{
    int si = computingLevel->GetSize();
    if (deep == 0 && computingLevel->IsLevelEmpty())
    {
        StepData s;
        s.point = 0;
        s.x = rand() % si;
        s.y = rand() % si;
        return s;
    }
    int won = computingLevel->IsGameWon();
    if (won == 1)
    {
        if (IsX)
            return StepData(10);
        else
            return StepData(-10);
    }
    else if (won == 2)
    {
        if (!IsX)
            return StepData(10);
        else
            return StepData(-10);
    }
    else if (won == 0)
        return StepData(0);

    if (deep >= MaxSteps)
        return StepData(0);

    StepData neg(0);
    StepData zer(-10);

    for (int xx = 0; xx < si; xx++)
    {
        for (int yy = 0; yy < si; yy++)
        {
            if ((computingLevel->GetValue(xx, yy) == 0 && !computingLevel->IsAreaEmpty(xx, yy)))
            {
                StepData s;
                s.x = xx;
                s.y = yy;
                computingLevel->Place(xx, yy, isAI ? IsX : !IsX);
                s.point = NextStep(deep + 1, !isAI).point;
                computingLevel->RemoveValue(xx, yy);

                if (isAI && s.point == 10)
                    return s;
                else if (!isAI && s.point == -10)
                    return s;
                else if (isAI && s.point == -10)
                    neg = s;
                else if (!isAI && s.point == 10)
                    neg = s;
                else if (s.point == 0)
                    zer = s;
            }
        }
    }

    if (zer.point == 0)
        return zer;
    return neg;
}
