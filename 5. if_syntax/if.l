num	[0-9]+
id	[a-zA-Z]+[0-9]*
operator	[-+/*]
relop	[<=>]+
bracket	[()]
logicalopertor	[|&]+
semi	";"
line	[\n]
paranthesis	[{}]
%%
"if"	{return fi;}
"else"	{return es;}
{id}	{return id;}
{num}	{return num;}
{operator}	{return op;}
{relop}	{return relop;}
{logicalopertor}	{return logop;}
{line} 	{return ln;}
{bracket}	{return br;}
{paranthesis}	{return pr;}
%%
