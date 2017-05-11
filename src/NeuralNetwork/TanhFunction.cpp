#include "NeuralNetwork/TanhFunction.h"
#include <math.h>

TanhFunction::TanhFunction()
{}

TanhFunction::~TanhFunction()
{}

double TanhFunction::Calculate(double value)
{
    return (tanh(value) + 1) / 2;
}

double TanhFunction::CalculateDerivate(double value)
{
    return (1 - pow(tanh(value), 2)) / 2;
}

ActivationFunction* TanhFunction::Copy()
{
    return new TanhFunction();
}
