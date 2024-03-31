%{
int wordCount=0;
int numcount=0;
int mobile_numcount = 0; 
%}

digit [0-9]

%%
{digit}{3}(-{digit}{4}-{digit}{4})? {printf("phone number: %s\n", yytext);}
%%  
int main() { 
printf("ok1\n");  
yylex(); /* start the  analysis*/  
printf("ok2\n"); 
return 0;  
}
