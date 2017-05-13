#include "graphics.hpp"
#include "NeuralNetwork/NeuralNetwork.h"
#include "Level.h"
#include "MinMax.h"
#include "GameHandler.h"
#include <iostream>
using namespace genv;
using namespace std;


int main()
{
    //NeuralNetwork* n;
    gout.open(700,700);
    Level * l = new Level(20, 5);
    MinMax* m = new MinMax(4, l, true);
    GameHandler * g = new GameHandler(700, 700);



    return 0;
}
