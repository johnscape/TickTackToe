#include "Area.h"
#include "math.h"

using namespace genv;

Area::Area(int x, int y) :Widget(x * 20, y * 20 + 50, 18, 18)
{
    Value = 0;
    XVal = x;
    YVal = y;
    MarkColour = new Colour(255, 255, 255);
    OnEvent = nullptr;
}

Area::~Area()
{
    delete MarkColour;
}

void Area::Draw()
{
    if (IsVisible)
    {
        bgColor->SetThisColour();
        gout << move_to(X, Y) << box(XSize, YSize);
        frontColor->SetThisColour();
        gout << move_to(X + borderThickness, Y + borderThickness) << box(XSize - 2 * borderThickness, YSize - 2 * borderThickness);
        if (Value > 0)
        {
            MarkColour->SetThisColour();
            if (Value == 1)
            {
                gout << move_to(X + borderThickness, Y + borderThickness) << line_to(X + XSize - borderThickness, Y + YSize - borderThickness);
                gout << move_to(X + XSize - borderThickness, Y + borderThickness) << line_to(X + borderThickness, Y + YSize - borderThickness);
            }
            else if (Value == 2)
            {
                gout << move_to(X + borderThickness + XSize / 2 - gout.twidth("O") / 2 - 1, Y + borderThickness + YSize / 2 + (gout.cdescent()) / 2) << text("O");
            }
        }
    }
}

void Area::Handle(event ev)
{
    if (IsInLine(ev.pos_x, ev.pos_y) && ev.button == btn_left && IsEnabled && OnEvent != nullptr && Value == 0)
    {
        OnEvent(this);
    }
}

bool Area::IsInLine(int x, int y)
{
    if (x >= X + borderThickness && x <= X + XSize - borderThickness && y >= Y + borderThickness && y <= Y + YSize - borderThickness)
        return true;
    return false;
}

void Area::SetEventVoid(std::function<void(Area*)> event)
{
    OnEvent = event;
}

void Area::SetValue(int value)
{
    Value = value;
}

int Area::GetValue()
{
    return Value;
}

void Area::SetMarkerColour(int r, int g, int b)
{
    MarkColour->SetColour(r, g, b);
}

int Area::GetXPostion()
{
    return XVal;
}

int Area::GetYPosition()
{
    return YVal;
}
