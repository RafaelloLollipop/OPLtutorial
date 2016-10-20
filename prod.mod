{string} Products = ... ;
{string} Factories = ... ;

float r [ Products ] = ... ;
float t [ Products ] [ Factories ] = ... ;
float c [ Factories ] = ... ;

dvar float+ x [ Products ] ;

maximize
sum ( p in Products ) r [ p ] * x [ p ] ;

subject to {
forall ( i in Factories )
sum ( p in Products ) t [ p ] [ i ] * x [ p ] <= c [ i ] ;
}