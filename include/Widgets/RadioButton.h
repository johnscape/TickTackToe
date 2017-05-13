#ifndef RADIOBUTTON_H
#define RADIOBUTTON_H

#include <string>
#include "Label.h"
#include "Colour.h"

class RadioButton : public Label
{
    public:
        RadioButton(int x, int y, int buttonSize, std::string text, int value);
        virtual ~RadioButton();

        virtual void Draw();
        virtual void Handle(genv::event ev);
        virtual bool IsInLine(int x, int y);
        void SetSelection(bool value);
        bool GetSelection();
        int GetValue();

    protected:

    private:
        int Value;
        bool IsSelected;
        Colour* onClickColour;
        void DrawCircle(int x, int y, int r, int thickness);
};

#endif // RADIOBUTTON_H
