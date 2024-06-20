#############################################################################
##
#W  weylmod.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains the declaration of attributes, properties, and
##  operations for Weyl modules.
##
#############################################################################


#! @ChapterInfo Weyl modules, Filters
#! @Arguments V
#! @Group IsWeylModule
DeclareCategory( "IsWeylModule", 
    CategoryCollections(IsLeftAlgebraModuleElement) );

#! @ChapterInfo Weyl modules, Constructors
#! @Group WeylModule
#! @Description
#! The first form of the command (with four arguments) constructs a 
#! Weyl module of highest weight <A>wt</A> in characteristic <A>p</A> 
#! of type <A>t</A> and rank <A>r</A>.
#! @Returns a WeylModule
#! @Arguments p,wt,t,r
DeclareOperation( "WeylModule", [IsPosInt, IsList, IsString, IsPosInt] );


#! @ChapterInfo Weyl modules, Constructors
#! @Group WeylModule
#! @Arguments V,wt
#! @Description
#! The second form of the command (with two arguments) constructs a 
#! Weyl module of highest weight <A>wt</A> of the 
#! same characteristic and root system as the first parameter <A>V</A>, 
#! which must be an existing Weyl module.
#! @BeginExampleSession
#! gap> V:= WeylModule(2,[1,0],"A",2);
#! V[ 1, 0 ]
#! gap> W:= WeylModule(V,[1,2]);
#! V[ 1, 2 ]
#! @EndExampleSession
#! Weyl modules are attribute-storing objects (they remember their 
#! attributes after the first time they are computed).
DeclareOperation( "WeylModule", [IsWeylModule,IsList] );


#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments V
#! @Group BasisVecs
DeclareOperation( "BasisVecs", [IsWeylModule]);

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments V
#! @Returns a list
#! @Group Character
#! @Description
#! This function returns the character (as a list of weights and 
#! their multiplicities) of the given module.
#! @BeginExampleSession
#! gap> Character(V);
#! [ [ 4, 0 ], 1, [ 2, 1 ], 1, [ 3, -1 ], 1, [ 0, 2 ], 1, [ 1, 0 ], 1, 
#!   [ -2, 3 ], 1, [ 2, -2 ], 1, [ -1, 1 ], 1, [ -4, 4 ], 1, [ 0, -1 ], 1, 
#!   [ -3, 2 ], 1, [ 1, -3 ], 1, [ -2, 0 ], 1, [ -1, -2 ], 1, [ 0, -4 ], 1 ]
#! gap> Character(Q);
#! [ [ 4, 0 ], 1, [ 0, 2 ], 1, [ 2, -2 ], 1, [ -4, 4 ], 1, [ -2, 0 ], 1, 
#!   [ 0, -4 ], 1 ]
#! gap> Character(S);
#! [ [ 2, 1 ], 1, [ 3, -1 ], 1, [ 1, 0 ], 1, [ -2, 3 ], 1, [ 0, -1 ], 1, 
#!   [ -1, 1 ], 1, [ 1, -3 ], 1, [ -3, 2 ], 1, [ -1, -2 ], 1 ]
#! gap> Character(T);
#! [ [ 0, 2 ], 1, [ 2, -2 ], 1, [ -2, 0 ], 1 ]
#! @EndExampleSession
DeclareAttribute( "Character", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments V
#! @Group DecompositionNumbers
#! @Returns a list
#! @Description
#! Returns a list of highest weights of simple composition factors
#! (in the underlying characteristic) and their corresponding 
#! multiplicities in the given module.
#! @BeginExampleSession
#! gap> DecompositionNumbers(V);
#! [ [ 4, 0 ], 1, [ 2, 1 ], 1, [ 0, 2 ], 1 ]
#! gap> DecompositionNumbers(Q);
#! [ [ 4, 0 ], 1, [ 0, 2 ], 1 ]
#! gap> DecompositionNumbers(S);
#! [ [ 2, 1 ], 1 ]
#! gap> DecompositionNumbers(T);
#! [ [ 0, 2 ], 1 ]
#! @EndExampleSession
DeclareAttribute("DecompositionNumbers", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Group Dim
#! @Arguments V
#! @Returns an integer (the dimension of the module)
#! @Description
#! @BeginExampleSession
#! gap> Dim(V);
#! 15
#! gap> Dim(Q);
#! 6
#! gap> Dim(S);
#! 9
#! gap> Dim(T);
#! 3
#! @EndExampleSession
DeclareAttribute( "Dim", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Group DominantWeights
#! @Arguments V
#! @Returns a list
#! @Description
#! This function lists the dominant weights occurring
#! in the given module (with nonzero multiplicity). The multiplicities 
#! are not given.
#! @BeginExampleSession
#! gap> DominantWeights(V);
#! [ [ 4, 0 ], [ 2, 1 ], [ 0, 2 ], [ 1, 0 ] ]
#! gap> DominantWeights(Q);
#! [ [ 4, 0 ], [ 0, 2 ] ]
#! gap> DominantWeights(S);
#! [ [ 2, 1 ], [ 1, 0 ] ]
#! gap> DominantWeights(T);
#! [ [ 0, 2 ] ]
#! @EndExampleSession
DeclareAttribute( "DominantWeights", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Group DominantWeightSpaces
#! @Arguments V
#! @Returns a list
#! @Description
#! The output of this function is a list consisting of a weight 
#! followed by a list of basis vectors for the corresponding weight space.
#! @BeginExampleSession
#! gap> DominantWeightSpaces(V);
#! [ [ 4, 0 ], [ 1*v0 ], [ 2, 1 ], [ y1*v0 ], [ 0, 2 ], [ y1^(2)*v0 ], [ 1, 0 ], 
#!   [ y1*y3*v0 ] ]
#! gap> DominantWeightSpaces(Q);
#! [ [ 4, 0 ], [ 1*v0 ], [ 0, 2 ], [ y1^(2)*v0 ] ]
#! gap> DominantWeightSpaces(S);
#! [ [ 2, 1 ], [ y1*v0 ], [ 1, 0 ], [ y1*y3*v0 ] ]
#! gap> DominantWeightSpaces(T);
#! [ [ 0, 2 ], [ y1^(2)*v0 ] ]
#! @EndExampleSession
DeclareAttribute( "DominantWeightSpaces", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Group Generator
#! @Arguments V
#! @Returns a highest weight vector
#! @Description
#! This returns a generating vector of the given module.
#! @BeginExampleSession
#! gap> V:= WeylModule(2,[3,0],"G",2);
#! V[ 3, 0 ]
#! gap> Generator(V);
#! 1*v0
#! @EndExampleSession
DeclareOperation( "Generator", [IsWeylModule]);

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Group Weights
#! @Arguments V
#! @Returns a list
#! @Description
#! Lists the weights in the given module.
#! @BeginExampleSession
#! gap> Weights(V);
#! [ [ 4, 0 ], [ 2, 1 ], [ 3, -1 ], [ 0, 2 ], [ 1, 0 ], [ -2, 3 ], [ 2, -2 ], 
#!   [ -1, 1 ], [ -4, 4 ], [ 0, -1 ], [ -3, 2 ], [ 1, -3 ], [ -2, 0 ], 
#!   [ -1, -2 ], [ 0, -4 ] ]
#! gap> Weights(Q);
#! [ [ 4, 0 ], [ 0, 2 ], [ 2, -2 ], [ -4, 4 ], [ -2, 0 ], [ 0, -4 ] ]
#! gap> Weights(S);
#! [ [ 2, 1 ], [ 3, -1 ], [ 1, 0 ], [ -2, 3 ], [ 0, -1 ], [ -1, 1 ], [ 1, -3 ], 
#!   [ -3, 2 ], [ -1, -2 ] ]
#! gap> Weights(T);
#! [ [ 0, 2 ], [ 2, -2 ], [ -2, 0 ] ]
#! @EndExampleSession
DeclareAttribute( "Weights", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Group WeightSpace
#! @Arguments V,wt
#! @Returns a list
#! @Description
#! Gives a basis for the weight space of the given weight <A>wt</A>. 
#! @BeginExampleSession
#! gap> WeightSpace(V, [2,1]);
#! [ y1*v0 ]
#! gap> WeightSpace(Q, [2,1]);
#! [  ]
#! gap> WeightSpace(S, [2,1]);
#! [ y1*v0 ]
#! gap> WeightSpace(T, [2,-2]);
#! [ y3^(2)*v0 ]
#! @EndExampleSession
DeclareOperation( "WeightSpace", [IsWeylModule,IsList]);

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Group WeightSpaces
#! @Arguments V
#! @Returns a list
#! @Description
#! Computes a list consisting of weights followed by a basis of their
#! corresponding weight spaces, for each weight of the given module.
#! @BeginExampleSession
#! gap> WeightSpaces(V);
#! [ [ 4, 0 ], [ 1*v0 ], [ 2, 1 ], [ y1*v0 ], [ 3, -1 ], [ y3*v0 ], [ 0, 2 ], 
#!   [ y1^(2)*v0 ], [ 1, 0 ], [ y1*y3*v0 ], [ -2, 3 ], [ y1^(3)*v0 ], [ 2, -2 ], 
#!   [ y3^(2)*v0 ], [ -1, 1 ], [ y1^(2)*y3*v0 ], [ -4, 4 ], [ y1^(4)*v0 ], 
#!   [ 0, -1 ], [ y1*y3^(2)*v0 ], [ -3, 2 ], [ y1^(3)*y3*v0 ], [ 1, -3 ], 
#!   [ y3^(3)*v0 ], [ -2, 0 ], [ y1^(2)*y3^(2)*v0 ], [ -1, -2 ], 
#!   [ y1*y3^(3)*v0 ], [ 0, -4 ], [ y3^(4)*v0 ] ]
#! gap> WeightSpaces(Q);
#! [ [ 4, 0 ], [ 1*v0 ], [ 0, 2 ], [ y1^(2)*v0 ], [ 2, -2 ], [ y3^(2)*v0 ], 
#!   [ -4, 4 ], [ y1^(4)*v0 ], [ -2, 0 ], [ y1^(2)*y3^(2)*v0 ], [ 0, -4 ], 
#!   [ y3^(4)*v0 ] ]
#! gap> WeightSpaces(S);
#! [ [ 2, 1 ], [ y1*v0 ], [ 3, -1 ], [ y3*v0 ], [ 1, 0 ], [ y1*y3*v0 ], 
#!   [ -2, 3 ], [ y1^(3)*v0 ], [ 0, -1 ], [ y1*y3^(2)*v0 ], [ -1, 1 ], 
#!   [ y1^(2)*y3*v0 ], [ 1, -3 ], [ y3^(3)*v0 ], [ -3, 2 ], [ y1^(3)*y3*v0 ], 
#!   [ -1, -2 ], [ y1*y3^(3)*v0 ] ]
#! gap> WeightSpaces(T);
#! [ [ 0, 2 ], [ y1^(2)*v0 ], [ 2, -2 ], [ y3^(2)*v0 ], [ -2, 0 ], 
#!   [ y1^(2)*y3^(2)*v0 ] ]
#! @EndExampleSession
DeclareAttribute( "WeightSpaces", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Arguments V,u,v
#! @Group ActOn
#! @Returns An element of the Weyl module or quotient 
#! @Description This function returns the result of acting by the 
#! hyperalgebra element <A>u</A> on the given vector <A>v</A>. 
#! Here <A>v</A> must be an element of
#! the given Weyl module <A>V</A> or quotient Weyl module <A>Q</A>. 
#! The command <K>LatticeGeneratorsInUEA</K> is a pre-existing &GAP;
#! command; see the chapter on Lie algebras in the &GAP; reference 
#! manual for further details. The lattice generators are regarded as
#! standard generators of the hyperalgebra for computing the action.
#! @BeginExampleSession
#! gap> V:= WeylModule(2, [1,0], "G", 2);
#! V[ 1, 0 ]
#! gap> L:= TheLieAlgebra(V);
#! <Lie algebra of dimension 14 over Rationals>
#! gap>  g:= LatticeGeneratorsInUEA(L);
#! [ y1, y2, y3, y4, y5, y6, x1, x2, x3, x4, x5, x6, ( h13/1 ), ( h14/1 ) ]
#! gap> b:= BasisVecs(V);
#! [ 1*v0, y1*v0, y3*v0, y4*v0, y5*v0, y6*v0, y1*y6*v0 ]
#! gap> ActOn(V, g[1]^2 + g[7], b[1]);
#! 0*v0
#! gap> ActOn(V, g[1]*g[6], b[1]);
#! y1*y6*v0
#! @EndExampleSession
DeclareOperation("ActOn", 
     [IsWeylModule, IsUEALatticeElement, IsLeftAlgebraModuleElement]);


#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Group TheCharacteristic
#! @Arguments V
#! @Returns an integer
#! @Description Gives the characteristic of the base field.
#! @BeginExampleSession
#! gap> TheCharacteristic(V);
#! 2
#! gap> TheCharacteristic(Q);
#! 2
#! gap> TheCharacteristic(S);
#! 2
#! gap> TheCharacteristic(T);
#! 2
#! @EndExampleSession
DeclareOperation( "TheCharacteristic", [IsWeylModule]); 

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Group TheLieAlgebra
#! @Arguments V
#! @Returns a Lie algebra
#! @Description Gives the underlying Lie algebra for the given module.
#! @BeginExampleSession
#! gap> TheLieAlgebra(V);
#! <Lie algebra of dimension 8 over Rationals>
#! gap> TheLieAlgebra(Q);
#! <Lie algebra of dimension 8 over Rationals>
#! gap> TheLieAlgebra(S);
#! <Lie algebra of dimension 8 over Rationals>
#! gap> TheLieAlgebra(T);
#! <Lie algebra of dimension 8 over Rationals>
#! @EndExampleSession
#! The &GAP; manual gives additional operations for various properties
#! and attributes of such Lie algebras and their enveloping algebras.
DeclareAttribute( "TheLieAlgebra",  IsWeylModule );



# The following operation is not documented at this time
DeclareOperation( "RowVec", [IsWeylModule,IsLeftAlgebraModuleElement]);

# The following operation is not documented at this time
DeclareOperation( "SimpleLieAlgGens", [IsWeylModule]);

# The following operation is not documented at this time
DeclareOperation( "IsMaximalVector", [IsWeylModule,IsLeftAlgebraModuleElement]);

#! @ChapterInfo Weyl modules, Three types
#! @Arguments V,wt
#! @Group MaximalVectors
DeclareOperation( "MaximalVectors", [IsWeylModule,IsList]);

#! @ChapterInfo Weyl modules, Three types
#! @Group MaximalVectors
#! @Arguments V
#! @Returns a list
#! @Description
#! Returns a list of linearly independent maximal vectors for the given
#! dominant weight <A>wt</A> or for all dominant weights of the module.
#! The maximal vectors of a particular weight form a basis of the space
#! of maximal vectors of that weight.
#!
#! In the following example, we assume that <A>V</A>, <A>Q</A>, and 
#! <A>S</A> are the same modules as defined in the example at the 
#! beginning of Section 
#! <Ref Sect="Section_4types"/>.
#! @BeginExampleSession
#! gap> MaximalVectors(V);
#! [ 1*v0, y1*v0 ]
#! gap> m:= MaximalVectors(V);
#! [ 1*v0, y1*v0 ]
#! gap> List(m, Weight);
#! [ [ 4, 0 ], [ 2, 1 ] ]
#! gap> MaximalVectors(V, [2,1]);
#! [ y1*v0 ]
#! gap> m:= MaximalVectors(Q);
#! [ 1*v0, y1^(2)*v0 ]
#! gap> List(m, Weight);
#! [ [ 4, 0 ], [ 0, 2 ] ]
#! gap> MaximalVectors(Q, [0,2]);
#! [ y1^(2)*v0 ]
#! gap> m:= MaximalVectors(S);
#! [ y1*v0 ]
#! gap> List(m, Weight);
#! [ [ 2, 1 ] ]
#! gap> MaximalVectors(S, [2,1]);
#! [ y1*v0 ]
#! @EndExampleSession
DeclareAttribute( "MaximalVectors", IsWeylModule );

#! @ChapterInfo Weyl modules, Three types
#! @Group IsAmbiguous
#! @Arguments V
#! @Returns true or false
#! @Description  The module is ambiguous if it has two or 
#! more linearly independent maximal vectors of the same weight.
#! @BeginExampleSession
#! gap> V:= WeylModule(2,[3,0],"G",2);
#! V[ 3, 0 ]
#! gap> IsAmbiguous(V);
#! true
#! @EndExampleSession
DeclareAttribute( "IsAmbiguous",  IsWeylModule );

#! @ChapterInfo Weyl modules, Three types
#! @Group AmbiguousMaxVecs
#! @Arguments V
#! @Returns a list
#! @Description  
#! This function 
#! lists a basis for the subspace of ambiguous maximal vectors. 
#! @BeginExampleSession
#! gap> V:= WeylModule(2,[3,0],"G",2);
#! V[ 3, 0 ]
#! gap> AmbiguousMaxVecs(V);
#! [ y1*y3*v0, y4*v0 ]
#! @EndExampleSession
DeclareAttribute( "AmbiguousMaxVecs", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Group SocleSeries
#! @Arguments V
#! @Returns a list 
#! @Description 
#! Returns the socle series of its input module, as a list of submodules.
#! @BeginExampleSession
#! gap> V:= WeylModule(2,[3,0],"G",2);
#! V[ 3, 0 ]
#! gap> SocleSeries(V);
#! [ 21-dimensional submod of V[ 3, 0 ], 28-dimensional submod of V[ 3, 0 ], 
#!   34-dimensional submod of V[ 3, 0 ], 35-dimensional submod of V[ 3, 0 ], 
#!   41-dimensional submod of V[ 3, 0 ], 77-dimensional submod of V[ 3, 0 ] ]
#! @EndExampleSession
DeclareAttribute("SocleSeries", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Group GensSocleLayers
#! @Arguments V
#! @Returns a list
#! @Description Returns a list of lists, such that
#! the $i$th list gives a list of generators of the $i$th module in the 
#! socle series of the input.
#! @BeginExampleSession
#! gap> V:= WeylModule(2,[3,0],"G",2);
#! V[ 3, 0 ]
#! gap> GensSocleLayers(V);
#! [ [ y1*y4*v0, y1*y3*y4*v0+y1*y6*v0+y3*y5*v0, 
#!       y1*y4*y6*v0+y3*y4*y5*v0+y4^(3)*v0 ], [ y4*v0, y1^(2)*y3*y6*v0 ], 
#!   [ y1*y3*v0 ], [ y5*y6*v0 ], [ y1*y6*v0+y4^(2)*v0 ], [ 1*v0 ] ]
#! @EndExampleSession
DeclareAttribute("GensSocleLayers", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Group PrintSocleLayers
#! @Arguments V
#! @Returns nothing
#! @Description Prints the weights of the generators
#! of the socle layers corresponding to the output of the previous command.
#! These are the highest weights of the simple composition factors in
#! each socle layer. 
#!
#! In the following example, we assume that <A>V</A> is the same Weyl module
#! defined in the preceding example.
#! @BeginExampleSession
#! gap> PrintSocleLayers(V);
#! Printing highest weights of simples in socle layers of V[ 3, 0 ]
#! Layer 1: [ [ 0, 1 ], [ 1, 0 ], [ 0, 0 ] ]
#! Layer 2: [ [ 2, 0 ], [ 0, 0 ] ]
#! Layer 3: [ [ 2, 0 ] ]
#! Layer 4: [ [ 0, 0 ] ]
#! Layer 5: [ [ 1, 0 ] ]
#! Layer 6: [ [ 3, 0 ] ]
#! @EndExampleSession
DeclareOperation("PrintSocleLayers", [IsWeylModule] );



#! @ChapterInfo Weyl modules, Operations on Weyl modules
#! @Group MaximalSubmodule
#! @Arguments V
#! @Returns a submodule
#! @Description
#! Calculates and returns the unique maximal submodule of the 
#! given Weyl module <A>V</A>.
#! @BeginExampleSession
#! gap> V:= WeylModule(3,[3,0],"A",2);
#! V[ 3, 0 ]
#! gap> MaximalSubmodule(V);
#! 7-dimensional submod of V[ 3, 0 ]
#! @EndExampleSession
DeclareAttribute("MaximalSubmodule", IsWeylModule );


#! @ChapterInfo Weyl modules, Operations on Weyl modules
#! @Group SimpleQuotient
#! @Arguments V
#! @Returns a quotient Weyl module
#! @Description
#! Calculates and returns the simple quotient by the unique maximal 
#! submodule of the given Weyl module. 
#! @BeginExampleSession
#! gap> V:= WeylModule(3,[3,0],"A",2);
#! V[ 3, 0 ]
#! gap> Q:= SimpleQuotient(V);
#! 3-dimensional quotient of V[ 3, 0 ]
#! @EndExampleSession
DeclareAttribute("SimpleQuotient", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorCharacter", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorDim", IsWeylModule );





