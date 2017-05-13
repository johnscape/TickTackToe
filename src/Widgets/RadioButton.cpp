#include "RadioButton.h"

RadioButton::RadioButton(int x, int y, int buttonSize, std::string text) : Label(x, y, buttonSize, buttonSize, text)
{
    IsSelected = false;
    onClickColour = new Colour(0, 255, 0);
}

RadioButton::~RadioButton()
{
    delete onClickColour;
}

void RadioButton::Draw()
{
    if (IsVisible)
    {
        bgColor->SetThisColour();
        DrawCircle(X + XSize, Y + YSize, YSize, borderThickness);
        frontColor->SetThisColour();
        DrawCircle(X + XSize, Y + YSize, YSize - borderThickness, YSize - borderThickness);
        if (IsSelected)
        {
            onClickColour->SetThisColour();
            DrawCircle(X + XSize, Y + YSize, (YSize - borderThickness) / 4, (YSize - borderThickness) / 4);
        }
        fontColor->SetThisColour();
        genv::gout << genv::move_to(X + XSize + 5, Y + YSize / 2) << genv::text(Text);
    }
}

void RadioButton::Handle(genv::event ev)
{
    if (IsEnabled)
        IsSelected = true;
}

bool RadioButton::IsInLine(int x, int y)
{
    if (x >= X && x <= X + XSize && y >= Y && y <= Y + YSize)
        return true;
    return false;
}

void RadioButton::SetSelection(bool value)
{
    IsSelected = value;
}

void RadioButton::DrawCircle(int x, int y, int r, int thickness)
{
    for (int xx = x - r; xx < x + r + 1; xx++)
    {
        for (int yy = y - r; yy < y + r + 1; yy++)
        {
            if ((x - xx) * (x - xx) + (y - yy) * (y - yy) <= r * r && (x - xx) * (x - xx) + (y - yy) * (y - yy) >= (r - thickness) * (r - thickness))
            {
                genv::gout << genv::move_to(xx, yy) << genv::dot;
            }
        }
    }
}
