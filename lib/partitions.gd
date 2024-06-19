#############################################################################
##
#W  partitions.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains declarations related to partition notation in Type A.
##  It is used by the Schur algebra functions.
##
#############################################################################


#! @ChapterInfo Schur Algebras, Partitions
#! @Group CompositionToWeight
#! @Returns a list (a weight)
#! @Arguments mu
#! @Description
#! This converts the given composition <A>mu</A> into a weight by taking
#! successive differences of its parts.
#! @BeginExampleSession
#! gap> CompositionToWeight([1,2,0,1]);
#! [ -1, 2, -1 ]
#! @EndExampleSession
DeclareOperation("CompositionToWeight", [IsList]);

#! @ChapterInfo Schur Algebras, Partitions
#! @Group WeightToComposition
#! @Returns a list (a composition) or <K>fail</K>
#! @Arguments r,wt
#! @Description
#! This converts the given weight <A>wt</A> into a composition of 
#! degree <A>r</A>. Without degree information, this function is ill
#! defined. Returns <K>fail</K> if the operation is impossible.
#! @BeginExampleSession
#! gap> WeightToComposition(4,[-1, 2, -1]);
#! [ 1, 2, 0, 1 ]
#! gap> WeightToComposition(8,[-1, 2, -1]);
#! [ 2, 3, 1, 2 ]
#! gap> WeightToComposition(6,[-1, 2, -1]);
#! fail
#! @EndExampleSession
DeclareOperation("WeightToComposition", [IsInt, IsList]);


#! @ChapterInfo Schur Algebras, Partitions
#! @Group AllPartitions
#! @Returns a list of partitions
#! @Arguments n
#! @Description
#! Lists all the partitions of <A>n</A>. Note that &GAP;
#! has a built-in Partitions function that also gives all 
#! the partitions of <A>n</A>, but with a different ordering.
#! @BeginExampleSession
#! gap> AllPartitions(5);
#! [ [ 5 ], [ 4, 1 ], [ 3, 2 ], [ 3, 1, 1 ], [ 2, 2, 1 ], [ 2, 1, 1, 1 ], 
#!   [ 1, 1, 1, 1, 1 ] ]
#! @EndExampleSession
DeclareOperation("AllPartitions", [IsInt]);


#! @ChapterInfo Schur Algebras, Partitions
#! @Group BoundedPartitions
#! @Returns a list of partitions
#! @Arguments n,r,s
#! @Description
#! Returns a list of <A>n</A> part partitions of degree <A>r</A> such that
#! each part lies in the closed interval [0,<A>s</A>].
DeclareOperation("BoundedPartitions", [IsInt, IsInt, IsInt]);

#! @ChapterInfo Schur Algebras, Partitions
#! @Group BoundedPartitions
#! @Returns a list of partitions
#! @Arguments n,r
#! @Description
#! The second form returns a list of <A>n</A> part partitions of 
#! degree <A>r</A>. 
#! Note that `BoundedPartitions(n,r)` is equivalent 
#! to `BoundedPartitions(n,r,r)`.
#! @BeginExampleSession
#! gap> BoundedPartitions(5,3,2);
#! [ [ 2, 1, 0, 0, 0 ], [ 1, 1, 1, 0, 0 ] ]
#! gap> BoundedPartitions(5,3,3);
#! [ [ 3, 0, 0, 0, 0 ], [ 2, 1, 0, 0, 0 ], [ 1, 1, 1, 0, 0 ] ]
#! gap> BoundedPartitions(5,3);
#! [ [ 3, 0, 0, 0, 0 ], [ 2, 1, 0, 0, 0 ], [ 1, 1, 1, 0, 0 ] ]
#! @EndExampleSession
DeclareOperation("BoundedPartitions", [IsInt, IsInt]);


#! @ChapterInfo Schur Algebras, Partitions
#! @Group Conjugate
#! @Returns a list (a partition)
#! @Arguments ptn
#! @Description
#! Returns the conjugate partition of <A>ptn</A>.
#! @BeginExampleSession
#! gap> Conjugate([4]);
#! [ 1, 1, 1, 1 ]
#! gap> Conjugate([2,1,1,1]);
#! [ 4, 1 ]
#! @EndExampleSession
DeclareOperation("Conjugate", [IsList]);

#! @ChapterInfo Schur Algebras, Partitions
#! @Group pRegular
#! @Returns true or false
#! @Arguments p,ptn
#! @Description
#! Returns true if and only if the given partition <A>ptn</A> 
#! is <A>p</A>-regular.
#! @BeginExampleSession
#! gap> pRegular(3,[3,1,1]);
#! true
#! gap> pRegular(2,[3,1,1]);
#! false
#! @EndExampleSession
DeclareOperation("pRegular", [IsPosInt, IsList]);

#! @ChapterInfo Schur Algebras, Partitions
#! @Group pRegularPartitions
#! @Returns a list
#! @Arguments p,n
#! @Description
#! Returns a list of all <A>p</A>-regular partitions of <A>n</A>.
#! @BeginExampleSession
#! gap> pRegularPartitions(3,5);
#! [ [ 4, 1 ], [ 3, 1, 1 ], [ 5 ], [ 2, 2, 1 ], [ 3, 2 ] ]
#! gap> pRegularPartitions(2,5);
#! [ [ 3, 2 ], [ 4, 1 ], [ 5 ] ]
#! @EndExampleSession
DeclareOperation("pRegularPartitions", [IsPosInt, IsPosInt]);


#! @ChapterInfo Schur Algebras, Partitions
#! @Group pRestricted
#! @Returns true or false
#! @Arguments p,ptn
#! @Description
#! Returns true if and only if the given partition <A>ptn</A> 
#! is <A>p</A>-restricted.
#! @BeginExampleSession
#! gap> pRestricted(3,[3,1,1]);
#! true
#! gap> pRestricted(2,[3,1]);
#! false
#! @EndExampleSession
DeclareOperation("pRestricted", [IsPosInt, IsList]);

#! @ChapterInfo Schur Algebras, Partitions
#! @Group pRestrictedPartitions
#! @Returns a list
#! @Arguments p,n
#! @Description
#! Returns a list of all <A>p</A>-restricted partitions of <A>n</A>.
#! @BeginExampleSession
#! gap> pRestrictedPartitions(3,5);
#! [ [ 3, 2 ], [ 3, 1, 1 ], [ 2, 2, 1 ], [ 2, 1, 1, 1 ], [ 1, 1, 1, 1, 1 ] ]
#! gap> pRestrictedPartitions(2,5);
#! [ [ 2, 2, 1 ], [ 2, 1, 1, 1 ], [ 1, 1, 1, 1, 1 ] ]
#! @EndExampleSession
DeclareOperation("pRestrictedPartitions", [IsInt, IsInt]);



#! @ChapterInfo Schur Algebras, Partitions
#! @Group Mullineux
#! @Returns a list
#! @Arguments p,mu
#! @Description
#! Applies the Mullineux map to the partition <A>mu</A> 
#! in characteristic <A>p</A>.
#! @BeginExampleSession
#! gap> Mullineux(2,[1,1,1]);
#! e-singular!
#! gap> Mullineux(2,[3]);
#! [ 3 ]
#! gap> Mullineux(3,[3]);
#! [ 2, 1 ]
#! gap> Mullineux(3,[2,1]);
#! [ 3 ]
#! @EndExampleSession
DeclareOperation("Mullineux", [IsPosInt, IsList]);




