#############################################################################
##
#W  partitions.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains declarations related to partition notation in Type A.
##  It is used by the Schur algebra functions.
##
#############################################################################


#! @ChapterInfo Schur Algebras, Partitions
#! @Returns a list (a weight)
#! @Arguments mu
#! @Description
#! This converts the given composition <A>mu</A> into a weight by taking
#! successive differences of its parts.
DeclareOperation("CompositionToWeight", [IsList]);

#! @ChapterInfo Schur Algebras, Partitions
#! @Returns a list (a composition)
#! @Arguments r,wt
#! @Description
#! This converts the given weight <A>wt</A> into a composition of 
#! degree <A>r</A>. Without degree information, this function is ill
#! defined.
DeclareOperation("WeightToComposition", [IsInt, IsList]);


#! @ChapterInfo Schur Algebras, Partitions
#! @Returns a list of partitions
#! @Arguments n
#! @Description
#! Lists all the partitions of <A>n</A>.
DeclareOperation("AllPartitions", [IsInt]);

#! @ChapterInfo Schur Algebras, Partitions
#! @Returns a list (a partition)
#! @Arguments ptn
#! @Description
#! Returns the conjugate partition of <A>ptn</A>.
DeclareOperation("Conjugate", [IsList]);


#! @ChapterInfo Schur Algebras, Partitions
#! @Returns a list of partitions
#! @Arguments n,r,s
#! @Description
#! Returns a list of <A>n</A> part partitions of degree <A>r</A> such that
#! each part lies in the closed interval [0,<A>s</A>].
DeclareOperation("BoundedPartitions", [IsInt, IsInt, IsInt]);

#! @ChapterInfo Schur Algebras, Partitions
#! @Returns a list of partitions
#! @Arguments n,r
#! @Description
#! Returns a list of <A>n</A> part partitions of degree <A>r</A>. 
#! `BoundedPartitions(n,r)` is equivalent to `BoundedPartitions(n,r,r)`.
DeclareOperation("BoundedPartitions", [IsInt, IsInt]);


#! @ChapterInfo Schur Algebras, Partitions
#! @Returns true or false
#! @Arguments p,ptn
#! @Description
#! Returns true if and only if the given partition <A>ptn</A> 
#! is <A>p</A>-restricted.
DeclareOperation("pRestricted", [IsPosInt, IsList]);

#! @ChapterInfo Schur Algebras, Partitions
#! @Returns true or false
#! @Arguments p,ptn
#! @Description
#! Returns true if and only if the given partition <A>ptn</A> 
#! is <A>p</A>-regular.
DeclareOperation("pRegular", [IsPosInt, IsList]);


#! @ChapterInfo Schur Algebras, Partitions
#! @Returns a list
#! @Arguments p,n
#! @Description
#! Returns a list of all <A>p</A>-restricted partitions of <A>n</A>.
DeclareOperation("pRestrictedPartitions", [IsInt, IsInt]);

#! @ChapterInfo Schur Algebras, Partitions
#! @Returns a list
#! @Arguments p,n
#! @Description
#! Returns a list of all <A>p</A>-regular partitions of <A>n</A>.
DeclareOperation("pRegularPartitions", [IsPosInt, IsPosInt]);

#! @ChapterInfo Schur Algebras, Partitions
#! @Returns a list
#! @Arguments p,mu
#! @Description
#! Applies the Mullineux map to the partition <A>mu</A> 
#! in characteristic <A>p</A>.
DeclareOperation("Mullineux", [IsPosInt, IsList]);




