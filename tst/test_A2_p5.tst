gap> V:= WeylModule(5,[5,5],"A",2);
V[ 5, 5 ]
gap> W:= WeylModule(V,[1,1]);
V[ 1, 1 ]
gap> Character(W);
[ [ 1, 1 ], 1, [ -1, 2 ], 1, [ 2, -1 ], 1, [ 0, 0 ], 2, [ -2, 1 ], 1, 
  [ 1, -2 ], 1, [ -1, -1 ], 1 ]
gap> Dim(W);
8
gap> Weights(W);
[ [ 1, 1 ], [ -1, 2 ], [ 2, -1 ], [ 0, 0 ], [ -2, 1 ], [ 1, -2 ], [ -1, -1 ] ]
gap> DominantWeights(W);
[ [ 1, 1 ], [ 0, 0 ] ]
gap> WeightSpaces(W);
[ [ 1, 1 ], [ 1*v0 ], [ -1, 2 ], [ y1*v0 ], [ 2, -1 ], [ y2*v0 ], [ 0, 0 ], 
  [ y1*y2*v0, y3*v0 ], [ -2, 1 ], [ y1*y3*v0 ], [ 1, -2 ], [ y2*y3*v0 ], 
  [ -1, -1 ], [ y3^(2)*v0 ] ]
gap> DominantWeightSpaces(W);
[ [ 1, 1 ], [ 1*v0 ], [ 0, 0 ], [ y1*y2*v0, y3*v0 ] ]
gap> DecompositionNumbers(V);
[ [ 5, 5 ], 1, [ 3, 6 ], 1, [ 6, 3 ], 1, [ 2, 5 ], 1, [ 5, 2 ], 1, [ 3, 3 ], 
  1, [ 0, 0 ], 1 ]
gap> DecompositionNumbers(W);
[ [ 1, 1 ], 1 ]
gap> MaximalSubmodule(W);
0-dimensional submod of V[ 1, 1 ]
gap> Character(SimpleQuotient(V));
[ [ 5, 5 ], 1, [ -5, 10 ], 1, [ 10, -5 ], 1, [ 0, 0 ], 2, [ -10, 5 ], 1, 
  [ 5, -10 ], 1, [ -5, -5 ], 1 ]
gap> m:= MaximalVectors(V);
[ 1*v0, y1*v0, y2*v0, y1^(2)*y2*v0, -1*y1*y2^(2)*v0+y2*y3*v0, 
  2*y1*y2*y3*v0+y1^(2)*y2^(2)*v0 ]
gap> List(m,Weight);
[ [ 5, 5 ], [ 3, 6 ], [ 6, 3 ], [ 2, 5 ], [ 5, 2 ], [ 3, 3 ] ]
gap> AmbiguousMaxVecs(V);
[  ]
gap> IsAmbiguous(V);
false
gap> SocleSeries(V);
[ 63-dimensional submod of V[ 5, 5 ], 100-dimensional submod of V[ 5, 5 ], 
  208-dimensional submod of V[ 5, 5 ], 216-dimensional submod of V[ 5, 5 ] ]
gap> LengthTwoQuotient(V);
116-dimensional quotient of V[ 5, 5 ]
gap> TheLieAlgebra(V);
<Lie algebra of dimension 8 over Rationals>
gap> g:= GensSocleLayers(V);
[ [ 2*y1*y2*y3*v0+y1^(2)*y2^(2)*v0 ], 
  [ y1^(2)*y2*v0, -1*y1*y2^(2)*v0+y2*y3*v0, y1*y2*y3^(4)*v0 ], 
  [ y1*v0, y2*v0 ], [ 1*v0 ] ]
gap> TheCharacteristic(V);
5
gap> BasisVecs(W);
[ 1*v0, y1*v0, y2*v0, y1*y2*v0, y3*v0, y1*y3*v0, y2*y3*v0, y3^(2)*v0 ]
gap> Generator(W);
1*v0
gap> SimpleLieAlgGens(W);
[ [ x1, x2 ], [ y1, y2 ] ]
gap> IsMaximalVector(V,m[2]);
true
gap> MaximalVectors(V,[0,0]);
[  ]
gap> MaximalVectors(V,[3,3]);
[ 2*y1*y2*y3*v0+y1^(2)*y2^(2)*v0 ]
gap> PrintSocleLayers(V);
Printing highest weights of simples in socle layers of V[ 5, 5 ]
Layer 1: [ [ 3, 3 ] ]
Layer 2: [ [ 2, 5 ], [ 5, 2 ], [ 0, 0 ] ]
Layer 3: [ [ 3, 6 ], [ 6, 3 ] ]
Layer 4: [ [ 5, 5 ] ]
gap> LengthTwoQuotient(V,g[1]);
116-dimensional quotient of V[ 5, 5 ]
gap> LengthTwoQuotient(V,g[2]);
116-dimensional quotient of V[ 5, 5 ]
gap> WeightSpace(W,[0,0]);
[ y1*y2*v0, y3*v0 ]
gap> SubWeylModule(V,[]);
0-dimensional submod of V[ 5, 5 ]