#ifndef COLOUR_H
#define COLOUR_H


class Colour
{
    public:
        /**
        * Egy szín RGB kódját tárolja, alapértelmezetten fekete
        */
        Colour();

        /**
        * Egy szín RGB kódját tárolja
        * @param r a szín piros kódja
        * @param g a szín zöld kódja
        * @param b a szín kék kódja
        */
        Colour(int r, int g, int b);
        virtual ~Colour();

        /**
        * A színt módosítja a megadott értékekkel
        * @param r a piros módosítás mértéke
        * @param g a zöld módosítás mértéke
        * @param b a kék módosítás mértéke
        */
        void AdjustColour(int r, int g, int b);

        /**
        * Megváltoztatja a tárolt színt az új színre
        * @param r az új piros érték
        * @param g az új zöld érték
        * @param b az új kék érték
        */
        void SetColour(int r, int g, int b);

        /**
        * A gout színét átálítja az általa tárolt színre
        */
        void SetThisColour();

        /**
        * Megadja a tárolt szín piros értékét
        * @return A tárolt piros érték
        */
        int GetR();

        /**
        * Megadja a tárolt szín zöld értékét
        * @return A tárolt zöld érték
        */
        int GetG();

        /**
        * Megadja a tárolt szín kék értékét
        * @return A tárolt kék érték
        */
        int GetB();

    protected:

    private:
        int R; /**< A tárolt piros érték */
        int G; /**< A tárolt zöld érték */
        int B; /**< A tárolt kék érték */

        /**
        * Ellenõrzi, hogy a színek nem-e lógnak ki a 0-255 tartományból
        */
        void CheckRGB();
};

#endif // COLOUR_H
