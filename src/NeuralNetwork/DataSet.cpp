#include "NeuralNetwork/DataSet.h"

DataSet::DataSet(double * input, double * output, int inputSize, int outputSize)
{
    Inputs = input;
    Outputs = output;
    InputsSize = inputSize;
    OutputsSize = outputSize;
}

DataSet::~DataSet()
{
    delete [] Inputs;
    delete [] Outputs;
}

double DataSet::GetInput(int pos)
{
    if (pos >= 0 && pos < InputsSize)
        return Inputs[pos];
    else
        return 0;
}

double DataSet::GetOutput(int pos)
{
    if (pos >= 0 && pos < OutputsSize)
        return Outputs[pos];
    else
        return 0;
}

double * DataSet::GetInputs()
{
    return Inputs;
}

double * DataSet::GetOutputs()
{
    return Outputs;
}
