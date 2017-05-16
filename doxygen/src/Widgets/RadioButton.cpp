#include "RadioButton.h"

RadioButton::RadioButton(int x, int y, int buttonSize, std::string text, int value) : Label(x, y, buttonSize, buttonSize, text)
{
    IsSelected = false;
    onClickColour = new Colour(0, 255, 0);
    Value = value;
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
            DrawCircle(X + XSize, Y + YSize, (YSize - borderThickness) / 2, (YSize - borderThickness) / 2);
        }
        fontColor->SetThisColour();
        genv::gout << genv::move_to(X + 2 * XSize + 5, Y + YSize / 2 + genv::gout.cascent()) << genv::text(Text);
    }
}

void RadioButton::Handle(genv::event ev)
{
    if (IsEnabled && ev.button == genv::btn_left)
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

bool RadioButton::GetSelection()
{
    return IsSelected;
}

int RadioButton::GetValue()
{
    return Value;
}
