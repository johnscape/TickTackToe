#include <string>
#include "GameHandler.h"
#include "Widgets/Label.h"
#include "Widgets/NumberInput.h"
#include "RadioButtonHolder.h"
#include "RadioButton.h"
#include "Button.h"

GameHandler::GameHandler(int x, int y)
{
    gameState = 0;
    handler = new GUIHandler(x, y);
    LoadMainMenu();
}

GameHandler::~GameHandler()
{
    delete handler;
}

void GameHandler::LoadMainMenu()
{
    handler->DeleteAllWidget();
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

    Label * gameModeSelection = new Label(10, 90, 100, 30, "Jatek mod:");
    gameModeSelection->SetBorderThickness(2);
    gameModeSelection->SetBackgroundColour(255, 255, 255);
    gameModeSelection->SetFontColour(255, 255, 255);
    gameModeSelection->SetFrontColour(0, 0, 0);


    RadioButtonHolder * gameMode = new RadioButtonHolder();
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
    gameMode->AddRadioButton(AIvsAI);
    gameMode->AddRadioButton(trainAI);

    Label * player1Choose = new Label(250, 90, 150, 30, "Elso jatekos:");
    player1Choose->SetBorderThickness(2);
    player1Choose->SetBackgroundColour(255, 255, 255);
    player1Choose->SetFontColour(255, 255, 255);
    player1Choose->SetFrontColour(0, 0, 0);


    RadioButtonHolder * player1Selection = new RadioButtonHolder();

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

    Button * startGame = new Button(250, 250, 150, 40, "Jatek kezdese", LoadGame);

    levelSize = sizeOfMap;
    gameModeSelector = gameMode;
    firstPlayerSelector = player1Selection;

    handler->AddWidget(title);
    handler->AddWidget(sizeOfMapTitle);
    handler->AddWidget(sizeOfMap);
    handler->AddWidget(gameModeSelection);
    handler->AddWidget(gameMode);
    handler->AddWidget(player1Choose);
    handler->AddWidget(player1Selection);
    handler->AddWidget(startGame);
    handler->Start(false, 40);
}

void GameHandler::LoadGame()
{
    level = new Level(levelSize->GetCurrentValue(), 5);
    handler->DeleteAllWidget();

    Label * gameDisplay = new Label(10, 10, 100, 30, "Game");
    gameDisplay->SetBorderThickness(2);
    gameDisplay->SetBackgroundColour(255, 255, 255);
    gameDisplay->SetFontColour(255, 255, 255);
    gameDisplay->SetFrontColour(0, 0, 0);


    handler->AddWidget(gameDisplay);

}
