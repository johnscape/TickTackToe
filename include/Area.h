#ifndef AREA_H
#define AREA_H

#include "Widget.h"
#include <functional>


class Area : public Widget
{
    public:
        Area(int x, int y);
        virtual ~Area();
        void SetEventVoid(std::function<void(Area*)> event);
        void SetValue(int value);
        void SetMarkerColour(int r, int g, int b);
        int GetValue();
        int GetXPostion();
        int GetYPosition();

        virtual void Draw();
        virtual void Handle(genv::event ev);
        virtual bool IsInLine(int x, int y);

    protected:

    private:
        int XVal;
        int YVal;
        int Value;
        Colour * MarkColour;
        std::function<void(Area*)> OnEvent;
};

#endif // AREA_H
