void main()
{
    import parser;
    import ast_family;

    auto p = new Parser!MyAST();
    p.fun();
}
