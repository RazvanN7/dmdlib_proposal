void main()
{
    import parser;
    import ast_family;

    auto p = new Parser!ASTCodegen();
    p.fun();
}
