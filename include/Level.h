#ifndef LEVEL_H
#define LEVEL_H

#include <fstream>

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

        void WriteCurrentPosition(std::ofstream& writer);

    protected:

    private:
        int** LevelData;
        int Size;
        int NeedToWin;

        int CheckArea(int x, int y, int LookFor);
};

#endif // LEVEL_H
