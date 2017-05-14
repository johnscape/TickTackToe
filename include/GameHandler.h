#ifndef GAMEHANDLER_H
#define GAMEHANDLER_H
#include "Widgets/GUIHandler.h"
#include "Level.h"
#include "RadioButtonHolder.h"
#include "NumberInput.h"
#include "Area.h"
#include "MinMax.h"

class GameHandler
{
    public:
        GameHandler(int x, int y);
        virtual ~GameHandler();

    protected:

    private:
        bool IsXTurn;
        GUIHandler * handler;
        Level * level;
        bool player1X;
        int GameMode;
        int NeedToWin;
        int LevelSize;

        Area *** Areas;
        Label * turnDisplay;

        MinMax * ai;

        void LoadMainMenu();
        void LoadGame();
        void PlaceAt(int x, int y);
        void DeleteAreas();
        void ShowWinWindow(std::string text);
};

#endif // GAMEHANDLER_H
