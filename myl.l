%{
	#include<math.h>
	#include"y.tab.h"
%}
%%

[0-9]+|[0-9]*\.[0-9]+ {
	yylval.p = atof(yytext);	
	printf("An Identifier: %s (%g)\n",yytext,atof(yytext));
	return num;
	}

sin	{printf("KeyWord :	sin\n");return SIN;}
cos 	{printf("KeyWord:	cos\n");return COS;}
tan 	{printf("KeyWord:	tan\n");return TAN;}
log 	{printf("KeyWord:	log\n");return LOG;}
sqrt 	{printf("KeyWord:	sqrt\n");return SQRT;}
[\t];
\n	return 0;
.	return yytext[0];
%%
