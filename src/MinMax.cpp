#include "MinMax.h"
#include <iostream>
#include <fstream>

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
}

void MinMax::Step()
{
    CopyLevels();
    Writer.open("steps.txt");
    int emptyP = 0;
    for (int x = 0; x < MapSize; x++)
    {
        for (int y = 0; y < MapSize; y++)
        {
            if (playingLevel->GetValue(x, y) == 0)
            {
                emptyP++;
            }
        }
    }

    int * points = new int[emptyP];
    for (int i = 0; i < emptyP; i++)
        points[i] = 0;

    int counter = 0;


    for (int x = 0; x < computingLevel->GetSize(); x++)
    {
        for (int y = 0; y < MapSize; y++)
        {
            if (playingLevel->GetValue(x, y) == 0)
            {
                points[counter] = NextStep(x, y, 0);
                counter++;
            }
        }
    }

    int maxi = 0;
    int place = 0;
    for (int i = 0; i < emptyP; i++)
    {
        if (points[i] > maxi)
        {
            maxi = points[i];
            place = i;
        }
    }

    int k = maxi;


    for (int x = 0; x < MapSize; x++)
    {
        for (int y = 0; y < MapSize; y++)
        {
            if (playingLevel->GetValue(x, y) == 0)
            {
                if (place != 0)
                {
                    place--;
                }
                else
                {
                    playingLevel->Place(x, y, IsX);
                    place--;
                }
            }
        }
    }

    Writer.close();
}

int MinMax::NextStep(int x, int y, int deep)
{
    computingLevel->Place(x, y, deep % 2 == 0 ? IsX : !IsX);
    computingLevel->WriteCurrentPosition(Writer);
    int wanted = IsX ? 1 : 2;
    int current = computingLevel->IsGameWon();
    if (current == wanted)
    {
        computingLevel->RemoveValue(x, y);
        return 10;
    }
    else if (current != 0 && current != wanted)
    {
        computingLevel->RemoveValue(x, y);
        return -10;
    }
    else if (deep >= MaxSteps)
    {
        computingLevel->RemoveValue(x, y);
        return 0;
    }
    else if (current == 0 && deep < MaxSteps)
    {
        int points = 0;
        for (int xx = 0; xx < MapSize; xx++)
        {
            for (int yy = 0; yy < MapSize; yy++)
            {
                if (computingLevel->GetValue(xx, yy) == 0)
                {
                    points += NextStep(xx, yy, deep + 1);
                }
            }
        }

        return points;
    }
}
