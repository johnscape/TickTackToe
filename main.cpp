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
    MinMax* m = new MinMax(4, l, true);
    return 0;
}
