#include <string>
#include "GameHandler.h"
#include "Widgets/Label.h"
#include "Widgets/NumberInput.h"
#include "RadioButtonHolder.h"
#include "RadioButton.h"

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

    handler->AddWidget(title);
    handler->AddWidget(sizeOfMapTitle);
    handler->AddWidget(sizeOfMap);
    handler->Start(false, 40);
}
