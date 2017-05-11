#ifndef TANHFUNCTION_H
#define TANHFUNCTION_H

#include "ActivationFunction.h"

class TanhFunction : public ActivationFunction
{
    public:
        TanhFunction();
        virtual ~TanhFunction();
        virtual double Calculate (double value);
        virtual double CalculateDerivate (double value);
        virtual ActivationFunction* Copy();

    protected:

    private:
};

#endif // TANHFUNCTION_H
