#include "Level.h"
#include <fstream>

Level::Level(int levelSize, int win)
{
    NeedToWin = win;
    Size = levelSize;

    LevelData = new int*[levelSize];
    for (int i = 0; i < levelSize; i++)
    {
        LevelData[i] = new int[levelSize];
        for (int k = 0; k < levelSize; k++)
            LevelData[i][k] = 0;
    }
}

Level::~Level()
{
    for (int i = 0; i < Size; i++)
        delete [] LevelData[i];

    delete [] LevelData;
}

int Level::ValueToWin()
{
    return NeedToWin;
}

int Level::GetValue(int x, int y)
{
    if (x >= 0 && x < Size && y >= 0 && y < Size)
        return LevelData[x][y];
    else
        return -1;
}

void Level::RemoveValue(int x, int y)
{
    if (x >= 0 && x < Size && y >= 0 && y < Size)
        LevelData[x][y] = 0;
}

void Level::Place(int x, int y, bool xVal)
{
    if (x >= 0 && x < Size && y >= 0 && y < Size)
    {
        if (xVal)
            LevelData[x][y] = 1;
        else
            LevelData[x][y] = 2;
    }
}

int Level::IsGameWon()
{
    int isWon = 0;
    for (int x = 0; x < Size; x++)
    {
        for (int y = 0; y < Size; y++)
        {
            if (LevelData[x][y] != 0)
            {
                int isWon = CheckArea(x, y, LevelData[x][y]);
                if (isWon > 0)
                    return isWon;
            }
        }
    }
    return isWon;
}

int Level::CheckArea(int x, int y, int LookFor)
{
    int score = 0;
    if (x + NeedToWin < Size)
    {
        for (int i = x; i <= x + NeedToWin; i++)
        {
            if (LevelData[i][y] == LookFor)
                score++;
        }
        if (score >= NeedToWin)
            return LookFor;
    }
    score = 0;
    if (y + NeedToWin < Size)
    {
        for (int i = y; i <= y + NeedToWin; i++)
        {
            if (LevelData[x][i] == LookFor)
                score++;
        }
        if (score >= NeedToWin)
            return LookFor;
    }
    score = 0;
    if (x + NeedToWin < Size && y + NeedToWin < Size)
    {
        for (int i = 0; i < NeedToWin; i++)
        {
            if (LevelData[x + i][y + i] == LookFor)
                score++;
        }
        if (score >= NeedToWin)
            return LookFor;
    }

    return 0;
}

int Level::GetSize()
{
    return Size;
}

void Level::WriteCurrentPosition(std::ofstream& writer)
{
    for (int x = 0; x < Size; x++)
    {
        for (int y = 0; y < Size; y++)
        {
            if (LevelData[x][y] == 0)
                writer << ". ";
            else if (LevelData[x][y] == 1)
                writer << "X ";
            else if (LevelData[x][y] == 2)
                writer << "O ";
        }
        writer << std::endl;
    }


    writer << "---------------------------------" << std::endl;
    if (IsGameWon() == 1)
    {
        writer << "X won!" << std::endl;
        writer << "---------------------------------" << std::endl;
    }
    if (IsGameWon() == 2)
    {
        writer << "O won!" << std::endl;
        writer << "---------------------------------" << std::endl;
    }
}
