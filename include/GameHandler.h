#ifndef GAMEHANDLER_H
#define GAMEHANDLER_H
#include "Widgets/GUIHandler.h"
#include "Level.h"
#include "RadioButtonHolder.h"
#include "NumberInput.h"


class GameHandler
{
    public:
        GameHandler(int x, int y);
        virtual ~GameHandler();

    protected:

    private:
        GUIHandler * handler;
        Level * level;
        bool player1X;
        int GameMode;
        int NeedToWin;
        int LevelSize;

        void LoadMainMenu();
        void LoadGame();
};

#endif // GAMEHANDLER_H
