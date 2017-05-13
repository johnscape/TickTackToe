#ifndef RADIOBUTTONHOLDER_H
#define RADIOBUTTONHOLDER_H

#include "Widget.h"
#include "RadioButton.h"
#include <vector>

class RadioButtonHolder : public Widget
{
    public:
        RadioButtonHolder();
        virtual ~RadioButtonHolder();
        void AddRadioButton(RadioButton* button);
        void RemoveRadioButton(RadioButton* button);
        void RemoveRadioButton(int place);
        int GetCurrentlySelected();

        virtual void Draw();
        virtual void Handle(genv::event ev);
        virtual bool IsInLine(int x, int y);

    protected:

    private:
        std::vector<RadioButton*> radioButtons;
        int ButtonCount;
        int CurrentlySelected;
        void CheckNull();
};

#endif // RADIOBUTTONHOLDER_H
