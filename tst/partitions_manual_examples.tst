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
