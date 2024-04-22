#############################################################################
##
#W  schuralgebras.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains declarations for Schur algebra Weyl modules.
##
#############################################################################


#! @ChapterInfo Schur Algebras, Constructor
#! @Returns true or false
#! @Arguments V
#! @Description
#! Returns true if and only if the given <A>V</A> is a Schur algebra Weyl
#! module.
DeclareCategory("IsSchurAlgebraWeylModule", IsWeylModule );

#! @ChapterInfo Schur Algebras, Constructor
#! @Returns a Weyl module
#! @Arguments p,ptn
#! @Description
#! This function creates and returns a Weyl module of highest weight
#! defined by the given partition <A>ptn</A>. The length of the partition,
#! which may be padded by zeros as necessary, defines the underlying $GL_n$
#! and the Schur algebra degree.
DeclareOperation("SchurAlgebraWeylModule", [IsInt, IsList]);

###########################################################################
#note - the following operation has ALREADY been declared, so no need 
#to declare it again...

#DeclareOperation("DecompositionNumbers", [IsSchurAlgebraWeylModule]);

#doing so leads to a warning error, but everything still works.
###########################################################################

#! @ChapterInfo Schur Algebras, Decomposition matrices
#! @Returns a matrix
#! @Arguments p,n,r
#! @Description
#! Returns the decomposition matrix for the Schur algebra $S(n,r)$ in
#! characteristc <A>p</A>. Rows and columns are indexed by WHAT?????
DeclareOperation("SchurAlgebraDecompositionMatrix", [IsInt, IsInt, IsInt]);

#! @ChapterInfo Schur Algebras, Decomposition matrices
#! @Returns a list
#! @Arguments p,ptn
#! @Description
#! Returns the decomposition numbers of the dual Specht module indexed
#! by the given partition <A>ptn</A> in characteristic <A>p</A>.
DeclareOperation("SymmetricGroupDecompositionNumbers", [IsInt, IsList]);

#! @ChapterInfo Schur Algebras, Decomposition matrices
#! @Returns a matrix
#! @Arguments p,r
#! @Description
#! Returns the decomposition matrix for the symmetric group 
#! on <A>r</A> letters in
#! characteristc <A>p</A>. Rows and columns are indexed by WHAT?????
DeclareOperation("SymmetricGroupDecompositionMatrix", [IsInt, IsInt]);
