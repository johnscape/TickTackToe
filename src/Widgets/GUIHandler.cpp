#include "Widgets/Colour.h"
#include "Widgets/GUIHandler.h"
#include "graphics.hpp"

using namespace genv;

GUIHandler::GUIHandler(int& xx, int& yy)
{
    WindowX = xx;
    WindowY = yy;
    SelectedWidget = -1;
    bgColour = new Colour();
}

GUIHandler::~GUIHandler()
{
    int vsize = Widgets.size() - 1;
    for (int i = vsize; i >= 0; i--)
    {
        delete Widgets[i];
        Widgets.pop_back();
    }
}

void GUIHandler::AddWidget(Widget* w)
{
    Widgets.push_back(w);
}

void GUIHandler::RemoveWidget(int num)
{
    if (num >= 0 && num < Widgets.size())
    {
        delete Widgets[num];
        Widgets.erase(Widgets.begin() + num);
    }
}

void GUIHandler::RemoveWidget(Widget* w)
{
    int counter = 0;
    for (Widget* widget : Widgets)
    {
        if (widget == w)
        {
            delete w;
            Widgets.erase(Widgets.begin() + counter);
            w = NULL;
        }
        counter++;
    }
}

void GUIHandler::Draw()
{
    bgColour->SetThisColour();
    gout << move_to(0, 0) << box(WindowX, WindowY);
    for (Widget* w : Widgets)
        w->Draw();

    gout << refresh;
}

void GUIHandler::Handle(event ev)
{
    if (ev.type == ev_mouse && ev.button == btn_left)
    {
        SelectedWidget = -1;
        for (int i = 0; i < Widgets.size(); i++)
        {
            if (Widgets[i]->IsInLine(ev.pos_x, ev.pos_y))
            {
                SelectedWidget = i;
                i = Widgets.size();
            }
        }
    }

    if (SelectedWidget != -1)
        Widgets[SelectedWidget]->Handle(ev);
}

void GUIHandler::Start(bool exitOnEscape, int timer)
{
    event ev;
    gin.timer(timer);
    if (exitOnEscape)
    {
        while(gin >> ev || ev.keycode == key_escape)
        {
            if (ev.type == ev_timer)
                Draw();
            else
                Handle(ev);
        }
    }
    else
    {
        while(gin >> ev)
        {
            if (ev.type == ev_timer)
                Draw();
            else
                Handle(ev);
        }
    }
}

void GUIHandler::DeleteAllWidget()
{
    for (Widget* w : Widgets)
    {
        delete w;
        w = nullptr;
    }


    Widgets.clear();
    SelectedWidget = -1;
}
