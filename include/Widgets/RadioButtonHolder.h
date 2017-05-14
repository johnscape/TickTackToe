#ifndef RADIOBUTTONHOLDER_H
#define RADIOBUTTONHOLDER_H

#include "Widget.h"
#include "RadioButton.h"
#include <vector>
#include <functional>

class RadioButtonHolder : public Widget
{
    public:
        RadioButtonHolder();
        virtual ~RadioButtonHolder();
        void AddRadioButton(RadioButton* button);
        void RemoveRadioButton(RadioButton* button);
        void RemoveRadioButton(int place);
        int GetCurrentlySelected();
        int CurrentlySelectedValue();
        void SetEventVoid(std::function<void(RadioButtonHolder*)> event);

        virtual void Draw();
        virtual void Handle(genv::event ev);
        virtual bool IsInLine(int x, int y);

    protected:

    private:
        std::vector<RadioButton*> radioButtons;
        std::function<void(RadioButtonHolder*)> OnEvent;
        int ButtonCount;
        int CurrentlySelected;
        void CheckNull();
};

#endif // RADIOBUTTONHOLDER_H
