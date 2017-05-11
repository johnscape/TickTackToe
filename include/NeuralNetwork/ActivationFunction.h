#ifndef ACTIVATIONFUNCTION_H
#define ACTIVATIONFUNCTION_H


class ActivationFunction
{
    public:
        ActivationFunction();
        virtual ~ActivationFunction();
        virtual double Calculate (double value) = 0;
        virtual double CalculateDerivate (double value) = 0;
        virtual ActivationFunction* Copy() = 0;

    protected:

    private:
};

#endif // ACTIVATIONFUNCTION_H
