#include <vector>
#include <string>
#include "SelectionBox.h"
#include "Colour.h"
#include "graphics.hpp"
#include <iostream>
#include <fstream>

using namespace genv;

SelectionBox::SelectionBox(int x, int y, int xSize, int ySize, std::vector<std::string> values) : Label(x, y, xSize, ySize, "")
{
    if (values.size() > 0)
        Text = values[0];

    Values = values;

    selectedFontColour = new Colour(0, 255, 0);
    selectedFrontColour = new Colour(255, 255, 255);
    buttonColour = new Colour(0, 255, 255);
    buttonOnClickColour = new Colour(255, 0, 0);
    isOpened = false;
    maxItemsInView = 5;
    currentlySelected = 0;
    mouseOnItem = -1;
    topItem = 0;
}

SelectionBox::~SelectionBox()
{
    delete selectedFontColour;
    delete selectedFrontColour;
    delete buttonColour;
    delete buttonOnClickColour;
}

void SelectionBox::Draw()
{
    bgColor->SetThisColour();
    gout << move_to(X, Y) << box(XSize + buttonSize + borderThickness, YSize);
    frontColor->SetThisColour();
    gout << move_to(X + borderThickness, Y + borderThickness) << box(XSize - 2 * borderThickness, YSize - 2 * borderThickness);
    Text = Values[currentlySelected];
    if (IsTextFits())
    {
        fontColor->SetThisColour();
        gout << move_to(X + borderThickness + 2, Y + YSize / 2 + gout.cdescent()) << text(Text);
    }

    if (!isOpened)
    {
        buttonColour->SetThisColour();
        gout << move_to(X + XSize, Y + borderThickness) << box(buttonSize, YSize - 2 * borderThickness);
        fontColor->SetThisColour();
        gout << move_to(X + XSize + buttonSize / 2, Y + borderThickness + 1) << line(0, YSize - 2 * borderThickness - 2) << line(buttonSize / 2, -(YSize - 2 * borderThickness - 2)/4);
        gout << move(-buttonSize / 2,-1 + (YSize - 2 * borderThickness - 2)/4) << line(-buttonSize / 2, -(YSize - 2 * borderThickness - 2)/4);
    }
    else
    {
        buttonOnClickColour->SetThisColour();
        gout << move_to(X + XSize, Y + borderThickness) << box(buttonSize, YSize - 2 * borderThickness);fontColor->SetThisColour();
        gout << move_to(X + XSize + buttonSize / 2, Y + borderThickness + 1) << line(0, YSize - 2 * borderThickness - 2) << move_to(X + XSize + buttonSize / 2, Y + borderThickness + 1);
        gout << line(buttonSize / 2, (YSize - 2 * borderThickness - 2)/4) << move_to(X + XSize + buttonSize / 2, Y + borderThickness + 1);
        gout << line(-buttonSize / 2,(YSize - 2 * borderThickness - 2)/4);
        if (Values.size() <= maxItemsInView)
        {
            for (int i = 0; i < Values.size(); i++)
            {
                bgColor->SetThisColour();
                gout << move_to(X, Y + (i + 1) * YSize) << box (XSize + buttonSize + borderThickness, YSize - borderThickness);
                if (mouseOnItem - topItem == i)
                    selectedFrontColour->SetThisColour();
                else
                    frontColor->SetThisColour();

                gout << move_to(X + borderThickness, Y + (i + 1) * (YSize - borderThickness) + 2* borderThickness) << box(XSize - 2 * borderThickness, YSize - 2 * borderThickness);

                if (mouseOnItem - topItem == i)
                    selectedFontColour->SetThisColour();
                else
                    fontColor->SetThisColour();

                Text = Values[i];
                if (IsTextFits())
                    gout << move_to(X + borderThickness + 5, Y + (i + 1) * (YSize - borderThickness) + 2* borderThickness + YSize / 2 + gout.cdescent()) << text(Text);
            }
        }
        else
        {
            for (int i = 0; i < maxItemsInView; i++)
            {
                bgColor->SetThisColour();
                gout << move_to(X, Y + (i + 1) * YSize) << box (XSize + buttonSize + borderThickness, YSize);
                if (mouseOnItem - topItem == i)
                    selectedFrontColour->SetThisColour();
                else
                    frontColor->SetThisColour();

                gout << move_to(X + borderThickness, Y + (i + 1) * (YSize - borderThickness) + 2* borderThickness) << box(XSize - 2 * borderThickness, YSize - 2 * borderThickness);

                if (mouseOnItem - topItem == i)
                    selectedFontColour->SetThisColour();
                else
                    fontColor->SetThisColour();

                Text = Values[i + topItem];
                if (IsTextFits())
                    gout << move_to(X + borderThickness + 5, Y + (i + 1) * (YSize - borderThickness) + 2* borderThickness + YSize / 2 + gout.cdescent()) << text(Text);
            }
            if (topItem != 0)
            {
                buttonColour->SetThisColour();
                gout << move_to(X + XSize, Y + YSize + borderThickness);
                gout << box(buttonSize, buttonSize);
            }
            if (topItem + maxItemsInView != Values.size())
            {
                buttonColour->SetThisColour();
                gout << move_to(X + XSize, Y + maxItemsInView * YSize + borderThickness * 2);
                gout << box(buttonSize, buttonSize);
            }

        }
    }

}

void SelectionBox::Handle(event ev)
{
    if (ev.type == ev_mouse && ev.button == btn_left)
    {
        if (ev.pos_x >= X + XSize + borderThickness && ev.pos_x <= X + XSize + borderThickness + buttonSize)
        {
            if (ev.pos_y >= Y + borderThickness && ev.pos_y <= Y + YSize - borderThickness)
                isOpened = !isOpened;
            else if (isOpened && Values.size() > maxItemsInView)
            {
                if (ev.pos_y >= Y + YSize + borderThickness && ev.pos_y <= Y + YSize + borderThickness + buttonSize && topItem != 0)
                    topItem--;
                if (ev.pos_y >= Y + maxItemsInView * YSize + borderThickness * 2 && ev.pos_y <= Y + maxItemsInView * YSize + borderThickness * 2 + buttonSize && topItem + maxItemsInView < Values.size())
                    topItem++;
            }
        }
        else if (ev.pos_x >= X + borderThickness && ev.pos_x <= X + XSize - borderThickness && isOpened && mouseOnItem > -1)
        {
            isOpened = false;
            currentlySelected = mouseOnItem;
        }
    }
    else if (ev.type == ev_mouse && ev.button == 0 && isOpened && ev.pos_x >= X + borderThickness && ev.pos_x <= X + XSize - borderThickness)
    {
        if (Values.size() > maxItemsInView)
        {
            for (int i = 0; i < maxItemsInView; i++)
            {
                if (ev.pos_y >= Y + (i + 1) * (YSize - borderThickness) + 2* borderThickness && ev.pos_y <= Y + (i + 1) * (YSize - borderThickness) + YSize)
                {
                    mouseOnItem = i + topItem;
                    i = maxItemsInView;
                }
            }
        }
        else
        {
            for (int i = 0; i < Values.size(); i++)
            {
                if (ev.pos_y >= Y + (i + 1) * (YSize - borderThickness) + 2* borderThickness && ev.pos_y <= Y + (i + 1) * (YSize - borderThickness) + YSize)
                {
                    mouseOnItem = i;
                    i = maxItemsInView;
                }
            }
        }
    }
    else if (ev.type == ev_mouse && ev.button == btn_wheelup && Values.size() > maxItemsInView && isOpened && topItem > 0)
        topItem--;
    else if (ev.type == ev_mouse && ev.button == btn_wheeldown && Values.size() > maxItemsInView && isOpened && topItem + maxItemsInView < Values.size())
        topItem++;
    else if (ev.type == ev_key && ev.keycode == key_f10)
    {
        std::ofstream log;
        log.open("log.txt", std::ios_base::app);
        log << "Selection box" << std::endl;
        /*log << X << ":" << Y << "|" << XSize << ":" << YSize << std::endl;
        log << bgColor->GetR() << ":" << bgColor->GetG() << ":" << bgColor->GetB() << std::endl;
        log << frontColor->GetR() << ":" << frontColor->GetG() << ":" << frontColor->GetB() << std::endl;
        log << fontColor->GetR() << ":" << fontColor->GetG() << ":" << fontColor->GetB() << std::endl;
        log << selectedFrontColour->GetR() << ":" << selectedFrontColour->GetG() << ":" << selectedFrontColour->GetB() << std::endl;
        log << selectedFontColour->GetR() << ":" << selectedFontColour->GetG() << ":" << selectedFontColour->GetB() << std::endl;
        log << buttonColour->GetR() << ":" << buttonColour->GetG() << ":" << buttonColour->GetB() << "|" << buttonOnClickColour->GetR() << ":" << buttonOnClickColour->GetG() << ":" << buttonOnClickColour->GetB() << "|" << buttonSize << std::endl;
        log << isOpened << "|" << maxItemsInView << "|" << currentlySelected << "|" << mouseOnItem << "|" << topItem << std::endl;
        log << "Elements: " << std::endl;
        for (std::string s : Values)
            log << s << std::endl;*/
        log << Values[currentlySelected] << std::endl;
        log << "-----------------------------------" << std::endl;
        log.close();
    }
}

bool SelectionBox::IsInLine(int x, int y)
{
    int elements = Values.size();
    if (x >= X + borderThickness && x <= X + XSize + buttonSize - borderThickness)
    {
        if (isOpened)
        {
            if (elements >= maxItemsInView && y >= Y + borderThickness && Y + YSize * (maxItemsInView + 1))
                return true;
            else if (elements < maxItemsInView && y >= Y + borderThickness && Y + YSize * (elements + 1))
                return true;
        }
        else if (y >= Y + borderThickness && y <= Y + YSize - borderThickness)
            return true;
    }
    return false;
}

void SelectionBox::AddItem(std::string value)
{
    Values.push_back(value);
}

void SelectionBox::RemoveItem(std::string value)
{
    int counter = 0;
    for (std::string s : Values)
    {
        if (s.compare(value) == 0)
        {
            Values.erase(Values.begin() + counter);
            break;
        }
        counter++;
    }
}

void SelectionBox::RemoveItem(int place)
{
    if (place >= 0 && place < Values.size())
        Values.erase(Values.begin() + place);
}

int SelectionBox::CurrentlySelectedValue()
{
    return currentlySelected;
}

std::string SelectionBox::CurrentlySelectedItem()
{
    return Values[currentlySelected];
}

void SelectionBox::EditSelectedFontColour(int r, int g, int b)
{
    selectedFontColour->SetColour(r, g, b);
}

void SelectionBox::EditSelectedFrontColour(int r, int g, int b)
{
    selectedFrontColour->SetColour(r, g, b);
}

void SelectionBox::SetButtonSize(int button)
{
    buttonSize = button;
}

void SelectionBox::EditMaxItemInView(int elements)
{
    maxItemsInView = elements;
}
