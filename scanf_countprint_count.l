%{
#include<stdio.h>
int scan_count=0;
int print_count=0;
%}
%%
"scanf" {scan_count++;fprintf(yyout,"readf");}
"printf" {print_count++;fprintf(yyout,"writef");}
%%
int main(){
        yyin = fopen("file2.c","r");
        yyout = fopen("new.c","w");
        yylex();
        printf("The number of scanf = %d,printf = %d",scan_count,print_count);
        return 0;
}

int yywrap(){
return -1;
}

