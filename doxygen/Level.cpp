#include "Level.h"
#include <iostream>

Level::Level(int levelSize, int win)
{
    NeedToWin = win;
    Size = levelSize;

    LastX = 0;
    LastY = 0;

    LevelData = new int*[levelSize];
    for (int i = 0; i < levelSize; i++)
    {
        LevelData[i] = new int[levelSize];
        for (int k = 0; k < levelSize; k++)
            LevelData[i][k] = 0;
    }

    XCount = 0;
    OCount = 0;
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
        {
            LevelData[x][y] = 1;
            XCount++;
        }
        else
        {
            LevelData[x][y] = 2;
            OCount++;
        }

        LastX = x;
        LastY = y;
    }
}

int Level::IsGameWon()
{
    int isWon = -1;
    int spaces = Size * Size;
    for (int x = 0; x < Size; x++)
    {
        for (int y = 0; y < Size; y++)
        {
            if (LevelData[x][y] != 0)
            {
                spaces--;
                int isWon = CheckArea(x, y, LevelData[x][y]);
                if (isWon > 0)
                    return isWon;
            }
        }
    }

    if (spaces <= 0 && isWon == -1)
        return 0;
    else
        return isWon;
}

int Level::CheckArea(int x, int y, int LookFor)
{
    int score = 0;
    if (x + NeedToWin - 1 < Size)
    {
        for (int i = x; i <= x + NeedToWin - 1; i++)
        {
            if (LevelData[i][y] == LookFor)
                score++;
        }
        if (score >= NeedToWin)
            return LookFor;
    }
    score = 0;
    if (y + NeedToWin - 1 < Size)
    {
        for (int i = y; i <= y + NeedToWin - 1; i++)
        {
            if (LevelData[x][i] == LookFor)
                score++;
        }
        if (score >= NeedToWin)
            return LookFor;
    }
    score = 0;
    if (x + NeedToWin - 1 < Size && y + NeedToWin - 1 < Size)
    {
        for (int i = 0; i < NeedToWin; i++)
        {
            if (LevelData[x + i][y + i] == LookFor)
                score++;
        }
        if (score >= NeedToWin)
            return LookFor;
    }
    score = 0;
    if (x - NeedToWin + 1 >= 0 && y + NeedToWin - 1 < Size)
    {
        for (int i = 0; i < NeedToWin; i++)
        {
            if (LevelData[x - i][y + i] == LookFor)
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

void Level::WriteCurrentPosition(std::ostream& writer)
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

bool Level::IsAreaEmpty(int x, int y)
{
    if (x >= 0 && x < Size && y >= 0 && y < Size)
    {
        for (int xx = x - NeedToWin / 2; xx < x + NeedToWin / 2; xx++)
        {
            for (int yy = y - NeedToWin / 2; yy < y + NeedToWin / 2; yy++)
            {
                if (yy >= 0 && yy < Size && xx >= 0 && xx < Size)
                {
                    if (LevelData[xx][yy] != 0)
                        return false;
                }
            }
        }
    }

    return true;
}

void Level::Recount()
{
    for (int x = 0; x < Size; x++)
    {
        for (int y = 0; y < Size; y++)
        {
            if (LevelData[x][y] == 1)
                XCount++;
            else if (LevelData[x][y] == 2)
                OCount++;
        }
    }
}

bool Level::IsLevelEmpty()
{
    if (XCount == 0 && OCount == 0)
        return true;
    return false;
}

void Level::Reset()
{
    for (int x = 0; x < Size; x++)
    {
        for (int y = 0; y < Size; y++)
        {
            LevelData[x][y] = 0;
        }
    }
}

int Level::GetLastX()
{
    return LastX;
}

int Level::GetLastY()
{
    return LastY;
}
