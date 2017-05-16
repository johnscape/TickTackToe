#ifndef RADIOBUTTONHOLDER_H
#define RADIOBUTTONHOLDER_H

#include "Widget.h"
#include "RadioButton.h"
#include <vector>
#include <functional>

class RadioButtonHolder : public Widget
{
    public:
        /** \brief Létrehot egy kiválasztó gomb tartó objektumot
         *
         *
         */
        RadioButtonHolder();
        virtual ~RadioButtonHolder();

        /** \brief A listához ad egy új gombot
         *
         * \param button RadioButton* Az új gomn
         * \return void
         *
         */
        void AddRadioButton(RadioButton* button);

        /** \brief Eltávolít egy gombot
         *
         * \param button RadioButton* Az eltávolítandó gomb
         * \return void
         *
         */
        void RemoveRadioButton(RadioButton* button);

        /** \brief Eltávolít egy gombot
         *
         * \param place int Az eltávolítandó gomb sorszáma
         * \return void
         *
         */
        void RemoveRadioButton(int place);

        /** \brief Megadja a jelenleg kiválasztott gomb sorszámát
         *
         * \return int A jelenleg kiválasztott gomb sorszáma
         *
         */
        int GetCurrentlySelected();

        /** \brief Megadja a jelenleg kiválasztott gomb értékét
         *
         * \return int A jelenleg kiválasztott gomb értéke
         *
         */
        int CurrentlySelectedValue();

        /** \brief Egy gomra történő kattintáskor meghívandó esemény
         *
         * \param RadioButtonHolder* A meghívandó esemény
         * \return void
         *
         */
        void SetEventVoid(std::function<void(RadioButtonHolder*)> event);


        /** \brief Kirajzolja a widgeteket
         *
         * \return virtual void
         *
         */
        virtual void Draw();

        /** \brief Kezeli a widgeteket az inputnak megfelelõen
         *
         * \param ev genv::event Az input eventje
         * \return virtual void
         *
         */
        virtual void Handle(genv::event ev);

        /** \brief Megadja, hogy egy koordináta rajta van-e a widgeten
         *
         * \param x int Az x koordináta
         * \param y int Az y koordináta
         * \return virtual bool
         *
         */
        virtual bool IsInLine(int x, int y);

    protected:

    private:
        std::vector<RadioButton*> radioButtons;/**< A tárolt gombok listája */
        std::function<void(RadioButtonHolder*)> OnEvent;/**< A meghíndó esemény */
        int ButtonCount;/**< A gombok száma */
        int CurrentlySelected;/**< A jeleneg kiválasztott gomb sorszáma */

        /** \brief Ellenőrzi, hogy vannak-e gombok
         *
         * \return void
         *
         */
        void CheckNull();
};

#endif // RADIOBUTTONHOLDER_H
