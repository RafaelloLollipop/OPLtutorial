int n = 10;
range N = 0 .. n-1;

dvar boolean x [ N ] [ N ] ;

minimize 0 ;

subject to
{
forall ( i in N )
sum ( j in N ) x [ i ] [ j ] == 1 ;
forall ( i in N , j in N )
sum ( k in N ) x [ k ] [ i]-j <= n*(1-x [ i ] [ j ] ) ;

forall ( i in N , j in N )
sum ( k in N ) x [ k ] [ i]-j >= n *( x [ i ] [ j ] -1);
}

execute {
for ( var i in N )
{
for ( var j in N )
{
if ( x [ i ] [ j]==1)
{
write ( j , " " ) ;
}
}
}
writeln ( ) ;
}