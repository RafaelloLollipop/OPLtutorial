dvar float x ;
dvar float y ;

minimize
4*x - 2*y ;

subject to {
x - y >= 1 ;
x >= 0;
}