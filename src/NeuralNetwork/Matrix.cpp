#include "NeuralNetwork/Matrix.h"
#include <random>

Matrix::Matrix()
{
    Rows = 1;
    Collumns = 1;
    Values = new double*[Rows];
    Values[0] = new double[Collumns];
    Values[0][0] = 0;
}

Matrix::Matrix(const Matrix& m)
{
    Rows = m.GetRowCount();
    Collumns = m.GetCollumnCount();

    Values = new double*[Rows];
    for (int i = 0; i < Rows; i++)
    {
        Values[i] = new double[Collumns];
        for (int j = 0; j < Collumns; j++)
            Values[i][j] = m.GetValue(i, j);
    }
}

Matrix::Matrix(bool row, double * values, int valuesSize)
{
    if (row)
    {
        Rows = 1;
        Collumns = valuesSize;
    }
    else
    {
        Rows = valuesSize;
        Collumns = 1;
    }

    Values = new double*[Rows];
    for (int i = 0; i < Rows; i++)
    {
        Values[i] = new double[Collumns];
    }
    for (int i = 0; i < valuesSize; i++)
    {
        if (row)
            Values[0][i] = values[i];
        else
            Values[i][0] = values[i];
    }
}

Matrix::Matrix(int rows, int cols)
{
    Rows = rows;
    Collumns = cols;

    Values = new double*[rows];
    for (int i = 0; i < rows; i++)
    {
        Values[i] = new double[cols];
        for (int j = 0; j < cols; j++)
            Values[i][j] = 0;
    }
}

Matrix::Matrix(int rows, int cols, double ** vals)
{
    Rows = rows;
    Collumns = cols;

    Values = new double*[rows];
    for (int i = 0; i < rows; i++)
    {
        Values[i] = new double[cols];
        for (int j = 0; j < cols; j++)
            Values[i][j] = vals[i][j];
    }
}

Matrix::~Matrix()
{
    for (int i = 0; i < Rows; i++)
        delete [] Values[i];

    delete Values;
}

double Matrix::GetValue(int row, int col) const
{
    if (row >= 0 && row < Rows && col >= 0 && col < Collumns)
        return Values[row][col];
    else
        return -10;
}

void Matrix::SetValue(int row, int col, double value)
{
    if (row >= 0 && row < Rows && col >= 0 && col < Collumns)
        Values[row][col] = value;
}

void Matrix::AdjustValue(int row, int col, double value)
{
    if (row >= 0 && row < Rows && col >= 0 && col < Collumns)
        Values[row][col] += value;
}

int Matrix::GetCollumnCount() const
{
    return Collumns;
}

int Matrix::GetRowCount() const
{
    return Rows;
}

void Matrix::Transpose()
{
    double ** NewValues = new double*[Collumns];
    for (int i = 0; i < Collumns; i++)
    {
        NewValues[i] = new double[Rows];
        for (int j = 0; j < Rows; j++)
            NewValues[i][j] = Values[j][i];
    }

    for (int i = 0; i < Rows; i++)
        delete [] Values[i];

    delete Values;

    Values = new double*[Collumns];
    for (int i = 0; i < Collumns; i++)
    {
        Values[i] = new double[Rows];
        for (int j = 0; j < Rows; j++)
            Values[i][j] = NewValues[i][j];
    }

    int temp = Rows;
    Rows = Collumns;
    Collumns = temp;

    for (int i = 0; i < Rows; i++)
        delete [] NewValues[i];

    delete NewValues;
}

bool Matrix::IsVector()
{
    return (Rows == 1 || Collumns == 1);
}

bool Matrix::IsRowVector()
{
    return Rows == 1;
}

bool Matrix::IsCollumnVector()
{
    return Collumns == 1;
}

void Matrix::operator*= (double a)
{
    for (int i = 0; i < Rows; i++)
    {
        for (int j = 0; j < Collumns; j++)
            Values[i][j] *= a;
    }
}

void Matrix::operator*= (int a)
{
    for (int i = 0; i < Rows; i++)
    {
        for (int j = 0; j < Collumns; j++)
            Values[i][j] *= a;
    }
}

void Matrix::operator+= (Matrix& m)
{
    if (m.GetCollumnCount() == Collumns && m.GetRowCount() == Rows)
    {
        for (int i = 0; i < Rows; i++)
        {
            for (int j = 0; j < Collumns; j++)
            {
                Values[i][j] += m.GetValue(i, j);
            }
        }
    }
}

void Matrix::operator-= (Matrix& m)
{
    if (m.GetCollumnCount() == Collumns && m.GetRowCount() == Rows)
    {
        for (int i = 0; i < Rows; i++)
        {
            for (int j = 0; j < Collumns; j++)
            {
                Values[i][j] -= m.GetValue(i, j);
            }
        }
    }
}

const Matrix Matrix::operator* (const Matrix& m) const
{
    Matrix m2(Collumns, Collumns);
    if (Collumns == m.GetRowCount())
    {
        for (int i = 0; i < Rows; i++)
        {
            for (int j = 0; j < m.GetCollumnCount(); j++)
            {
                for (int k = 0; k < Collumns; k++)
                {
                    m2.AdjustValue(i, j, Values[i][k] * m.GetValue(k, j));
                }
            }
        }
    }

    return m2;
}

const Matrix Matrix::operator+ (const Matrix& m) const
{
    Matrix m2(Rows, Collumns);
    if (Rows == m.GetRowCount() && Collumns == m.GetCollumnCount())
    {
        for (int i = 0; i < Rows; i++)
        {
            for (int j = 0; j < Collumns; j++)
            {
                m2.SetValue(i, j, Values[i][j] + m.GetValue(i, j));
            }
        }
    }

    return m2;
}

const Matrix Matrix::operator- (const Matrix& m) const
{
    Matrix m2(Rows, Collumns);
    if (Rows == m.GetRowCount() && Collumns == m.GetCollumnCount())
    {
        for (int i = 0; i < Rows; i++)
        {
            for (int j = 0; j < Collumns; j++)
            {
                m2.SetValue(i, j, Values[i][j] - m.GetValue(i, j));
            }
        }
    }

    return m2;
}

Matrix Matrix::GetRowMatrix(int row)
{
    Matrix r(1, Collumns);
    if (row >= 0 && row < Rows)
    {
        for (int i = 0; i < Collumns; i++)
        {
            r.SetValue(0, i, Values[row][i]);
        }
    }

    return r;
}

Matrix Matrix::GetCollumnMatrix(int collumn)
{
    Matrix r(Rows, 1);
    if (collumn >= 0 && collumn < Collumns)
    {
        for (int i = 0; i < Rows; i++)
        {
            r.SetValue(i, 0, Values[i][collumn]);
        }
    }

    return r;
}

void Matrix::FillWithRandom(double minimum, double maximum)
{
    for (int i = 0; i < Rows; i++)
    {
        for (int j = 0; j < Collumns; j++)
        {
            Values[i][j] = DoubleRand(minimum, maximum);
        }
    }
}

double Matrix::DoubleRand(double minimum, double maximum)
{
    double r = (double)rand() / RAND_MAX;
    return minimum + r * (maximum - minimum);
}

double * Matrix::ToDoubleArray()
{
    double * r;
    if (IsRowVector())
    {
        r = new double[Collumns];
        for (int i = 0; i < Collumns; i++)
            r[i] = Values[0][i];
    }
    else if (IsCollumnVector())
    {
        r = new double[Rows];
        for (int i = 0; i < Rows; i++)
            r[i] = Values[i][0];
    }
    else
        r = NULL;

    return r;
}

/*Matrix Matrix::HamardMultiplication (Matrix& m)
{
    Matrix m2(Rows, Collumns);
    if (Rows == m.GetRowCount() && Collumns == m.GetCollumnCount())
    {
        for (int i = 0; i < Rows; i++)
        {
            for (int j = 0; j < Collumns; j++)
            {
                m2.SetValue(i, j, Values[i][j] * m.GetValue(i, j));
            }
        }
    }

    return m2;
}*/

/*Matrix Matrix::KroneckerMultiplication (Matrix& m)
{
    Matrix m2(Rows * m.GetRowCount(), Collumns * m.GetCollumnCount());
    for (int r1 = 0; r1 < Rows; r1++)
    {
        for (int r2 = 0; r2 < m.GetRowCount(); r2++)
        {
            for (int c1 = 0; c1 < Collumns; c1++)
            {
                for (int c2 = 0; c2 < m.GetCollumnCount(); c2++)
                {
                    m2.AdjustValue(r1 * m.GetRowCount() + r2, c1 * m.GetCollumnCount() + c2, Values[r1][c1] * m.GetValue(r2, c2));
                }
            }
        }
    }

    return m2;
}*/

/*Matrix Matrix::CombinateRows (Matrix& m)
{
    Matrix m2(Rows, Collumns + m.GetCollumnCount());
    if (Rows == m.GetRowCount())
    {
        for (int i = 0; i < Rows; i++)
        {
            for (int j = 0; j < Collumns; j++)
                m2.SetValue(i, j, Values[i][j]);
            for (int k = Collumns; j < Collumns + m.GetCollumnCount(); j++)
                m2.SetValue(i, k, m.GetValue(i, k - Collumns));
        }
    }

    return m2;
}*/
