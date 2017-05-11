#include "NeuralNetwork/NeuralNetwork.h"

NeuralNetwork::NeuralNetwork(int layerCount, int * neuronCount)
{
    LayerCount = layerCount;
    NeuronCounts = new int[LayerCount];
    Weights = new Matrix*[layerCount - 1];
    for (int i = 0; i < LayerCount; i++)
    {
        NeuronCounts[i] = neuronCount[i];
    }
    for (int i = 0; i < LayerCount - 1; i++)
    {
        Weights[i] = new Matrix(NeuronCounts[i], NeuronCounts[i + 1]);
        Weights[i]->FillWithRandom(-0.5, 0.5);
    }

    NeuronValues = new double*[LayerCount];
    for (int i = 0; i < LayerCount; i++)
    {
        NeuronValues[i] = new double[NeuronCounts[i]];
        for (int j = 0; j < NeuronCounts[i]; j++)
            NeuronValues[i][j] = 0;
    }

}

NeuralNetwork::~NeuralNetwork()
{
    delete activationFunction;
    for (int i = 0; i < LayerCount - 1; i++)
        delete Weights[i];
    delete [] Weights;
    delete [] NeuronCounts;
}

void NeuralNetwork::SetActivationFunction(ActivationFunction* func)
{
    activationFunction = func;
}

double * NeuralNetwork::Compute(double * inputs)
{
    ResetValues();
    for (int i = 0; i < NeuronCounts[0]; i++)
        NeuronValues[0][i] = inputs[i];

    for (int i = 0; i < LayerCount - 1; i++)
    {
        ComputeLayer(i);
    }

    double * ToReturn = new double[NeuronCounts[LayerCount - 1]];
    for (int i = 0; i < NeuronCounts[LayerCount - 1]; i++)
        ToReturn[i] = activationFunction->Calculate(NeuronValues[LayerCount - 1][i]);
    return ToReturn;
}

 void NeuralNetwork::ComputeLayer(int layer)
{
    for (int i = 0; i < NeuronCounts[layer]; i++)
    {
        Matrix m = Weights[layer]->GetRowMatrix(i);
        for (int j = 0; j < NeuronCounts[layer + 1]; j++)
        {
            if (layer == 0)
                NeuronValues[layer + 1][j] += NeuronValues[layer][i] * m.GetValue(0, j);
            else
                NeuronValues[layer + 1][j] += activationFunction->Calculate(NeuronValues[layer][i]) * m.GetValue(0, j);

        }
    }
}

void NeuralNetwork::ResetValues()
{
    for (int i = 0; i < LayerCount; i++)
    {
        for (int j = 0; j < NeuronCounts[i]; j++)
            NeuronValues[i][j] = 0;
    }
}

void NeuralNetwork::SetWeight(int weightNumber, int fromNeuron, int toNeuron, double value)
{
    if (weightNumber >= 0 && weightNumber < LayerCount - 1 && fromNeuron >= 0 && fromNeuron < NeuronCounts[weightNumber] && toNeuron >= 0 && toNeuron < NeuronCounts[weightNumber + 1])
    {
        Weights[weightNumber]->SetValue(fromNeuron, toNeuron, value);
    }
}

void NeuralNetwork::AdjustWeight(int weightNumber, int fromNeuron, int toNeuron, double value)
{
    if (weightNumber >= 0 && weightNumber < LayerCount - 1 && fromNeuron >= 0 && fromNeuron < NeuronCounts[weightNumber] && toNeuron >= 0 && toNeuron < NeuronCounts[weightNumber + 1])
    {
        Weights[weightNumber]->AdjustValue(fromNeuron, toNeuron, value);
    }
}

double NeuralNetwork::GetWeight(int weightNumber, int fromNeuron, int toNeuron)
{
    if (weightNumber >= 0 && weightNumber < LayerCount - 1 && fromNeuron >= 0 && fromNeuron < NeuronCounts[weightNumber] && toNeuron >= 0 && toNeuron < NeuronCounts[weightNumber + 1])
    {
        return Weights[weightNumber]->GetValue(fromNeuron, toNeuron);
    }

    return 0;
}

double NeuralNetwork::GetCurrentNeuronValue(int layer, int neuron)
{
    if (layer >= 0 && layer < LayerCount && neuron >= 0 && neuron < NeuronCounts[layer])
    {
        return NeuronValues[layer][neuron];
    }
    else
        return 0;
}

int NeuralNetwork::GetLayerCount()
{
    return LayerCount;
}

int NeuralNetwork::GetLayerSize(int layer)
{
    if (layer >= 0 && layer < LayerCount)
        return NeuronCounts[layer];
    else
        return 0;
}

ActivationFunction * NeuralNetwork::GetActivationFunction()
{
    return activationFunction;
}

NeuralNetwork* NeuralNetwork::Copy()
{
    NeuralNetwork* n = new NeuralNetwork(LayerCount, NeuronCounts);
    for (int i = 0; i < LayerCount - 1; i++)
        for (int j = 0; j < NeuronCounts[i]; j++)
            for (int k = 0; k < NeuronCounts[i + 1]; k++)
                n->SetWeight(i, j, k, Weights[i]->GetValue(j, k));

    n->SetActivationFunction(activationFunction->Copy());

    return n;
}
