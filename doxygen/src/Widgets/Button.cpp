#include "Button.h"

Button::Button(int x, int y, int xSize, int ySize, std::string text, std::function<void()> fv) : Label(x, y, xSize, ySize, text)
{
    Function = fv;
    OnClickColor = new Colour(0, 0, 255);
}

Button::~Button()
{
    //dtor
}

void Button::Draw()
{
    if (IsVisible)
    {
        bgColor->SetThisColour();
        genv::gout << genv::move_to(X, Y) << genv::box(XSize, YSize);
        if (isClicking)
            OnClickColor->SetThisColour();
        else
            frontColor->SetThisColour();

        genv::gout << genv::move_to(X + borderThickness, Y + borderThickness) << genv::box(XSize - 2 * borderThickness, YSize - 2 * borderThickness);
        if (IsTextFits())
        {
            fontColor->SetThisColour();
            genv::gout << genv::move_to(X + borderThickness + 5, Y + borderThickness + ((YSize - borderThickness) / 2) + ((genv::gout.cascent() + genv::gout.cdescent()) / 4)) << genv::text(Text);
        }
    }
}

void Button::Handle(genv::event ev)
{
    if (IsInLine(ev.pos_x, ev.pos_y) && IsEnabled)
    {
        if (ev.button == genv::btn_left)
        {
            isClicking = true;
            Function();
        }
        else if (ev.button == -genv::btn_left)
            isClicking = false;
    }
}

bool Button::IsInLine(int x, int y)
{
    if (x >= X + borderThickness && x <= X + XSize - borderThickness && y >= Y + borderThickness && y <= Y + YSize - borderThickness)
        return true;
    return false;
}

void Button::SetOnClickColor(int r, int g, int b)
{
    OnClickColor->SetColour(r, g, b);
}
