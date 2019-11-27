num	[0-9]+
id	[a-zA-Z]+[0-9]*
operator	[-+/*]
relop	[<=>]+
bracket	[()]
semi	";"
com	","
line	[\n]
%%
"for"	{return fr;}
{id}	{return id;}
{num}	{return num;}
{operator}	{return op;}
{relop}	{return relop;}
{semi}	{return sm;}
{com}	{return cm;}
{line}	{return ln;}
{bracket}	{return br;}
%%
