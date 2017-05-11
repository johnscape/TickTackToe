#include "graphics.hpp"
#include "NeuralNetwork/NeuralNetwork.h"
#include "Level.h"
#include "MinMax.h"
#include <iostream>
using namespace genv;
using namespace std;


int main()
{
    //NeuralNetwork* n;

    Level * l = new Level(20, 5);
    MinMax* m = new MinMax(10, l, true);
    //m->Step();
    gout.open(620,620);

    bool AITurn = false;

    event ev;
    while(gin >> ev)
    {
        gout << color(0, 0, 0) << move_to(0, 0) << box(600, 600);
        gout << color(255, 255, 255);
        //gout << move_to(100, 100) << box(25, 25);
        for (int x = 0; x < 20; x++)
        {
            for (int y = 0; y < 20; y++)
            {
                if (l->GetValue(x, y) == 1)
                {
                    gout << move_to(x * 26, y * 26 + 100) << color(255, 0, 0) << box(25, 25);
                }
                else if (l->GetValue(x, y) == 2)
                {
                    gout << move_to(x * 26, y * 26 + 100) << color(0, 255, 0) << box(25, 25);
                }
                else
                {
                    gout << move_to(x * 26, y * 26 + 100) << color(255, 255, 255) << box(25, 25);
                }
            }
        }

        if (AITurn)
        {
            m->Step();
            AITurn = false;
        }
        else
        {
            int x, y;
            cin >> x;
            cin >> y;
            l->Place(x, y, false);
            AITurn = true;
        }
        gout << refresh;
    }
    return 0;
}
