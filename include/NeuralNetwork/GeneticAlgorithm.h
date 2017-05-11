#ifndef GENETICALGORITHM_H
#define GENETICALGORITHM_H

#include "NeuralNetwork.h"

class GeneticAlgorithm
{
    public:
        GeneticAlgorithm(NeuralNetwork * network, int generations, int population);
        virtual ~GeneticAlgorithm();

        void SetPointingFunction(double (*fv)(NeuralNetwork*));

        NeuralNetwork* Start();

    protected:

    private:

        int MaxGenerations;
        int Population;
        int CurrentGeneration;
        int MaxParentNum;

        NeuralNetwork * Network;
        NeuralNetwork ** Trainables;
        NeuralNetwork ** Parents;

        bool CrossoverEnabled;
        bool MutationEnabled;
        double crossoverChance;
        double mutatationChance;
        double minMutation;
        double maxMutation;

        double (*PointCounter)(NeuralNetwork*);
        double MutationGenerator();

        void Generation();
        NeuralNetwork* GenerateChild();

        int FindBig(double * where);

};

#endif // GENETICALGORITHM_H
