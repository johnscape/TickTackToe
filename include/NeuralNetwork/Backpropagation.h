#ifndef BACKPROPAGATION_H
#define BACKPROPAGATION_H

#include "NeuralNetwork.h"
#include "DataSet.h"

class Backpropagation
{
    public:
        Backpropagation(NeuralNetwork * network);
        virtual ~Backpropagation();
        void GetDataSets(DataSet ** sets, int setSize);

        void RunEpoch(DataSet * dSet);

    protected:

    private:
        NeuralNetwork * neuralNetwork;
        int DataSetSize;
        DataSet ** dataSets;

        int TrainingSetSize;
        int ValidationSetSize;
        int TestSetSize;

        int Counter = 0;

        double Alpha;

        double CalcError();


};

#endif // BACKPROPAGATION_H
