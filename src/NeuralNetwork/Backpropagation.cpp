#include "NeuralNetwork/Backpropagation.h"
#include "NeuralNetwork/NeuralNetwork.h"
#include "NeuralNetwork/DataSet.h"
#include <cstddef>

Backpropagation::Backpropagation(NeuralNetwork * network)
{
    neuralNetwork = network;
    Alpha = 0.2;
}

Backpropagation::~Backpropagation()
{
    for (int i = 0; i < DataSetSize; i++)
        delete dataSets[i];
    delete [] dataSets;
}

void Backpropagation::GetDataSets(DataSet ** sets, int setSize)
{
    dataSets = sets;
    DataSetSize = setSize;
}

//szóval, amit kéne csináljon
//O->H
//delta rule on wikipedia
//

void Backpropagation::RunEpoch(DataSet * dSet)
{
    double * outp = neuralNetwork->Compute(dSet->GetInputs());
    double ** Errors;
    double *** newWeights = new double**[neuralNetwork->GetLayerCount() - 1];
    for (int i = 0; i < neuralNetwork->GetLayerCount() - 1; i++)
    {
        newWeights[i] = new double*[neuralNetwork->GetLayerSize(i)];
        for (int j = 0; j < neuralNetwork->GetLayerSize(i); j++)
        {
            newWeights[i][j] = new double[neuralNetwork->GetLayerSize(i + 1)];
            for (int k = 0; k < neuralNetwork->GetLayerSize(i + 1); k++)
                newWeights[i][j][k] = 0;
        }
    }


    Errors = new double*[neuralNetwork->GetLayerCount()];


    for (int i = neuralNetwork->GetLayerCount() - 1; i > 0; i--)
    {
        Errors[i] = new double[neuralNetwork->GetLayerSize(i)];

        for (int n = 0; n < neuralNetwork->GetLayerSize(i); n++)
        {
            if (i == neuralNetwork->GetLayerCount() - 1)
                Errors[i][n] = (dSet->GetOutput(n) - outp[n]) * neuralNetwork->GetActivationFunction()->CalculateDerivate(neuralNetwork->GetCurrentNeuronValue(i, n));
            else
            {
                for (int l = 0; l < neuralNetwork->GetLayerSize(i - 1); l++)
                    Errors[i][n] = Errors[i + 1][l] * neuralNetwork->GetWeight(i + 1, n, l) * neuralNetwork->GetActivationFunction()->CalculateDerivate(neuralNetwork->GetCurrentNeuronValue(i, n));
            }
            for (int k = 0; k < neuralNetwork->GetLayerSize(i - 1); k++)
            {
                if (i - 1 > 0)
                    newWeights[i - 1][k][n] = Errors[i][n] * neuralNetwork->GetActivationFunction()->Calculate(neuralNetwork->GetCurrentNeuronValue(i - 1, k));
                else
                    newWeights[i - 1][k][n] = Errors[i][n] * neuralNetwork->GetCurrentNeuronValue(i - 1, k);
            }

        }
    }

    for (int i = 0; i < neuralNetwork->GetLayerCount() - 1; i++)
        for (int j = 0; j < neuralNetwork->GetLayerSize(i); j++)
            for (int k = 0; k < neuralNetwork->GetLayerSize(i + 1); k++)
                neuralNetwork->AdjustWeight(i, j, k, newWeights[i][j][k]);

    for (int i = 0; i < neuralNetwork->GetLayerCount() - 1; i++)
    {
        for (int j = 0; j < neuralNetwork->GetLayerSize(i); j++)
        {
            //Counter++;
            delete [] newWeights[i][j];
        }
        delete [] newWeights[i];
    }

    delete [] newWeights;

    newWeights = NULL;
}
