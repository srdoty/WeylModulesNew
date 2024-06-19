#############################################################################
##
#W  schuralgebras.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains declarations for Schur algebra Weyl modules.
##
#############################################################################

#! @ChapterInfo Schur Algebras, Constructor
#! @Group IsSchurAlgebraWeylModule
#! @Returns true or false
#! @Arguments V
#! @Description
#! Returns true if and only if the given <A>V</A> is a Schur algebra Weyl
#! module.
DeclareCategory("IsSchurAlgebraWeylModule", IsWeylModule );

#! @ChapterInfo Schur Algebras, Constructor
#! @Group SchurAlgebraWeylModule
#! @Returns a Weyl module
#! @Arguments p,ptn
#! @Description
#! This function creates and returns a Weyl module of highest weight
#! defined by the given partition <A>ptn</A>. The length of the partition,
#! which may be padded by zeros as necessary, defines the underlying $GL_n$
#! and the Schur algebra degree.
#! @BeginExampleSession
#! gap> V:= SchurAlgebraWeylModule(3,[1,1,0]);
#! Schur algebra module V[ 1, 1, 0 ]
#! @EndExampleSession
#! Here we define the Weyl module for $GL_3$ of highest weight [1, 1]
#! in the partition notation.
DeclareOperation("SchurAlgebraWeylModule", [IsInt, IsList]);



###########################################################################
#note - the following operation has ALREADY been declared, so no need 
#to declare it again...

#DeclareOperation("DecompositionNumbers", [IsSchurAlgebraWeylModule]);

#doing so leads to a warning error, but everything still works.
###########################################################################

#! @ChapterInfo Schur Algebras, Decomposition matrices
#! @Group SchurAlgebraDecompositionMatrix
#! @Returns a matrix
#! @Arguments p,n,r
#! @Description
#! Returns the decomposition matrix for the Schur algebra $S(n,r)$ in
#! characteristc <A>p</A>. 
#! The rows and columns of the matrix are indexed by the partitions 
#! produced by `BoundedPartitions(n,r)` ordered the same as in the
#! output of that function.
#! @BeginExampleSession
#! gap> SchurAlgebraDecompositionMatrix(3,4,3);
#! [ [ 1, 1, 0 ], [ 0, 1, 1 ], [ 0, 0, 1 ] ]
#! @EndExampleSession
#! Here we compute the decomposition matrix for $S(4,3)$ in 
#! characteristic $3$. The rows and columns of the matrix are
#! indexed by the following partitions:
#! @BeginExampleSession
#! gap> BoundedPartitions(4,3);
#! [ [ 3, 0, 0, 0 ], [ 2, 1, 0, 0 ], [ 1, 1, 1, 0 ] ]
#! @EndExampleSession
DeclareOperation("SchurAlgebraDecompositionMatrix", [IsInt, IsInt, IsInt]);


#! @ChapterInfo Schur Algebras, Decomposition matrices
#! @Group SymmetricGroupDecompositionNumbers
#! @Returns a list
#! @Arguments p,ptn
#! @Description
#! Returns the decomposition numbers of the dual Specht module indexed
#! by the given partition <A>ptn</A> in characteristic <A>p</A>.
#! @BeginExampleSession
#! gap> SymmetricGroupDecompositionNumbers(2,[2,1,1]);
#! [ [ 2, 1, 1 ], 1, [ 1, 1, 1, 1 ], 1 ]
#! @EndExampleSession
DeclareOperation("SymmetricGroupDecompositionNumbers", [IsInt, IsList]);

#! @ChapterInfo Schur Algebras, Decomposition matrices
#! @Group SymmetricGroupDecompositionMatrix
#! @Returns a matrix
#! @Arguments p,n
#! @Description
#! Returns the decomposition matrix for the symmetric group 
#! on <A>n</A> letters in characteristc <A>p</A>.
#! The rows of the matrix are labeled by the partitions of <A>n</A> 
#! in the order produced by `AllPartitions(n)`, and the columns are 
#! labeled by the <A>p</A>-restricted partitions of <A>n</A>.
#! NOTE. 
#! &GAP; has a built-in `Partitions` function that also gives all 
#! the partitions of <A>n</A>, but the ordering is different. 
#! @BeginExampleSession
#! gap> SymmetricGroupDecompositionMatrix(2,4);
#! [ [ 0, 1 ], [ 1, 1 ], [ 1, 0 ], [ 1, 1 ], [ 0, 1 ] ]
#! gap> AllPartitions(4);
#! [ [ 4 ], [ 3, 1 ], [ 2, 2 ], [ 2, 1, 1 ], [ 1, 1, 1, 1 ] ]
#! gap> pRestrictedPartitions(2,4);
#! [ [ 2, 1, 1 ], [ 1, 1, 1, 1 ] ]
#! @EndExampleSession
DeclareOperation("SymmetricGroupDecompositionMatrix", [IsInt, IsInt]);
