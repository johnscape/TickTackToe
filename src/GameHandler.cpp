#include <string>
#include "GameHandler.h"
#include "Widgets/Label.h"
#include "Widgets/NumberInput.h"
#include "RadioButtonHolder.h"
#include "RadioButton.h"
#include "Button.h"
#include "Area.h"
GameHandler::GameHandler(int x, int y)
{
    handler = new GUIHandler(x, y);
    GameMode = 0;
    LevelSize = 20;
    NeedToWin = 5;
    IsXTurn = true;
    Areas = nullptr;
    IsPlayerX = true;
    LoadMainMenu();
}

GameHandler::~GameHandler()
{
    delete handler;
    delete ai;
}

void GameHandler::PlaceAt(int x, int y)
{
    level->Place(x, y, IsXTurn);
    int isWon = level->IsGameWon();

    if (turnDisplay != nullptr)
    {
        if (!IsXTurn)
            turnDisplay->SetText("X kore");
        else
            turnDisplay->SetText("O kore");
    }

    if (isWon == 0)
    {
        ShowWinWindow("Dontetlen!");
    }
    else if (isWon == 1)
    {
        ShowWinWindow("X jatekos nyert!");
    }
    else if (isWon == 2)
    {
        ShowWinWindow("O jatekos nyert!");
    }

    IsXTurn = !IsXTurn;
    if (IsXTurn == !IsPlayerX && GameMode == 1)
        DoAIStep();
}

void GameHandler::LoadMainMenu()
{
    handler->DeleteAllWidget();
    //DeleteAreas();

    Label * title = new Label(10, 10, 50, 30, "Amoba");
    title->SetBorderThickness(2);
    title->SetBackgroundColour(255, 255, 255);
    title->SetFontColour(255, 255, 255);
    title->SetFrontColour(0, 0, 0);

    Label * sizeOfMapTitle = new Label(10, 50, 150, 30, "Palya merete (X*X)");
    sizeOfMapTitle->SetBorderThickness(0);
    sizeOfMapTitle->SetBackgroundColour(255, 255, 255);
    sizeOfMapTitle->SetFontColour(255, 255, 255);
    sizeOfMapTitle->SetFrontColour(0, 0, 0);

    NumberInput * sizeOfMap = new NumberInput(170, 50, 50, 30, 20, 30, 10);
    sizeOfMap->SetBackgroundColour(255, 255, 255);
    sizeOfMap->SetFrontColour(0, 0, 0);
    sizeOfMap->SetFontColour(255, 255, 255);
    sizeOfMap->SetButtonColour(0, 0, 0);
    sizeOfMap->SetButtonOnClickColour(0, 255, 0);
    sizeOfMap->SetEventVoid([&](NumberInput* n){LevelSize = n->GetCurrentValue();});

    Label * needToWinLabel = new Label(250, 50, 200, 30, "Pontszam a nyereshez:");
    needToWinLabel->SetBorderThickness(0);
    needToWinLabel->SetBackgroundColour(255, 255, 255);
    needToWinLabel->SetFontColour(255, 255, 255);
    needToWinLabel->SetFrontColour(0, 0, 0);

    NumberInput * needToWin = new NumberInput(460, 50, 50, 30, 4, 10, 3);
    needToWin->SetBackgroundColour(255, 255, 255);
    needToWin->SetFrontColour(0, 0, 0);
    needToWin->SetFontColour(255, 255, 255);
    needToWin->SetButtonColour(0, 0, 0);
    needToWin->SetButtonOnClickColour(0, 255, 0);
    needToWin->SetEventVoid([&](NumberInput* n){NeedToWin = n->GetCurrentValue();});


    Label * gameModeSelection = new Label(10, 90, 100, 30, "Jatek mod:");
    gameModeSelection->SetBorderThickness(2);
    gameModeSelection->SetBackgroundColour(255, 255, 255);
    gameModeSelection->SetFontColour(255, 255, 255);
    gameModeSelection->SetFrontColour(0, 0, 0);


    RadioButtonHolder * gameMode = new RadioButtonHolder();
    gameMode->SetEventVoid([&](RadioButtonHolder* r){GameMode = r->CurrentlySelectedValue();});
    RadioButton * player2 = new RadioButton(10, 130, 10, "Ketjatekos", 0);
    player2->SetBackgroundColour(255, 255, 255);
    player2->SetFrontColour(0, 0, 0);
    player2->SetFontColour(255, 255, 255);
    player2->SetSelection(true);

    RadioButton * vsAI = new RadioButton(10, 170, 10, "Gepi jatekos ellen", 1);
    vsAI->SetBackgroundColour(255, 255, 255);
    vsAI->SetFrontColour(0, 0, 0);
    vsAI->SetFontColour(255, 255, 255);

    RadioButton * AIvsAI = new RadioButton(10, 210, 10, "Gep a gep ellen", 2);
    AIvsAI->SetBackgroundColour(255, 255, 255);
    AIvsAI->SetFrontColour(0, 0, 0);
    AIvsAI->SetFontColour(255, 255, 255);

    RadioButton * trainAI = new RadioButton(10, 250, 10, "Gep tanulo mod", 3);
    trainAI->SetBackgroundColour(255, 255, 255);
    trainAI->SetFrontColour(0, 0, 0);
    trainAI->SetFontColour(255, 255, 255);

    gameMode->AddRadioButton(player2);
    gameMode->AddRadioButton(vsAI);
    //gameMode->AddRadioButton(AIvsAI);
    //gameMode->AddRadioButton(trainAI);

    Label * player1Choose = new Label(250, 90, 150, 30, "Elso jatekos:");
    player1Choose->SetBorderThickness(2);
    player1Choose->SetBackgroundColour(255, 255, 255);
    player1Choose->SetFontColour(255, 255, 255);
    player1Choose->SetFrontColour(0, 0, 0);


    RadioButtonHolder * player1Selection = new RadioButtonHolder();
    player1Selection->SetEventVoid([&](RadioButtonHolder* r){IsXTurn = r->CurrentlySelectedValue() == 0 ? true : false;});

    RadioButton * rx = new RadioButton(250, 140, 10, "X", 0);
    rx->SetBackgroundColour(255, 255, 255);
    rx->SetFrontColour(0, 0, 0);
    rx->SetFontColour(255, 255, 255);
    rx->SetSelection(true);

    RadioButton * ry = new RadioButton(250, 180, 10, "0", 1);
    ry->SetBackgroundColour(255, 255, 255);
    ry->SetFrontColour(0, 0, 0);
    ry->SetFontColour(255, 255, 255);

    player1Selection->AddRadioButton(rx);
    player1Selection->AddRadioButton(ry);

    Button * startGame = new Button(250, 250, 150, 40, "Jatek kezdese", [&](){LoadGame();});

    handler->AddWidget(title);
    handler->AddWidget(sizeOfMapTitle);
    handler->AddWidget(needToWinLabel);
    handler->AddWidget(needToWin);
    handler->AddWidget(sizeOfMap);
    handler->AddWidget(gameModeSelection);
    handler->AddWidget(gameMode);
    handler->AddWidget(player1Choose);
    handler->AddWidget(player1Selection);
    handler->AddWidget(startGame);
    if (!handler->GetIsRunning())
        handler->Start(true, 40);
}

void GameHandler::LoadGame()
{
    level = new Level(LevelSize, NeedToWin);
    handler->DeleteAllWidget();
    if (GameMode == 1)
    {
        ai = new MinMax(4, level, !IsXTurn);
    }
    //DeleteAreas();
    Areas = new Area**[LevelSize];
    for (int x = 0; x < LevelSize; x++)
        Areas[x] = new Area*[LevelSize];

    IsPlayerX = IsXTurn;
    Label * gameDisplay = new Label(10, 10, 100, 30, "Jatek");
    gameDisplay->SetBorderThickness(2);
    gameDisplay->SetBackgroundColour(255, 255, 255);
    gameDisplay->SetFontColour(255, 255, 255);
    gameDisplay->SetFrontColour(0, 0, 0);
    for (int xp = 0; xp < LevelSize; xp++)
    {
        for (int yp = 0; yp < LevelSize; yp++)
        {
            Area * a = new Area(xp, yp);
            a->SetBackgroundColour(255, 255, 255);
            a->SetFrontColour(0, 0, 0);
            a->SetBorderThickness(1);
            a->SetEventVoid([&](Area* a){a->SetValue(IsXTurn ? 1 : 2); PlaceAt(a->GetXPostion(), a->GetYPosition());});
            a->SetMarkerColour(255, 0, 0);
            Areas[xp][yp] = a;
            handler->AddWidget(a);
        }
    }

    Label * turndisplay = new Label(200, 10, 100, 30, "");
    turndisplay->SetBorderThickness(2);
    turndisplay->SetBackgroundColour(255, 255, 255);
    turndisplay->SetFontColour(255, 255, 255);
    turndisplay->SetFrontColour(0, 0, 0);
    if (IsXTurn)
        turndisplay->SetText("X kore");
    else
        turndisplay->SetText("O kore");

    turnDisplay = turndisplay;




    handler->AddWidget(gameDisplay);
    handler->AddWidget(turndisplay);
}

void GameHandler::DeleteAreas()
{
    if (Areas != nullptr)
    {
        Areas[0][0]->SetBorderThickness(0);
        for (int x = 0; x < LevelSize; x++)
        {
            for (int y = 0; y < LevelSize; y++)
            {
                delete Areas[x][y];
            }
            delete [] Areas[x];
        }
        delete [] Areas;
    }

    Areas = nullptr;
}

void GameHandler::DisableAreas()
{
    for (int x = 0; x < LevelSize; x++)
    {
        for (int y = 0; y < LevelSize; y++)
        {
            Areas[x][y]->SetEnable(false);
        }
    }
}

void GameHandler::EnableAreas()
{
    for (int x = 0; x < LevelSize; x++)
    {
        for (int y = 0; y < LevelSize; y++)
        {
            Areas[x][y]->SetEnable(true);
        }
    }
}

void GameHandler::DoAIStep()
{
    Label * aiThink = new Label(310, 10, 200, 30, "A gep gondolkodik...");
    aiThink->SetBorderThickness(2);
    aiThink->SetBackgroundColour(255, 255, 255);
    aiThink->SetFontColour(255, 255, 255);
    aiThink->SetFrontColour(0, 0, 0);
    handler->AddWidget(aiThink);

    DisableAreas();
    ai->Step();
    Areas[level->GetLastX()][level->GetLastY()]->SetValue(IsPlayerX ? 2 : 1);
    PlaceAt(level->GetLastX(), level->GetLastY());
    EnableAreas();
    handler->RemoveWidget(aiThink);

}

void GameHandler::ShowWinWindow(std::string text)
{
    if (ai != nullptr)
    {
        delete ai;
        ai = nullptr;
    }

    DisableAreas();
    Label * window = new Label(150, 150, 300, 400, "");
    window->SetBorderThickness(2);
    window->SetBackgroundColour(255, 255, 255);
    window->SetFontColour(255, 255, 255);
    window->SetFrontColour(0, 0, 0);

    int textLen = genv::gout.twidth(text);
    Label * textLabel = new Label(300 - textLen/2 - 5, 160, textLen + 10, 30, text);
    textLabel->SetBorderThickness(2);
    textLabel->SetBackgroundColour(255, 255, 255);
    textLabel->SetFontColour(255, 255, 255);
    textLabel->SetFrontColour(0, 0, 0);

    Label * restartLabel = new Label(160, 200, genv::gout.twidth("Uj jatekot szeretnel?") + 10, 30, "Uj jatekot szeretnel?");
    restartLabel->SetBorderThickness(2);
    restartLabel->SetBackgroundColour(255, 255, 255);
    restartLabel->SetFontColour(255, 255, 255);
    restartLabel->SetFrontColour(0, 0, 0);

    Button * restartButton = new Button(160, 250, 150, 30, "Ujrakezdes", [&](){LoadGame();});

    Label * backToMenuLabel = new Label(160, 300, genv::gout.twidth("Vissza a fomenube?") + 10, 30, "Vissza a fomenube?");
    backToMenuLabel->SetBorderThickness(2);
    backToMenuLabel->SetBackgroundColour(255, 255, 255);
    backToMenuLabel->SetFontColour(255, 255, 255);
    backToMenuLabel->SetFrontColour(0, 0, 0);

    Button * backToMenuButton = new Button(160, 350, 150, 30, "Vissza", [&](){LoadMainMenu();});

    //Label * exitSign = new Label(160, 400, genv::gout.twidth("Szeretnel kilepni?") + 10, 30, "Szeretnel kilepni?");
    Label * exitSign = new Label(160, 400, genv::gout.twidth("Kilepni az ESC gombbal tudsz") + 10, 30, "Kilepni az ESC gombbal tudsz");
    exitSign->SetBorderThickness(2);
    exitSign->SetBackgroundColour(255, 255, 255);
    exitSign->SetFontColour(255, 255, 255);
    exitSign->SetFrontColour(0, 0, 0);

    //Button * exitButton = new Button(160, 450, 150, 30, "Kilepes", [&](){handler->Exit();});


    handler->AddWidget(window);
    handler->AddWidget(textLabel);
    handler->AddWidget(restartLabel);
    handler->AddWidget(restartButton);
    handler->AddWidget(backToMenuLabel);
    handler->AddWidget(backToMenuButton);
    handler->AddWidget(exitSign);
    //handler->AddWidget(exitButton);
}
