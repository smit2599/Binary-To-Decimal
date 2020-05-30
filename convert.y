%{ 
  /* Definition section */
  #include<stdio.h> 
  #include<stdlib.h> 
  void yyerror(char *s); 
%} 
%token ZERO ONE 
  
/* Rule Section */
%% 
N: L {printf("%d \n", $$);} 
L: L B {$$=$1*2+$2;} 
| B {$$=$1;} 
B:ZERO {$$=$1;} 
|ONE {$$=$1;}; 
%% 
  
int main() 
{ 
	printf("Enter binary number:\n");
	while(1){yyparse();} 
} 
  
void yyerror(char *s) 
{ 
 fprintf(stdout, "\n%s", s); 
} 
  
