#include "Widgets/Label.h"
#include <string.h>
#include "graphics.hpp"

using namespace genv;

Label::Label(int x, int y, int xSize, int ySize, std::string text) : Widget(x, y, xSize, ySize)
{
    fontColor = new Colour();
    Text = text;
}

Label::~Label()
{
    delete fontColor;
}

bool Label::IsTextFits()
{
    if (gout.twidth(Text) < XSize - 2 * borderThickness + 5 && gout.cascent() + gout.cdescent() < YSize)
        return true;

    return false;
}

void Label::Draw()
{
    bgColor->SetThisColour();
    gout << move_to(X, Y) << box(XSize, YSize);
    frontColor->SetThisColour();
    gout << move_to(X + borderThickness, Y + borderThickness) << box(XSize - 2 * borderThickness, YSize - 2 * borderThickness);
    if (IsTextFits())
    {
        fontColor->SetThisColour();
        gout << move_to(X + borderThickness + 5, Y + borderThickness + ((YSize - borderThickness) / 2) + ((gout.cascent() + gout.cdescent()) / 4)) << text(Text);
    }
}

void Label::SetFontColour(int r, int g, int b)
{
    fontColor->SetColour(r, g, b);
}

void Label::SetText(std::string newText)
{
    Text = newText;
}

bool Label::IsInLine(int x, int y)
{
    return false;
}
