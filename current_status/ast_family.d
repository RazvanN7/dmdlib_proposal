struct ASTCodegen
{
    public import expression;
}

struct MyAST
{
    import expression;
    import std.stdio;

    alias Expression = expression.Expression;
    class MyBinExp : expression.BinExp;
    {
        override void fun()
        {
            writeln("MyBinExp.fun");
        }
    }

    alias BinExp = MyBinExp;
    alias BinAssignExp = ?
}
