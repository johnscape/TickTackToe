#include "Widgets/Widget.h"

Widget::Widget(int x, int y, int xSize, int ySize)
{
    X = x;
    Y = y;
    XSize = xSize;
    YSize = ySize;

    borderThickness = 1;

    bgColor = new Colour(0, 0, 255);
    frontColor = new Colour(255, 255, 255);

    Selected = false;

    IsEnabled = true;
    IsVisible = true;
}

Widget::~Widget()
{
    delete bgColor;
    delete frontColor;
}

void Widget::SetBorderThickness(int thickness)
{
    borderThickness = thickness;
}

void Widget::SetBackgroundColour(int r, int g, int b)
{
    bgColor->SetColour(r, g, b);
}

void Widget::SetFrontColour(int r, int g, int b)
{
    frontColor->SetColour(r, g, b);
}

void Widget::SetEnable(bool value)
{
    IsEnabled = value;
}

void Widget::SetVisible(bool value)
{
    IsVisible = value;
}
