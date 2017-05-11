#ifndef MATRIX_H
#define MATRIX_H


class Matrix
{
    public:
        Matrix();
        Matrix(const Matrix& m);
        Matrix(int rows, int cols);
        Matrix(int rows, int cols, double ** vals);
        Matrix(bool row, double * values, int valuesSize);
        virtual ~Matrix();

        double GetValue(int row, int col) const;
        void SetValue(int row, int col, double value);
        void AdjustValue (int row, int col, double value);
        bool IsVector();
        bool IsRowVector();
        bool IsCollumnVector();
        void FillWithRandom (double mininum, double maximum);

        int GetRowCount() const;
        int GetCollumnCount() const;

        void Transpose();
        void operator*= (double a);
        void operator*= (int a);
        void operator+= (Matrix& m);
        void operator-= (Matrix& m);

        const Matrix operator* (const Matrix& m) const;
        const Matrix operator+ (const Matrix& m) const;
        const Matrix operator- (const Matrix& m) const;

        Matrix GetRowMatrix (int row);
        Matrix GetCollumnMatrix (int collumn);

        double * ToDoubleArray();

        /*Matrix HamardMultiplication (Matrix& m);
        Matrix KroneckerMultiplication (Matrix& m);
        Matrix CombinateRows (Matrix& m);*/


    protected:

    private:
        double ** Values;
        int Rows;
        int Collumns;

        double DoubleRand (double minimum, double maximum);
};

#endif // MATRIX_H
