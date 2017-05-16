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
        /** \brief L�trehozza a j�t�kkezel�t
         *
         * \param x int A k�perny� sz�less�ge
         * \param y int A k�perny� magass�ga
         *
         */
        GameHandler(int x, int y);
        virtual ~GameHandler();

    protected:

    private:
        bool IsXTurn;/**< Megadja, hogy X k�vetkezik-e */
        bool IsPlayerX;/**< Megadja, hogy az els� j�t�kos x-el j�tszik-e */
        GUIHandler * handler;/**< A grafikai widget kezel� */
        Level * level;/**< A p�lya */
        int GameMode;/**< A j�t�km�d */
        int NeedToWin;/**< Pontsz�m a gy�zelemhez */
        int LevelSize;/**< P�lya m�rete */

        Area *** Areas;/**< A j�t�k k�zben l�that� n�gyzeteket itt t�rolom */
        Label * turnDisplay;/**< A jelenelgi l�p�s kijelz�je */

        MinMax * ai;/**< A sz�m�t�g�pes j�t�kos */

        /** \brief Bet�lti a f�men�t
         *
         * \return void
         *
         */
        void LoadMainMenu();

        /** \brief Bet�lti a j�t�kot
         *
         * \return void
         *
         */
        void LoadGame();

        /** \brief Az adott k�r alapj�n a megfelel� koordin�t�kra elhelyez egy �rt�ket
         *
         * \param x int Az x koordin�ta
         * \param y int Az y koordin�ta
         * \return void
         *
         */
        void PlaceAt(int x, int y);

        /** \brief T�lri az �sszes "kis n�gyzetet"
         *
         * \return void
         *
         */
        void DeleteAreas();

        /** \brief Deaktiv�lja az �sszes "kis n�gyzetet", nem lehet r�juk kattintani
         *
         * \return void
         *
         */
        void DisableAreas();

        /** \brief Aktiv�lja az �sszes "kis n�gyzetet", lehet r�juk kattintani
         *
         * \return void
         *
         */
        void EnableAreas();

        /** \brief A sz�m�t�g�pes j�t�kos l�p egyet
         *
         * \return void
         *
         */
        void DoAIStep();

        /** \brief A gy�zelmi ablakot jelen�ti meg
         *
         * \param text std::string A sz�veg arr�l, hogy ki nyert
         * \return void
         *
         */
        void ShowWinWindow(std::string text);
};

#endif // GAMEHANDLER_H
