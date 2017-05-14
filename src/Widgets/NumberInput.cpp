#include <sstream>
#include "Widgets/NumberInput.h"
#include "graphics.hpp"
#include <iostream>
#include <fstream>

using namespace genv;

NumberInput::NumberInput(int x, int y, int xSize, int ySize, int startingNumber, int maxValue, int minValue) : Label(x, y, xSize, ySize, "")
{
    CurrentNumber = startingNumber;
    MaximumValue = maxValue;
    MinimumValue = minValue;
    StepValue = 1;
    BigStepValue = 10;

    buttonDownClicking = false;
    buttonUpClicking = false;

    //selectedColour = new Colour(255, 255, 255);
    buttonClickColour = new Colour(0, 255, 0);
    buttonColour = new Colour(0, 255, 255);

    OnEvent = nullptr;
}

NumberInput::~NumberInput()
{
    delete buttonClickColour;
    delete buttonColour;
    //delete selectedColour;
}

void NumberInput::SetValue(int val)
{
    CurrentNumber = val;
    CheckValue();
}

void NumberInput::AdjustValue(int val)
{
    CurrentNumber+= val;
    CheckValue();
}

void NumberInput::Step(bool up, bool big)
{
    if (up)
    {
        if (big)
            CurrentNumber += BigStepValue;
        else
            CurrentNumber += StepValue;
    }
    else
    {
        if (big)
            CurrentNumber -= BigStepValue;
        else
            CurrentNumber -= StepValue;
    }


    CheckValue();
}

void NumberInput::SetMaximumValue(int maximum)
{
    MaximumValue = maximum;
}

void NumberInput::SetMinimumValue(int minimum)
{
    MinimumValue = minimum;
}

void NumberInput::SetStepValue(int step)
{
    StepValue = step;
}

void NumberInput::CheckValue()
{
    if (CurrentNumber > MaximumValue)
        CurrentNumber = MaximumValue;
    else if (CurrentNumber < MinimumValue)
        CurrentNumber = MinimumValue;
}

void NumberInput::Draw()
{
    bgColor->SetThisColour();
    gout << move_to(X, Y) << box(XSize, YSize);

    /*if (!Selected)
        frontColor->SetThisColour();
    else
        selectedColour->SetThisColour();
    */
    frontColor->SetThisColour();
    gout << move_to(X + borderThickness, Y + borderThickness) << box(XSize -  2 * borderThickness, YSize - 2 * borderThickness);
    std::stringstream ss;
    ss << CurrentNumber;
    fontColor->SetThisColour();
    gout << move_to(X + borderThickness + 5, Y + YSize / 2 + gout.cdescent()) << text(ss.str());



    if (buttonUpClicking)
        buttonClickColour->SetThisColour();
    else
        buttonColour->SetThisColour();

    gout << move_to(X + XSize, Y) << box(20, YSize / 2);


    if (buttonDownClicking)
        buttonClickColour->SetThisColour();
    else
        buttonColour->SetThisColour();

    gout << move_to(X + XSize, Y + YSize/2) << box(20, YSize / 2);

    fontColor->SetThisColour();
    gout << move_to(X + XSize + 10 - gout.twidth("+") / 2, Y + YSize / 2 - gout.cdescent()) << text("+");
    gout << move_to(X + XSize + 10 - gout.twidth("-") / 2, Y + YSize / 2 + 20 - gout.cdescent()) << text("-");

    bgColor->SetThisColour();
    gout << move_to(X + XSize, Y + YSize / 2) << line(20, 0);
}

void NumberInput::Handle(event ev)
{
    if (IsEnabled)
    {
        if (ev.type == ev_mouse && ev.button == btn_left && ev.pos_x >= X + XSize && ev.pos_x <= X + XSize + 20)
        {
            if (ev.pos_y >= Y && ev.pos_y < Y + YSize / 2 && !buttonUpClicking)
            {
                buttonUpClicking = true;
                Step(true, false);
            }
            else if (ev.pos_y > Y + YSize / 2 && ev.pos_y <= Y + YSize && !buttonDownClicking)
            {
                buttonDownClicking = true;
                Step(false, false);
            }
        }
        else if (ev.type == ev_mouse && ev.button == -btn_left)
        {
            if (buttonUpClicking)
                buttonUpClicking = false;
            else if (buttonDownClicking)
                buttonDownClicking = false;
        }
        else if (ev.type == ev_key)
        {
            if (ev.keycode == key_up && !buttonUpClicking)
            {
                buttonUpClicking = true;
                Step(true, false);
            }
            else if (ev.keycode == key_pgup && !buttonUpClicking)
            {
                buttonUpClicking = true;
                Step(true, true);
            }
            else if (ev.keycode == key_down&& !buttonDownClicking)
            {
                buttonDownClicking = true;
                Step(false, false);
            }
            else if (ev.keycode == key_pgdn && !buttonDownClicking)
            {
                buttonDownClicking = true;
                Step(false, true);
            }
            else if ((ev.keycode == -key_up || ev.keycode == -key_pgup) && buttonUpClicking)
                buttonUpClicking = false;
            else if ((ev.keycode == -key_down || ev.keycode == -key_pgdn) && buttonDownClicking)
                buttonDownClicking = false;
            else if (ev.keycode == key_f10)
            {
                std::ofstream log;
                log.open("log.txt", std::ios_base::app);
                log << "Numeric input" << std::endl;
                log << CurrentNumber << std::endl;
                log << "-----------------------------------" << std::endl;
                log.close();
            }
        }

        if (OnEvent != nullptr)
            OnEvent(this);
    }
}

bool NumberInput::IsInLine(int x, int y)
{
    if (x >= X + borderThickness && x <= X + XSize + 20 && y >= Y + borderThickness && y <= Y + YSize - borderThickness)
    {
        Selected = true;
        return true;
    }
    else
        Selected = false;

    return false;
}

void NumberInput::SetButtonColour(int r, int g, int b)
{
    buttonColour->SetColour(r, g, b);
}

void NumberInput::SetButtonOnClickColour(int r, int g, int b)
{
    buttonClickColour->SetColour(r, g, b);
}

int NumberInput::GetCurrentValue()
{
    return CurrentNumber;
}

void NumberInput::SetEventVoid(std::function<void(NumberInput*)> event)
{
    OnEvent = event;
}

