#include "Colour.h"
#include "graphics.hpp"

Colour::Colour()
{
    R = 0;
    G = 0;
    B = 0;
}

Colour::Colour(int r, int g, int b)
{
    R = r;
    G = g;
    B = b;
    CheckRGB();
}

Colour::~Colour()
{
    //dtor
}

void Colour::AdjustColour(int r, int g, int b)
{
    R += r;
    G += g;
    B += b;
    CheckRGB();
}

void Colour::SetColour(int r, int g, int b)
{
    R = r;
    G = g;
    B = b;
    CheckRGB();
}

void Colour::CheckRGB()
{
    if (R > 255)
        R = 255;
    else if (R < 0)
        R = 0;

    if (G > 255)
        G = 255;
    else if (G < 0)
        G = 0;

    if (B > 255)
        B = 255;
    else if (B < 0)
        B = 0;
}

void Colour::SetThisColour()
{
    genv::gout << genv::color(R, G, B);
}

int Colour::GetR()
{
    return R;
}

int Colour::GetG()
{
    return G;
}

int Colour::GetB()
{
    return B;
}
