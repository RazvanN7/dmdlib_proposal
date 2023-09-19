struct ASTCodegen
{
    public import expression;
}

struct MyAST
{
    import expression_mixins;
    import std.stdio;

    mixin Expression_code!();
    mixin BinExp_code!() t;
    class MyBinExp : t.BinExp
    {
        override void fun()
        {
            import std.stdio;
            writeln("MyBinExp.fun");
        }
    }

    alias BinExp = MyBinExp;
    mixin BinAssignExp_code!();
    mixin AddAssignExp_code!();
    mixin MulAssignExp_code!();
}
