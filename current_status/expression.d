import std.stdio;

class Expression {}

class BinExp : Expression
{
    void fun()
    {
        writeln("expression.fun");
        BinExp p = new BinExp();
        Expression e = new Expression();
    }
}

class BinAssignExp : BinExp
{}

class AddAssignExp : BinAssignExp
{
    override void fun()
    {
        writeln("AddAssignExp.fun");
    }
}


class MulAssignExp : BinAssignExp
{}
