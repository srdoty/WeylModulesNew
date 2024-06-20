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
