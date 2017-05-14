#ifndef LEVEL_H
#define LEVEL_H

#include <iostream>

class Level
{
    public:
        Level(int levelSize, int win);
        virtual ~Level();

        int GetValue(int x, int y);
        int ValueToWin();
        int GetSize();
        void Place(int x, int y, bool xVal);
        int IsGameWon();
        void RemoveValue(int x, int y);
        bool IsAreaEmpty(int x, int y);
        bool IsLevelEmpty();
        void Recount();
        void Reset();
        int GetLastX();
        int GetLastY();

        void WriteCurrentPosition(std::ostream& writer);

    protected:

    private:
        int** LevelData;
        int Size;
        int NeedToWin;

        int XCount;
        int OCount;

        int LastX;
        int LastY;

        int CheckArea(int x, int y, int LookFor);
};

#endif // LEVEL_H
