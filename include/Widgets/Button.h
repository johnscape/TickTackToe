#ifndef BUTTON_H
#define BUTTON_H

#include "Label.h"
#include "Widget.h"

class Button : public Label
{
    public:
        Button(int x, int y, int xSize, int ySize, std::string text, void (*onClick)());
        virtual ~Button();

        virtual void Draw();
        virtual void Handle(genv::event ev);
        virtual bool IsInLine(int x, int y);

        void SetOnClickColor(int r, int g, int b);

    protected:

    private:
        void (*Fv)();
        Colour * OnClickColor;
        bool isClicking;
};

#endif // BUTTON_H
