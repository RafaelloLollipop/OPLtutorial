int m = ... ;
int n = ... ;

range Rows = 1 .. m;
range Cols = 1 .. n ;

float A [ Rows ] [ Cols ] = ... ;
float b [ Rows ] = ... ;
float c [ Cols ] = ... ;

dvar float+ x [ Cols ] ;

maximize
sum ( j in Cols ) c [ j ] * x [ j ] ;

subject to
{
forall ( i in Rows )
ct :
sum ( j in Cols ) A [ i ] [ j ] * x [ j ] <= b [ i ] ;
}
execute {
writeln ( " Optimal value : " , cplex . getObjValue ( ) ) ;
writeln ( " Primal solution : " ) ;
write ( " x =[ " );
for ( var j in Cols )
{
write ( x [ j ] , " " ) ;
}
writeln ( " ] " ) ;

writeln ( " Dual solution : " ) ;
write ( " y =[ " );
for ( var i in Rows )
{
write ( ct [ i ] . dual , " " ) ;
}
writeln ( " ] " ) ;
}