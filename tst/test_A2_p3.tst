
gap> V:= WeylModule(3,[3,3],"A",2);
V[ 3, 3 ]
gap> W:= WeylModule(V,[6,0]);
V[ 6, 0 ]
gap> IsWeylModule(V);
true
gap> Character(SocleWeyl(W));
[ [ 0, 0 ], 1 ]
gap> Dim(W);
28
gap> Weights(W);
[ [ 6, 0 ], [ 4, 1 ], [ 5, -1 ], [ 2, 2 ], [ 3, 0 ], [ 0, 3 ], [ 4, -2 ], 
  [ 1, 1 ], [ -2, 4 ], [ 2, -1 ], [ -1, 2 ], [ -4, 5 ], [ 3, -3 ], [ 0, 0 ], 
  [ -3, 3 ], [ -6, 6 ], [ 1, -2 ], [ -2, 1 ], [ -5, 4 ], [ 2, -4 ], 
  [ -1, -1 ], [ -4, 2 ], [ 0, -3 ], [ -3, 0 ], [ 1, -5 ], [ -2, -2 ], 
  [ -1, -4 ], [ 0, -6 ] ]
gap> DominantWeights(W);
[ [ 6, 0 ], [ 4, 1 ], [ 2, 2 ], [ 3, 0 ], [ 0, 3 ], [ 1, 1 ], [ 0, 0 ] ]
gap> WeightSpaces(W);
[ [ 6, 0 ], [ 1*v0 ], [ 4, 1 ], [ y1*v0 ], [ 5, -1 ], [ y3*v0 ], [ 2, 2 ], 
  [ y1^(2)*v0 ], [ 3, 0 ], [ y1*y3*v0 ], [ 0, 3 ], [ y1^(3)*v0 ], [ 4, -2 ], 
  [ y3^(2)*v0 ], [ 1, 1 ], [ y1^(2)*y3*v0 ], [ -2, 4 ], [ y1^(4)*v0 ], 
  [ 2, -1 ], [ y1*y3^(2)*v0 ], [ -1, 2 ], [ y1^(3)*y3*v0 ], [ -4, 5 ], 
  [ y1^(5)*v0 ], [ 3, -3 ], [ y3^(3)*v0 ], [ 0, 0 ], [ y1^(2)*y3^(2)*v0 ], 
  [ -3, 3 ], [ y1^(4)*y3*v0 ], [ -6, 6 ], [ y1^(6)*v0 ], [ 1, -2 ], 
  [ y1*y3^(3)*v0 ], [ -2, 1 ], [ y1^(3)*y3^(2)*v0 ], [ -5, 4 ], 
  [ y1^(5)*y3*v0 ], [ 2, -4 ], [ y3^(4)*v0 ], [ -1, -1 ], 
  [ y1^(2)*y3^(3)*v0 ], [ -4, 2 ], [ y1^(4)*y3^(2)*v0 ], [ 0, -3 ], 
  [ y1*y3^(4)*v0 ], [ -3, 0 ], [ y1^(3)*y3^(3)*v0 ], [ 1, -5 ], 
  [ y3^(5)*v0 ], [ -2, -2 ], [ y1^(2)*y3^(4)*v0 ], [ -1, -4 ], 
  [ y1*y3^(5)*v0 ], [ 0, -6 ], [ y3^(6)*v0 ] ]
gap> DominantWeightSpaces(W);
[ [ 6, 0 ], [ 1*v0 ], [ 4, 1 ], [ y1*v0 ], [ 2, 2 ], [ y1^(2)*v0 ], [ 3, 0 ], 
  [ y1*y3*v0 ], [ 0, 3 ], [ y1^(3)*v0 ], [ 1, 1 ], [ y1^(2)*y3*v0 ], 
  [ 0, 0 ], [ y1^(2)*y3^(2)*v0 ] ]
gap> DecompositionNumbers(V);
[ [ 3, 3 ], 1, [ 1, 4 ], 1, [ 4, 1 ], 1, [ 0, 3 ], 1, [ 3, 0 ], 1, [ 1, 1 ], 
  1, [ 0, 0 ], 2 ]
gap> DecompositionNumbers(W);
[ [ 6, 0 ], 1, [ 4, 1 ], 1, [ 0, 0 ], 1 ]
gap> MaximalSubmodule(W);
22-dimensional submod of V[ 6, 0 ]
gap> Character(SimpleQuotient(W));
[ [ 6, 0 ], 1, [ 0, 3 ], 1, [ 3, -3 ], 1, [ -6, 6 ], 1, [ -3, 0 ], 1, 
  [ 0, -6 ], 1 ]
gap> m:= MaximalVectors(W);
[ 1*v0, y1*v0, y1^(2)*y3^(2)*v0 ]
gap> List(m,Weight);
[ [ 6, 0 ], [ 4, 1 ], [ 0, 0 ] ]
gap> AmbiguousMaxVecs(W);
[  ]
gap> IsAmbiguous(W);
false
gap> SocleSeries(W);
[ 1-dimensional submod of V[ 6, 0 ], 22-dimensional submod of V[ 6, 0 ], 
  28-dimensional submod of V[ 6, 0 ] ]
gap> LengthTwoQuotient(W);
27-dimensional quotient of V[ 6, 0 ]
gap> TheLieAlgebra(V);
<Lie algebra of dimension 8 over Rationals>
gap> g:= GensSocleLayers(W);
[ [ y1^(2)*y3^(2)*v0 ], [ y1*v0 ], [ 1*v0 ] ]
gap> TheCharacteristic(V);
3
gap> BasisVecs(W);
[ 1*v0, y1*v0, y3*v0, y1^(2)*v0, y1*y3*v0, y1^(3)*v0, y3^(2)*v0, 
  y1^(2)*y3*v0, y1^(4)*v0, y1*y3^(2)*v0, y1^(3)*y3*v0, y1^(5)*v0, y3^(3)*v0, 
  y1^(2)*y3^(2)*v0, y1^(4)*y3*v0, y1^(6)*v0, y1*y3^(3)*v0, y1^(3)*y3^(2)*v0, 
  y1^(5)*y3*v0, y3^(4)*v0, y1^(2)*y3^(3)*v0, y1^(4)*y3^(2)*v0, y1*y3^(4)*v0, 
  y1^(3)*y3^(3)*v0, y3^(5)*v0, y1^(2)*y3^(4)*v0, y1*y3^(5)*v0, y3^(6)*v0 ]
gap> Generator(W);
1*v0
gap> SimpleLieAlgGens(W);
[ [ x1, x2 ], [ y1, y2 ] ]
gap> IsMaximalVector(W,m[2]);
true
gap> MaximalVectors(W,[0,0]);
[ y1^(2)*y3^(2)*v0 ]
gap> MaximalVectors(W,[1,1]);
[  ]
gap> PrintSocleLayers(W);
Printing highest weights of simples in socle layers of V[ 6, 0 ]
Layer 1: [ [ 0, 0 ] ]
Layer 2: [ [ 4, 1 ] ]
Layer 3: [ [ 6, 0 ] ]
gap> LengthTwoQuotient(W,g[1]);
27-dimensional quotient of V[ 6, 0 ]
gap> LengthTwoQuotient(W,g[2]);
6-dimensional quotient of V[ 6, 0 ]
gap> WeightSpace(W,[0,0]);
[ y1^(2)*y3^(2)*v0 ]
gap> SubWeylModule(W,[]);
0-dimensional submod of V[ 6, 0 ]
gap> S:= SocleWeyl(W);
1-dimensional submod of V[ 6, 0 ]
gap> IsSubWeylModule(S);
true
gap> DecompositionNumbers(SubWeylModule(W,m[2]));
[ [ 4, 1 ], 1, [ 0, 0 ], 1 ]
gap> DecompositionNumbers(SubWeylModule(S,m[2]));
[ [ 4, 1 ], 1, [ 0, 0 ], 1 ]
gap> DecompositionNumbers(SubWeylModule(W,[m[2],m[3]]));
[ [ 4, 1 ], 1, [ 0, 0 ], 1 ]
gap> DecompositionNumbers(SubWeylModule(S,[m[2],m[3]]));
[ [ 4, 1 ], 1, [ 0, 0 ], 1 ]
gap> AmbiguousMaxVecs(S);
[  ]
gap> IsAmbiguous(S);
false
gap> MaximalVectors(S);
[ y1^(2)*y3^(2)*v0 ]
gap> Dim(S);
1
gap> Weights(S);
[ [ 0, 0 ] ]
gap> DominantWeights(S);
[ [ 0, 0 ] ]
gap> WeightSpaces(S);
[ [ 0, 0 ], [ y1^(2)*y3^(2)*v0 ] ]
gap> DominantWeightSpaces(S);
[ [ 0, 0 ], [ y1^(2)*y3^(2)*v0 ] ]
gap> Character(S);
[ [ 0, 0 ], 1 ]
gap> DecompositionNumbers(S);
[ [ 0, 0 ], 1 ]
gap> Generators(S);
[ y1^(2)*y3^(2)*v0 ]
gap> BasisVecs(S);
[ y1^(2)*y3^(2)*v0 ]
gap> AmbientWeylModule(S);
V[ 6, 0 ]
gap> WeightSpace(S,[0,0]);
[ y1^(2)*y3^(2)*v0 ]
gap> MaximalVectors(S,[0,0]);
[ y1^(2)*y3^(2)*v0 ]
gap> MaximalVectors(S,[1,0]);
[  ]
gap> IsWithin(S,m[3]);
true
gap> IsWithin(S,m[2]);
false
gap> NextSocle(S);
22-dimensional submod of V[ 6, 0 ]
gap> GensNextSocle(S);
[ y1*v0 ]
gap> LengthTwoQuotient(W,S);
27-dimensional quotient of V[ 6, 0 ]
gap> Extensions(W,S);
[ 27-dimensional quotient of V[ 6, 0 ] ]
