gap> V:= WeylModule(2,[1,0],"A",2);
V[ 1, 0 ]
gap> W:= WeylModule(V,[1,2]);
V[ 1, 2 ]
gap> W:= WeylModule(2,[2,0],"A",2);
V[ 2, 0 ]
gap> Q:= QuotientWeylModule(SocleWeyl(W));
3-dimensional quotient of V[ 2, 0 ]
gap> W:= WeylModule(2,[2,0],"A",2);
V[ 2, 0 ]
gap> m:= MaximalVectors(W);
[ 1*v0, y1*v0 ]
gap> S:= SubWeylModule(W, m[2]);
3-dimensional submod of V[ 2, 0 ]
gap> SubWeylModule(S, m[1]);
6-dimensional submod of V[ 2, 0 ]
gap> SubWeylModule(W, m);
6-dimensional submod of V[ 2, 0 ]
gap> SubWeylModule(S, m);
6-dimensional submod of V[ 2, 0 ]
gap> W:= WeylModule(2,[2,0],"A",2);
V[ 2, 0 ]
gap> Q:= QuotientWeylModule(SocleWeyl(W));
3-dimensional quotient of V[ 2, 0 ]
gap> m:= MaximalVectors(Q);
[ 1*v0 ]
gap> S:= SubWeylModule(Q,m[1]);
3-dimensional submod of 3-dimensional quotient of V[ 2, 0 ]
gap> SubWeylModule(Q,m);
3-dimensional submod of 3-dimensional quotient of V[ 2, 0 ]
gap> V:=WeylModule(V,[4,0]);
V[ 4, 0 ]
gap> Dim(V);
15
gap> m:= MaximalVectors(V);
[ 1*v0, y1*v0 ]
gap> S:= SubWeylModule(V,m[2]);
9-dimensional submod of V[ 4, 0 ]
gap> Q:= QuotientWeylModule(S);
6-dimensional quotient of V[ 4, 0 ]
gap> mm:= MaximalVectors(Q);
[ 1*v0, y1^(2)*v0 ]
gap> T:= SubWeylModule(Q, mm[2]);
3-dimensional submod of 6-dimensional quotient of V[ 4, 0 ]
gap> BasisVecs(V);
[ 1*v0, y1*v0, y3*v0, y1^(2)*v0, y1*y3*v0, y1^(3)*v0, y3^(2)*v0, 
  y1^(2)*y3*v0, y1^(4)*v0, y1*y3^(2)*v0, y1^(3)*y3*v0, y3^(3)*v0, 
  y1^(2)*y3^(2)*v0, y1*y3^(3)*v0, y3^(4)*v0 ]
gap> BasisVecs(S);
[ y1*v0, y3*v0, y1*y3*v0, y1^(3)*v0, y1*y3^(2)*v0, y1^(2)*y3*v0, y3^(3)*v0, 
  y1^(3)*y3*v0, y1*y3^(3)*v0 ]
gap> BasisVecs(Q);
[ 1*v0, y1^(2)*v0, y3^(2)*v0, y1^(4)*v0, y1^(2)*y3^(2)*v0, y3^(4)*v0 ]
gap> BasisVecs(T);
[ y1^(2)*v0, y3^(2)*v0, y1^(2)*y3^(2)*v0 ]
gap> Character(V);
[ [ 4, 0 ], 1, [ 2, 1 ], 1, [ 3, -1 ], 1, [ 0, 2 ], 1, [ 1, 0 ], 1, 
  [ -2, 3 ], 1, [ 2, -2 ], 1, [ -1, 1 ], 1, [ -4, 4 ], 1, [ 0, -1 ], 1, 
  [ -3, 2 ], 1, [ 1, -3 ], 1, [ -2, 0 ], 1, [ -1, -2 ], 1, [ 0, -4 ], 1 ]
gap> Character(Q);
[ [ 4, 0 ], 1, [ 0, 2 ], 1, [ 2, -2 ], 1, [ -4, 4 ], 1, [ -2, 0 ], 1, 
  [ 0, -4 ], 1 ]
gap> Character(S);
[ [ 2, 1 ], 1, [ 3, -1 ], 1, [ 1, 0 ], 1, [ -2, 3 ], 1, [ 0, -1 ], 1, 
  [ -1, 1 ], 1, [ 1, -3 ], 1, [ -3, 2 ], 1, [ -1, -2 ], 1 ]
gap> Character(T);
[ [ 0, 2 ], 1, [ 2, -2 ], 1, [ -2, 0 ], 1 ]
gap> DecompositionNumbers(V);
[ [ 4, 0 ], 1, [ 2, 1 ], 1, [ 0, 2 ], 1 ]
gap> DecompositionNumbers(Q);
[ [ 4, 0 ], 1, [ 0, 2 ], 1 ]
gap> DecompositionNumbers(S);
[ [ 2, 1 ], 1 ]
gap> DecompositionNumbers(T);
[ [ 0, 2 ], 1 ]
gap> Dim(V);
15
gap> Dim(Q);
6
gap> Dim(S);
9
gap> Dim(T);
3
gap> DominantWeights(V);
[ [ 4, 0 ], [ 2, 1 ], [ 0, 2 ], [ 1, 0 ] ]
gap> DominantWeights(Q);
[ [ 4, 0 ], [ 0, 2 ] ]
gap> DominantWeights(S);
[ [ 2, 1 ], [ 1, 0 ] ]
gap> DominantWeights(T);
[ [ 0, 2 ] ]
gap> DominantWeightSpaces(V);
[ [ 4, 0 ], [ 1*v0 ], [ 2, 1 ], [ y1*v0 ], [ 0, 2 ], [ y1^(2)*v0 ], [ 1, 0 ], 
  [ y1*y3*v0 ] ]
gap> DominantWeightSpaces(Q);
[ [ 4, 0 ], [ 1*v0 ], [ 0, 2 ], [ y1^(2)*v0 ] ]
gap> DominantWeightSpaces(S);
[ [ 2, 1 ], [ y1*v0 ], [ 1, 0 ], [ y1*y3*v0 ] ]
gap> DominantWeightSpaces(T);
[ [ 0, 2 ], [ y1^(2)*v0 ] ]
gap> Weights(V);
[ [ 4, 0 ], [ 2, 1 ], [ 3, -1 ], [ 0, 2 ], [ 1, 0 ], [ -2, 3 ], [ 2, -2 ], 
  [ -1, 1 ], [ -4, 4 ], [ 0, -1 ], [ -3, 2 ], [ 1, -3 ], [ -2, 0 ], 
  [ -1, -2 ], [ 0, -4 ] ]
gap> Weights(Q);
[ [ 4, 0 ], [ 0, 2 ], [ 2, -2 ], [ -4, 4 ], [ -2, 0 ], [ 0, -4 ] ]
gap> Weights(S);
[ [ 2, 1 ], [ 3, -1 ], [ 1, 0 ], [ -2, 3 ], [ 0, -1 ], [ -1, 1 ], [ 1, -3 ], 
  [ -3, 2 ], [ -1, -2 ] ]
gap> Weights(T);
[ [ 0, 2 ], [ 2, -2 ], [ -2, 0 ] ]
gap> WeightSpaces(V);
[ [ 4, 0 ], [ 1*v0 ], [ 2, 1 ], [ y1*v0 ], [ 3, -1 ], [ y3*v0 ], [ 0, 2 ], 
  [ y1^(2)*v0 ], [ 1, 0 ], [ y1*y3*v0 ], [ -2, 3 ], [ y1^(3)*v0 ], [ 2, -2 ], 
  [ y3^(2)*v0 ], [ -1, 1 ], [ y1^(2)*y3*v0 ], [ -4, 4 ], [ y1^(4)*v0 ], 
  [ 0, -1 ], [ y1*y3^(2)*v0 ], [ -3, 2 ], [ y1^(3)*y3*v0 ], [ 1, -3 ], 
  [ y3^(3)*v0 ], [ -2, 0 ], [ y1^(2)*y3^(2)*v0 ], [ -1, -2 ], 
  [ y1*y3^(3)*v0 ], [ 0, -4 ], [ y3^(4)*v0 ] ]
gap> WeightSpaces(Q);
[ [ 4, 0 ], [ 1*v0 ], [ 0, 2 ], [ y1^(2)*v0 ], [ 2, -2 ], [ y3^(2)*v0 ], 
  [ -4, 4 ], [ y1^(4)*v0 ], [ -2, 0 ], [ y1^(2)*y3^(2)*v0 ], [ 0, -4 ], 
  [ y3^(4)*v0 ] ]
gap> WeightSpaces(S);
[ [ 2, 1 ], [ y1*v0 ], [ 3, -1 ], [ y3*v0 ], [ 1, 0 ], [ y1*y3*v0 ], 
  [ -2, 3 ], [ y1^(3)*v0 ], [ 0, -1 ], [ y1*y3^(2)*v0 ], [ -1, 1 ], 
  [ y1^(2)*y3*v0 ], [ 1, -3 ], [ y3^(3)*v0 ], [ -3, 2 ], [ y1^(3)*y3*v0 ], 
  [ -1, -2 ], [ y1*y3^(3)*v0 ] ]
gap> WeightSpaces(T);
[ [ 0, 2 ], [ y1^(2)*v0 ], [ 2, -2 ], [ y3^(2)*v0 ], [ -2, 0 ], 
  [ y1^(2)*y3^(2)*v0 ] ]
gap> WeightSpace(V, [2,1]);
[ y1*v0 ]
gap> WeightSpace(Q, [2,1]);
[  ]
gap> WeightSpace(S, [2,1]);
[ y1*v0 ]
gap> WeightSpace(T, [2,-2]);
[ y3^(2)*v0 ]
gap> TheCharacteristic(V);
2
gap> TheCharacteristic(Q);
2
gap> TheCharacteristic(S);
2
gap> TheCharacteristic(T);
2
gap> TheLieAlgebra(V);
<Lie algebra of dimension 8 over Rationals>
gap> TheLieAlgebra(Q);
<Lie algebra of dimension 8 over Rationals>
gap> TheLieAlgebra(S);
<Lie algebra of dimension 8 over Rationals>
gap> TheLieAlgebra(T);
<Lie algebra of dimension 8 over Rationals>
gap> MaximalVectors(V);
[ 1*v0, y1*v0 ]
gap> m:= MaximalVectors(V);
[ 1*v0, y1*v0 ]
gap> List(m, Weight);
[ [ 4, 0 ], [ 2, 1 ] ]
gap> MaximalVectors(V, [2,1]);
[ y1*v0 ]
gap> m:= MaximalVectors(Q);
[ 1*v0, y1^(2)*v0 ]
gap> List(m, Weight);
[ [ 4, 0 ], [ 0, 2 ] ]
gap> MaximalVectors(Q, [0,2]);
[ y1^(2)*v0 ]
gap> m:= MaximalVectors(S);
[ y1*v0 ]
gap> List(m, Weight);
[ [ 2, 1 ] ]
gap> MaximalVectors(S, [2,1]);
[ y1*v0 ]
gap> V:= WeylModule(2,[3,0],"G",2);
V[ 3, 0 ]
gap> IsAmbiguous(V);
true
gap> V:= WeylModule(2,[3,0],"G",2);
V[ 3, 0 ]
gap> AmbiguousMaxVecs(V);
[ y1*y3*v0, y4*v0 ]
gap> V:= WeylModule(2,[3,0],"G",2);
V[ 3, 0 ]
gap> Generator(V);
1*v0
gap> V:= WeylModule(2,[3,0],"G",2);
V[ 3, 0 ]
gap> GensSocleLayers(V);
[ [ y1*y4*v0, y1*y3*y4*v0+y1*y6*v0+y3*y5*v0, 
      y1*y4*y6*v0+y3*y4*y5*v0+y4^(3)*v0 ], [ y4*v0, y1^(2)*y3*y6*v0 ], 
  [ y1*y3*v0 ], [ y5*y6*v0 ], [ y1*y6*v0+y4^(2)*v0 ], [ 1*v0 ] ]
gap> PrintSocleLayers(V);
Printing highest weights of simples in socle layers of V[ 3, 0 ]
Layer 1: [ [ 0, 1 ], [ 1, 0 ], [ 0, 0 ] ]
Layer 2: [ [ 2, 0 ], [ 0, 0 ] ]
Layer 3: [ [ 2, 0 ] ]
Layer 4: [ [ 0, 0 ] ]
Layer 5: [ [ 1, 0 ] ]
Layer 6: [ [ 3, 0 ] ]
gap> V:= WeylModule(2,[3,0],"G",2);
V[ 3, 0 ]
gap> SocleSeries(V);
[ 21-dimensional submod of V[ 3, 0 ], 28-dimensional submod of V[ 3, 0 ], 
  34-dimensional submod of V[ 3, 0 ], 35-dimensional submod of V[ 3, 0 ], 
  41-dimensional submod of V[ 3, 0 ], 77-dimensional submod of V[ 3, 0 ] ]
gap> V:= WeylModule(2,[3,0],"G",2);
V[ 3, 0 ]
gap> SocleWeyl(V);
21-dimensional submod of V[ 3, 0 ]
gap> V:= WeylModule(3,[3,0],"A",2);
V[ 3, 0 ]
gap> MaximalSubmodule(V);
7-dimensional submod of V[ 3, 0 ]
gap> V:= WeylModule(3,[3,0],"A",2);
V[ 3, 0 ]
gap> Q:= SimpleQuotient(V);
3-dimensional quotient of V[ 3, 0 ]
gap> AmbientWeylModule(Q);
V[ 3, 0 ]
gap> DefiningKernel(Q);
7-dimensional submod of V[ 3, 0 ]
gap> V:= WeylModule(3,[3,0],"A",2);
V[ 3, 0 ]
gap> S:= MaximalSubmodule(V);
7-dimensional submod of V[ 3, 0 ]
gap> AmbientWeylModule(S);
V[ 3, 0 ]
gap> Generators(S);
[ y1*v0 ]
gap> V:= WeylModule(3,[3,0],"A",2);
V[ 3, 0 ]
gap> S:= MaximalSubmodule(V);
7-dimensional submod of V[ 3, 0 ]
gap> g:= Generators(S);
[ y1*v0 ]
gap> IsWithin(S, g[1]);
true
gap> W:= WeylModule(2,[3,0],"G",2);
V[ 3, 0 ]
gap> g:= Generators(SocleWeyl(W)); 
[ y1*y4*v0, y1*y3*y4*v0+y1*y6*v0+y3*y5*v0, y1*y4*y6*v0+y3*y4*y5*v0+y4^(3)*v0 ]
gap> S:= SubWeylModule(W, g[1]);
14-dimensional submod of V[ 3, 0 ]
gap> T:= NextSocle(S);
21-dimensional submod of V[ 3, 0 ]
gap> DecompositionNumbers(T);
[ [ 0, 1 ], 1, [ 1, 0 ], 1, [ 0, 0 ], 1 ]
gap> g:= GensNextSocle(S);
[ y1*y6*v0+y3*y5*v0, y4^(3)*v0 ]
gap> List(g, Weight);
[ [ 1, 0 ], [ 0, 0 ] ]
gap> W:= WeylModule(2,[3,0],"G",2);
V[ 3, 0 ]
gap> ss:= SocleSeries(W);
[ 21-dimensional submod of V[ 3, 0 ], 28-dimensional submod of V[ 3, 0 ], 
  34-dimensional submod of V[ 3, 0 ], 35-dimensional submod of V[ 3, 0 ], 
  41-dimensional submod of V[ 3, 0 ], 77-dimensional submod of V[ 3, 0 ] ]
gap> amv:= AmbiguousMaxVecs(W);
[ y1*y3*v0, y4*v0 ]
gap> Q1:= SocleLengthTwoQuotient(ss[4]);
42-dimensional quotient of V[ 3, 0 ]
gap> PrintSocleLayers(Q1);
Printing highest weights of simples in socle layers of 
42-dimensional quotient of V[ 3, 0 ]
Layer 1: [ [ 1, 0 ] ]
Layer 2: [ [ 3, 0 ] ]
gap> Q2:= SocleLengthTwoQuotient(SubWeylModule(W,amv[1]+amv[2]));
48-dimensional quotient of V[ 3, 0 ]
gap> PrintSocleLayers(Q2);
Printing highest weights of simples in socle layers of 
48-dimensional quotient of V[ 3, 0 ]
Layer 1: [ [ 2, 0 ], [ 1, 0 ] ]
Layer 2: [ [ 3, 0 ] ]
gap> Q:= TwoFactorQuotientsContaining(SubWeylModule(W,amv[1]+amv[2]));
[ 42-dimensional quotient of V[ 3, 0 ], 42-dimensional quotient of V[ 3, 0 ] ]
gap> PrintSocleLayers(Q[1]);
Printing highest weights of simples in socle layers of 
42-dimensional quotient of V[ 3, 0 ]
Layer 1: [ [ 1, 0 ] ]
Layer 2: [ [ 3, 0 ] ]
gap> PrintSocleLayers(Q[2]);
Printing highest weights of simples in socle layers of 
42-dimensional quotient of V[ 3, 0 ]
Layer 1: [ [ 2, 0 ] ]
Layer 2: [ [ 3, 0 ] ]
gap> W:= WeylModule(2,[3,0],"G",2);
V[ 3, 0 ]
gap> m:= AmbiguousMaxVecs(W); List(m, Weight);
[ y1*y3*v0, y4*v0 ]
[ [ 2, 0 ], [ 2, 0 ] ]
gap> Q:= QuotientWeylModule(SubWeylModule(W,m[1]));
64-dimensional quotient of V[ 3, 0 ]
gap> subQ:= SubWeylModule(Q, m[2]);
21-dimensional submod of 64-dimensional quotient of V[ 3, 0 ]
gap> AmbientQuotient(subQ);
64-dimensional quotient of V[ 3, 0 ]
gap> Generators(subQ);
[ y4*v0 ]
gap> IsWithin(subQ,m[2]);
true
gap> IsWithin(subQ, Generator(Q));
false
gap> DecompositionNumbers(subQ);
[ [ 2, 0 ], 1, [ 0, 1 ], 1, [ 0, 0 ], 1 ]
gap> N:= NextSocle(subQ);
22-dimensional submod of 64-dimensional quotient of V[ 3, 0 ]
gap> DecompositionNumbers(N);
[ [ 2, 0 ], 1, [ 0, 1 ], 1, [ 0, 0 ], 2 ]
gap> V:= WeylModule(3,[3,3],"A",2);
V[ 3, 3 ]
gap> m:= MaximalVectors(V);
[ 1*v0, y1*v0, y2*v0, y1^(2)*y2*v0, -1*y1*y2^(2)*v0+y2*y3*v0, 
  y1*y2*y3*v0+y1^(2)*y2^(2)*v0 ]
gap> Weight(m[2]);
[ 1, 4 ]
gap> List(m,Weight);
[ [ 3, 3 ], [ 1, 4 ], [ 4, 1 ], [ 0, 3 ], [ 3, 0 ], [ 1, 1 ] ]
gap> V:= WeylModule(2,[2,0],"A",2);
V[ 2, 0 ]
gap> ch:= ProductCharacter(Character(V),Character(V));
[ [ 4, 0 ], 1, [ 2, 1 ], 2, [ 3, -1 ], 2, [ 0, 2 ], 3, [ 1, 0 ], 4, 
  [ 2, -2 ], 3, [ -2, 3 ], 2, [ -1, 1 ], 4, [ 0, -1 ], 4, [ 1, -3 ], 2, 
  [ -4, 4 ], 1, [ -3, 2 ], 2, [ -2, 0 ], 3, [ -1, -2 ], 2, [ 0, -4 ], 1 ]
gap> DecomposeCharacter(ch,2,"A",2);
[ [ 4, 0 ], 1, [ 2, 1 ], 2, [ 0, 2 ], 3, [ 1, 0 ], 2 ]
gap> DifferenceCharacter(Character(V),Character(V));
[  ]
gap> V:= WeylModule(2,[2,0],"A",2);
V[ 2, 0 ]
gap> ch:= ProductCharacter(Character(V),Character(V));
[ [ 4, 0 ], 1, [ 2, 1 ], 2, [ 3, -1 ], 2, [ 0, 2 ], 3, [ 1, 0 ], 4, 
  [ 2, -2 ], 3, [ -2, 3 ], 2, [ -1, 1 ], 4, [ 0, -1 ], 4, [ 1, -3 ], 2, 
  [ -4, 4 ], 1, [ -3, 2 ], 2, [ -2, 0 ], 3, [ -1, -2 ], 2, [ 0, -4 ], 1 ]
gap> SimpleCharacter(2,[2,0],"A",2);
[ [ 2, 0 ], 1, [ -2, 2 ], 1, [ 0, -2 ], 1 ]
gap> V:= WeylModule(2,[2,0],"A",2);
V[ 2, 0 ]
gap> Character(SimpleQuotient(V));
[ [ 2, 0 ], 1, [ -2, 2 ], 1, [ 0, -2 ], 1 ]
gap> CompositionToWeight([1,2,0,1]);
[ -1, 2, -1 ]
gap> WeightToComposition(4,[-1, 2, -1]);
[ 1, 2, 0, 1 ]
gap> WeightToComposition(8,[-1, 2, -1]);
[ 2, 3, 1, 2 ]
gap> WeightToComposition(6,[-1, 2, -1]);
fail
gap> AllPartitions(5);
[ [ 5 ], [ 4, 1 ], [ 3, 2 ], [ 3, 1, 1 ], [ 2, 2, 1 ], [ 2, 1, 1, 1 ], 
  [ 1, 1, 1, 1, 1 ] ]
gap> BoundedPartitions(5,3,2);
[ [ 2, 1, 0, 0, 0 ], [ 1, 1, 1, 0, 0 ] ]
gap> BoundedPartitions(5,3,3);
[ [ 3, 0, 0, 0, 0 ], [ 2, 1, 0, 0, 0 ], [ 1, 1, 1, 0, 0 ] ]
gap> BoundedPartitions(5,3);
[ [ 3, 0, 0, 0, 0 ], [ 2, 1, 0, 0, 0 ], [ 1, 1, 1, 0, 0 ] ]
gap> Conjugate([4]);
[ 1, 1, 1, 1 ]
gap> Conjugate([2,1,1,1]);
[ 4, 1 ]
gap> pRegular(3,[3,1,1]);
true
gap> pRegular(2,[3,1,1]);
false
gap> pRegularPartitions(3,5);
[ [ 4, 1 ], [ 3, 1, 1 ], [ 5 ], [ 2, 2, 1 ], [ 3, 2 ] ]
gap> pRegularPartitions(2,5);
[ [ 3, 2 ], [ 4, 1 ], [ 5 ] ]
gap> pRestricted(3,[3,1,1]);
true
gap> pRestricted(2,[3,1]);
false
gap> pRestrictedPartitions(3,5);
[ [ 3, 2 ], [ 3, 1, 1 ], [ 2, 2, 1 ], [ 2, 1, 1, 1 ], [ 1, 1, 1, 1, 1 ] ]
gap> pRestrictedPartitions(2,5);
[ [ 2, 2, 1 ], [ 2, 1, 1, 1 ], [ 1, 1, 1, 1, 1 ] ]
gap> Mullineux(2,[1,1,1]);
p-singular!
gap> Mullineux(2,[3]);
[ 3 ]
gap> Mullineux(3,[3]);
[ 2, 1 ]
gap> Mullineux(3,[2,1]);
[ 3 ]
gap> V:= SchurAlgebraWeylModule(3,[1,1,0]);
Schur algebra module V[ 1, 1, 0 ]
gap> SchurAlgebraDecompositionMatrix(3,4,3);
[ [ 1, 1, 0 ], [ 0, 1, 1 ], [ 0, 0, 1 ] ]
gap> BoundedPartitions(4,3);
[ [ 3, 0, 0, 0 ], [ 2, 1, 0, 0 ], [ 1, 1, 1, 0 ] ]
gap> SymmetricGroupDecompositionNumbers(2,[2,1,1]);
[ [ 2, 1, 1 ], 1, [ 1, 1, 1, 1 ], 1 ]
gap> SymmetricGroupDecompositionMatrix(2,4);
[ [ 0, 1 ], [ 1, 1 ], [ 1, 0 ], [ 1, 1 ], [ 0, 1 ] ]
gap> AllPartitions(4);
[ [ 4 ], [ 3, 1 ], [ 2, 2 ], [ 2, 1, 1 ], [ 1, 1, 1, 1 ] ]
gap> pRestrictedPartitions(2,4);
[ [ 2, 1, 1 ], [ 1, 1, 1, 1 ] ]
