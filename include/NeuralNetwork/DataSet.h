#ifndef DATASET_H
#define DATASET_H


class DataSet
{
    public:
        DataSet(double * input, double * output, int inputSize, int outputSize);
        virtual ~DataSet();
        double GetInput(int pos);
        double GetOutput(int pos);

        double * GetInputs();
        double * GetOutputs();

    protected:

    private:
        double * Inputs;
        double * Outputs;

        int InputsSize;
        int OutputsSize;
};

#endif // DATASET_H
