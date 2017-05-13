#include "RadioButtonHolder.h"

RadioButtonHolder::RadioButtonHolder() : Widget(0, 0, 0, 0)
{
    CurrentlySelected = -1;
    ButtonCount = 0;
}

RadioButtonHolder::~RadioButtonHolder()
{
    for (RadioButton* r : radioButtons)
        delete r;

    radioButtons.clear();
}

void RadioButtonHolder::Draw()
{
    for (RadioButton* r : radioButtons)
        r->Draw();
}

void RadioButtonHolder::Handle(genv::event ev)
{
    for (RadioButton* r : radioButtons)
    {
        if (r->IsInLine(ev.pos_x, ev.pos_y))
            r->Handle(ev);
        else
            r->SetSelection(false);
    }
}

bool RadioButtonHolder::IsInLine(int x, int y)
{
    for (RadioButton* r : radioButtons)
    {
        if (r->IsInLine(x, y))
            return true;
    }

    return false;
}

void RadioButtonHolder::AddRadioButton(RadioButton* button)
{
    radioButtons.push_back(button);
    ButtonCount++;
}

void RadioButtonHolder::RemoveRadioButton(RadioButton* button)
{
    for (int i = 0; i < ButtonCount; i++)
    {
        if (radioButtons[i] == button)
        {
            radioButtons.erase(radioButtons.begin() + i);
            ButtonCount--;
            return;
        }
    }
}

void RadioButtonHolder::RemoveRadioButton(int place)
{
    if (place >= 0 && place < ButtonCount)
    {
        radioButtons.erase(radioButtons.begin() + place);
        ButtonCount--;
    }

}

int RadioButtonHolder::GetCurrentlySelected()
{
    return CurrentlySelected;
}

void RadioButtonHolder::CheckNull()
{
    if (ButtonCount == 0)
        CurrentlySelected = -1;
}
