#ifndef NEURALNETWORK_H
#define NEURALNETWORK_H

#include "Matrix.h"
#include "ActivationFunction.h"

class NeuralNetwork
{
    public:
        NeuralNetwork(int layerCount, int * neuronCount);
        virtual ~NeuralNetwork();
        void SetActivationFunction(ActivationFunction * func);
        double * Compute(double * inputs);
        int GetInputSize();
        int GetOutputSize();
        int GetLayerSize(int layer);
        int GetLayerCount();

        void SetWeight(int weightNumber, int fromNeuron, int toNeuron, double value);
        void AdjustWeight(int weightNumber, int fromNeuron, int toNeuron, double value);
        double GetWeight(int weightNumber, int fromNeuron, int toNeuron);

        double GetCurrentNeuronValue (int layer, int neuron);
        ActivationFunction * GetActivationFunction();

        NeuralNetwork* Copy();

    protected:

    private:
        ActivationFunction * activationFunction;
        Matrix ** Weights;
        int * NeuronCounts;
        double ** NeuronValues;
        int LayerCount;

        void ComputeLayer(int layer);
        void ResetValues();



};

#endif // NEURALNETWORK_H
