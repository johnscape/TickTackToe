#ifndef GAMEHANDLER_H
#define GAMEHANDLER_H
#include "Widgets/GUIHandler.h"
#include "Level.h"


class GameHandler
{
    public:
        GameHandler(int x, int y);
        virtual ~GameHandler();

    protected:

    private:
        GUIHandler * handler;
        Level * level;
        int gameState;
        void LoadMainMenu();
};

#endif // GAMEHANDLER_H
