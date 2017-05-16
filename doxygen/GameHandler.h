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
        /** \brief Létrehozza a játékkezelõt
         *
         * \param x int A képernyõ szélessége
         * \param y int A képernyõ magassága
         *
         */
        GameHandler(int x, int y);
        virtual ~GameHandler();

    protected:

    private:
        bool IsXTurn;/**< Megadja, hogy X következik-e */
        bool IsPlayerX;/**< Megadja, hogy az elsõ játékos x-el játszik-e */
        GUIHandler * handler;/**< A grafikai widget kezelõ */
        Level * level;/**< A pálya */
        int GameMode;/**< A játékmód */
        int NeedToWin;/**< Pontszám a gyõzelemhez */
        int LevelSize;/**< Pálya mérete */

        Area *** Areas;/**< A játék közben látható négyzeteket itt tárolom */
        Label * turnDisplay;/**< A jelenelgi lépés kijelzõje */

        MinMax * ai;/**< A számítógépes játékos */

        /** \brief Betölti a fõmenüt
         *
         * \return void
         *
         */
        void LoadMainMenu();

        /** \brief Betölti a játékot
         *
         * \return void
         *
         */
        void LoadGame();

        /** \brief Az adott kör alapján a megfelelõ koordinátákra elhelyez egy értéket
         *
         * \param x int Az x koordináta
         * \param y int Az y koordináta
         * \return void
         *
         */
        void PlaceAt(int x, int y);

        /** \brief Tölri az összes "kis négyzetet"
         *
         * \return void
         *
         */
        void DeleteAreas();

        /** \brief Deaktiválja az összes "kis négyzetet", nem lehet rájuk kattintani
         *
         * \return void
         *
         */
        void DisableAreas();

        /** \brief Aktiválja az összes "kis négyzetet", lehet rájuk kattintani
         *
         * \return void
         *
         */
        void EnableAreas();

        /** \brief A számítógépes játékos lép egyet
         *
         * \return void
         *
         */
        void DoAIStep();

        /** \brief A gyõzelmi ablakot jeleníti meg
         *
         * \param text std::string A szöveg arról, hogy ki nyert
         * \return void
         *
         */
        void ShowWinWindow(std::string text);
};

#endif // GAMEHANDLER_H
