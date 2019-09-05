%{
int flag=0;
%}

%%
[a-zA-Z0-9]+([+\-*/][a-zA-Z0-9]+)*=[a-zA-Z0-9]+ {flag=1;}
[a-zA-Z0-9]+=[a-zA-Z0-9]+([+\-*/][a-zA-Z0-9]+)* {flag=1;}
%%

int main()
{
        printf("enter the expression:\n");
        yylex();
        if(flag==1)
        {
                printf("Valid regular expression\n");
        }
        else
        {
                printf("Invalid expression\n");
        }
        return 0;
}

int yywrap()
{
        return -1;
}
