#ifndef COLOUR_H
#define COLOUR_H


class Colour
{
    public:
        /**
        * Egy sz�n RGB k�dj�t t�rolja, alap�rtelmezetten fekete
        */
        Colour();

        /**
        * Egy sz�n RGB k�dj�t t�rolja
        * @param r a sz�n piros k�dja
        * @param g a sz�n z�ld k�dja
        * @param b a sz�n k�k k�dja
        */
        Colour(int r, int g, int b);
        virtual ~Colour();

        /**
        * A sz�nt m�dos�tja a megadott �rt�kekkel
        * @param r a piros m�dos�t�s m�rt�ke
        * @param g a z�ld m�dos�t�s m�rt�ke
        * @param b a k�k m�dos�t�s m�rt�ke
        */
        void AdjustColour(int r, int g, int b);

        /**
        * Megv�ltoztatja a t�rolt sz�nt az �j sz�nre
        * @param r az �j piros �rt�k
        * @param g az �j z�ld �rt�k
        * @param b az �j k�k �rt�k
        */
        void SetColour(int r, int g, int b);

        /**
        * A gout sz�n�t �t�l�tja az �ltala t�rolt sz�nre
        */
        void SetThisColour();

        /**
        * Megadja a t�rolt sz�n piros �rt�k�t
        * @return A t�rolt piros �rt�k
        */
        int GetR();

        /**
        * Megadja a t�rolt sz�n z�ld �rt�k�t
        * @return A t�rolt z�ld �rt�k
        */
        int GetG();

        /**
        * Megadja a t�rolt sz�n k�k �rt�k�t
        * @return A t�rolt k�k �rt�k
        */
        int GetB();

    protected:

    private:
        int R; /**< A t�rolt piros �rt�k */
        int G; /**< A t�rolt z�ld �rt�k */
        int B; /**< A t�rolt k�k �rt�k */

        /**
        * Ellen�rzi, hogy a sz�nek nem-e l�gnak ki a 0-255 tartom�nyb�l
        */
        void CheckRGB();
};

#endif // COLOUR_H
