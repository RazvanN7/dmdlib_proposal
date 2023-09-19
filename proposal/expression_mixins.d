import std.stdio;

mixin template Expression_code()
{
    class Expression {}
}

mixin template BinExp_code()
{
    class BinExp : Expression
    {
        void fun()
        {
            writeln("expression.fun");
            BinExp p = new BinExp();
            Expression e = new Expression();
        }
    }
}

mixin template BinAssignExp_code()
{
    class BinAssignExp : BinExp
    {}
}

mixin template AddAssignExp_code()
{
    class AddAssignExp : BinAssignExp
    {
        override void fun()
        {
            writeln("AddAssignExp.fun");
        }
    }
}

mixin template MulAssignExp_code()
{
    class MulAssignExp : BinAssignExp
    {}
}
