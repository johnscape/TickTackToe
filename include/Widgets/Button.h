#ifndef BUTTON_H
#define BUTTON_H

#include <functional>
#include "Label.h"
#include "Widget.h"
#include "graphics.hpp"

class Button : public Label
{
    public:
        Button(int x, int y, int xSize, int ySize, std::string text, std::function<void()> fv);
        virtual ~Button();

        virtual void Draw();
        virtual void Handle(genv::event ev);
        virtual bool IsInLine(int x, int y);

        void SetOnClickColor(int r, int g, int b);

    protected:

    private:
        std::function<void()> Function;
        Colour * OnClickColor;
        bool isClicking;
};

#endif // BUTTON_H
