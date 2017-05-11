#include "NeuralNetwork/GeneticAlgorithm.h"
#include <random>

GeneticAlgorithm::GeneticAlgorithm(NeuralNetwork * network, int generations, int population)
{
    Network = network;
    MaxGenerations = generations;
    CurrentGeneration = 0;
    Population = population;
    MaxParentNum = 5;
    CrossoverEnabled = false;
    crossoverChance = 0.5;
    MutationEnabled = true;
    mutatationChance = 0.8;
    minMutation = -0.5;
    maxMutation = 0.5;
}

GeneticAlgorithm::~GeneticAlgorithm()
{
    delete [] Trainables;

}

void GeneticAlgorithm::SetPointingFunction(double (*fv)(NeuralNetwork*))
{
    PointCounter = fv;
}

NeuralNetwork* GeneticAlgorithm::Start()
{
    Parents = new NeuralNetwork*[MaxParentNum];
    for (int i = 0; i < MaxParentNum; i++)
    {
        Parents[i] = Network->Copy();
        for (int j = 0; j < Network->GetLayerCount(); j++)
            for (int k = 0; k < Network->GetLayerSize(i); k++)
                for (int l = 0; l < Network->GetLayerSize(i + 1); l++)
                    Parents[i]->AdjustWeight(j, k, l, MutationGenerator());
    }



    for (int i = 0; i < MaxGenerations; i++)
    {
        Generation();
    }
}

void GeneticAlgorithm::Generation()
{
    Trainables = new NeuralNetwork*[Population];
    for (int j = 0; j < MaxParentNum; j++)
        Trainables[j] = Parents[j];

    for (int i = MaxParentNum; i < Population; i++)
    {
        Trainables[i] = GenerateChild();
    }

    double * Points = new double[Population];

    for (int i = 0; i < Population; i++)
    {
        Points[i] = PointCounter(Trainables[i]);
    }

    for (int i = 0; i < MaxParentNum; i++)
    {
        Parents[i] = Trainables[FindBig(Points)];
        Points[i] = -100;
    }

    int errorCounter = 0;


    delete [] Points;
    for (int i = 0; i < Population; i++)
    {
        bool found = false;
        for (int j = 0; j < MaxParentNum; j++)
        {
            if (Parents[j] == Trainables[i])
                found = true;
        }

        if (!found)
        {
            int deleteing = i;
            int asd = Trainables[i]->GetLayerCount();
            if (i == 0)
                delete Trainables[i];
            else if (Trainables[i] != Trainables[i - 1])
                delete Trainables[i];
            else
                errorCounter++;
        }

    }

    delete [] Trainables;
    Trainables = nullptr;
    CurrentGeneration++;
}

int GeneticAlgorithm::FindBig(double * where)
{
    double maxPoint = 0;
    int location = 0;
    for (int i = 0; i < Population; i++)
    {
        if (where[i] > maxPoint)
        {
            maxPoint = where[i];
            location = i;
        }
    }

    return location;
}

NeuralNetwork* GeneticAlgorithm::GenerateChild()
{
    if (!CrossoverEnabled)
    {
        int random = rand() % MaxParentNum;
        NeuralNetwork* child = Parents[random]->Copy();

        if (rand() % 100 > mutatationChance)
        {
            for (int j = 0; j < Network->GetLayerCount(); j++)
                for (int k = 0; k < Network->GetLayerSize(j); k++)
                    for (int l = 0; l < Network->GetLayerSize(j + 1); l++)
                        child->AdjustWeight(j, k, l, MutationGenerator());
        }
        return child;
    }


}

double GeneticAlgorithm::MutationGenerator()
{
    double r = (double)rand() / RAND_MAX;
    return minMutation + r * (maxMutation - minMutation);
}
