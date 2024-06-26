#############################################################################
##
#W  submodule.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains declarations for submodules of Weyl modules.
##
#############################################################################


#! @ChapterInfo Weyl_modules, Filters
#! @Group IsSubWeylModule
#! @Arguments V
DeclareCategory( "IsSubWeylModule", 
    CategoryCollections(IsLeftAlgebraModuleElement) );

#! @ChapterInfo Weyl_modules, Constructors
#! @Description
#! Submodules are attribute-storing objects.
#! The first form constructs the submodule of the given 
#! Weyl module <A>V</A> generated by the given element <A>v</A>.
#! @Returns a SubWeylModule
#! @Arguments V,v
#! @Group SubWeylModule
DeclareOperation( "SubWeylModule", [IsWeylModule,IsLeftAlgebraModuleElement]);

#! @ChapterInfo Weyl_modules, Constructors
#! @Description
#! The second form constructs the submodule (of the ambient Weyl module)
#! generated by the given submodule <A>S</A> and given element <A>v</A>.
#! @Arguments S,v
#! @Group SubWeylModule
DeclareOperation( "SubWeylModule",
     [IsSubWeylModule,IsLeftAlgebraModuleElement]);

#! @ChapterInfo Weyl_modules, Constructors
#! @Description
#! The third form constructs the submodule of the given Weyl module 
#! <A>V</A> generated by the given element <A>list</A> of elements.
#! @Arguments V,list
#! @Group SubWeylModule
DeclareOperation("SubWeylModule", [IsWeylModule,IsList]);

#! @ChapterInfo Weyl_modules, Constructors
#! @Description
#! The fourth form constructs the submodule
#! generated by the given submodule <A>S</A> and given <A>list</A> of elements.
#! @Arguments S,list
#! @Group SubWeylModule
DeclareOperation("SubWeylModule", [IsSubWeylModule,IsList]);

#! @ChapterInfo Weyl_modules, Constructors
#! @Arguments V,list
#! @Group SubWeylModule
#! @Description
#! The fifth form constructs the submodule of the Weyl module <A>V</A>
#! which is the direct sum of the given list of submodules (which are
#! assumed to be linearly independent, without checking).
#! @BeginExampleSession
#! gap> W:= WeylModule(2,[2,0],"A",2);
#! V[ 2, 0 ]
#! gap> m:= MaximalVectors(W);
#! [ 1*v0, y1*v0 ]
#! gap> S:= SubWeylModule(W, m[2]);
#! 3-dimensional submod of V[ 2, 0 ]
#! gap> SubWeylModule(S, m[1]);
#! 6-dimensional submod of V[ 2, 0 ]
#! gap> SubWeylModule(W, m);
#! 6-dimensional submod of V[ 2, 0 ]
#! gap> SubWeylModule(S, m);
#! 6-dimensional submod of V[ 2, 0 ]
#! @EndExampleSession
DeclareOperation("SubWeylModuleDirectSum", [IsWeylModule,IsList]);

#! @ChapterInfo Weyl modules, Three types
#! @Arguments S
#! @Group IsAmbiguous
DeclareAttribute( "IsAmbiguous", IsSubWeylModule );

#! @ChapterInfo Weyl modules, Three types
#! @Arguments S
#! @Group AmbiguousMaxVecs
DeclareAttribute( "AmbiguousMaxVecs", IsSubWeylModule );

#! @ChapterInfo Weyl modules, Operations on submodules
#! @Group Generators4Sub
#! @Arguments S
#! @Returns a list
#! @Description 
#! Returns a list of generators of the given submodule <A>S</A>. In the 
#! following example, we assume that <A>S</A> is the same as in the 
#! preceding example.
#! @BeginExampleSession
#! gap> Generators(S);
#! [ y1*v0 ]
#! @EndExampleSession
DeclareOperation("Generators", [IsSubWeylModule]);

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments S
#! @Group BasisVecs
DeclareOperation("BasisVecs", [IsSubWeylModule]);

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments S
#! @Group Dim
DeclareAttribute("Dim", IsSubWeylModule );

#! @ChapterInfo Weyl_modules, Operations on submodules
#! @Group Ambient4Sub
#! @Returns a Weyl module
#! @Arguments S
#! @Description
#! This function returns the ambient Weyl module containing the given
#! submodule <A>S</A>.
#! @BeginExampleSession
#! gap> V:= WeylModule(3,[3,0],"A",2);
#! V[ 3, 0 ]
#! gap> S:= MaximalSubmodule(V);
#! 7-dimensional submod of V[ 3, 0 ]
#! gap> AmbientWeylModule(S);
#! V[ 3, 0 ]
#! @EndExampleSession
DeclareOperation("AmbientWeylModule", [IsSubWeylModule]);

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments S
#! @Group TheCharacteristic
DeclareOperation("TheCharacteristic", [IsSubWeylModule] );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments S
#! @Group TheLieAlgebra
DeclareAttribute("TheLieAlgebra", IsSubWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments S
#! @Group Weights
DeclareAttribute("Weights", IsSubWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments S
#! @Group DominantWeights
DeclareAttribute("DominantWeights", IsSubWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments S
#! @Group WeightSpaces
DeclareAttribute("WeightSpaces", IsSubWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments S
#! @Group Character
DeclareAttribute("Character", IsSubWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments S
#! @Group DominantWeightSpaces
DeclareAttribute("DominantWeightSpaces", IsSubWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments S,wt
#! @Group WeightSpace
DeclareOperation("WeightSpace", [IsSubWeylModule,IsList]);

# The following command is not documented at this time
DeclareOperation("SubWeylModule", [IsWeylModule,IsPosInt,IsPosInt,IsList]);

#! @ChapterInfo Weyl modules, Three types
#! @Arguments S,wt
#! @Group MaximalVectors
DeclareOperation( "MaximalVectors", [IsSubWeylModule,IsList]);

#! @ChapterInfo Weyl modules, Three types
#! @Arguments S
#! @Group MaximalVectors
DeclareAttribute( "MaximalVectors", IsSubWeylModule );

#! @ChapterInfo Weyl_modules, Operations on submodules
#! @Group IsWithin4Sub
#! @Returns true or false
#! @Arguments S,v
#! @Description
#! This function returns <K>true</K> if and only if the given 
#! vector <A>v</A> lies in the given submodule <A>S</A>. 
#! @BeginExampleSession
#! gap> V:= WeylModule(3,[3,0],"A",2);
#! V[ 3, 0 ]
#! gap> S:= MaximalSubmodule(V);
#! 7-dimensional submod of V[ 3, 0 ]
#! gap> g:= Generators(S);
#! [ y1*v0 ]
#! gap> IsWithin(S, g[1]);
#! true
#! @EndExampleSession
DeclareOperation( "IsWithin", [IsSubWeylModule,IsLeftAlgebraModuleElement]);

#! @ChapterInfo Weyl_modules, Operations on Weyl modules and their quotients
#! @Group SocleWeyl
#! @Arguments V
#! @Returns a submodule
#! @Description
#! This function returns the socle of the given module.
#! @BeginExampleSession
#! gap> V:= WeylModule(2,[3,0],"G",2);
#! V[ 3, 0 ]
#! gap> SocleWeyl(V);
#! 21-dimensional submod of V[ 3, 0 ]
#! @EndExampleSession
DeclareAttribute("SocleWeyl", IsWeylModule );

#! @ChapterInfo Weyl_modules, Operations on submodules
#! @Group NextSocle
#! @Returns a SubWeylModule
#! @Arguments S
#! @Description
#! This function returns the maximal submodule <A>T</A> containing 
#! the given submodule <A>S</A> such that $T/S$ is semisimple. 
#! If <A>S</A> happens to be an element of the socle series then 
#! the function returns the next element in the socle series.
#! @BeginExampleSession
#! gap> W:= WeylModule(2,[3,0],"G",2);
#! V[ 3, 0 ]
#! gap> g:= Generators(SocleWeyl(W)); 
#! [ y1*y4*v0, y1*y3*y4*v0+y1*y6*v0+y3*y5*v0, y1*y4*y6*v0+y3*y4*y5*v0+y4^(3)*v0 ]
#! gap> S:= SubWeylModule(W, g[1]);
#! 14-dimensional submod of V[ 3, 0 ]
#! gap> T:= NextSocle(S);
#! 21-dimensional submod of V[ 3, 0 ]
#! gap> DecompositionNumbers(T);
#! [ [ 0, 1 ], 1, [ 1, 0 ], 1, [ 0, 0 ], 1 ]
#! @EndExampleSession
#! In the above example, <A>S</A> is a simple submodule of the socle, and
#! <C>NextSocle(S)</C> computes an extension of it by two simples.
DeclareOperation("NextSocle", [IsSubWeylModule]);


#! @ChapterInfo Weyl_modules, Operations on submodules
#! @Group GensNextSocle
#! @Returns a list
#! @Arguments S
#! @Description
#! This function returns a list of generators of the submodule returned by
#! `NextSocle(S)`. In the example below, <A>S</A> is the submodule 
#! constructed in the preceding example.
#! @BeginExampleSession
#! gap> g:= GensNextSocle(S);
#! [ y1*y6*v0+y3*y5*v0, y4^(3)*v0 ]
#! gap> List(g, Weight);
#! [ [ 1, 0 ], [ 0, 0 ] ]
#! @EndExampleSession
DeclareOperation("GensNextSocle", [IsSubWeylModule]);

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments S
#! @Group DecompositionNumbers
DeclareAttribute("DecompositionNumbers", IsSubWeylModule );

#! @ChapterInfo Weyl_modules, Operations on submodules
#! @Group SocleLengthTwoQuotient
#! @Arguments S
#! @Returns a QuotientWeylModule
#! @Description
#! This function returns a quotient of the ambient Weyl 
#! module <A>V</A> with socle series length at most two such 
#! that <A>S</A> lies in its defining kernel. 
#! @BeginExampleSession
#! gap> W:= WeylModule(2,[3,0],"G",2);
#! V[ 3, 0 ]
#! gap> ss:= SocleSeries(W);
#! [ 21-dimensional submod of V[ 3, 0 ], 28-dimensional submod of V[ 3, 0 ], 
#!   34-dimensional submod of V[ 3, 0 ], 35-dimensional submod of V[ 3, 0 ], 
#!   41-dimensional submod of V[ 3, 0 ], 77-dimensional submod of V[ 3, 0 ] ]
#! gap> amv:= AmbiguousMaxVecs(W);
#! [ y1*y3*v0, y4*v0 ]
#! gap> Q1:= SocleLengthTwoQuotient(ss[4]);
#! 42-dimensional quotient of V[ 3, 0 ]
#! gap> PrintSocleLayers(Q1);
#! Printing highest weights of simples in socle layers of 
#! 42-dimensional quotient of V[ 3, 0 ]
#! Layer 1: [ [ 1, 0 ] ]
#! Layer 2: [ [ 3, 0 ] ]
#! gap> Q2:= SocleLengthTwoQuotient(SubWeylModule(W,amv[1]+amv[2]));
#! 48-dimensional quotient of V[ 3, 0 ]
#! gap> PrintSocleLayers(Q2);
#! Printing highest weights of simples in socle layers of 
#! 48-dimensional quotient of V[ 3, 0 ]
#! Layer 1: [ [ 2, 0 ], [ 1, 0 ] ]
#! Layer 2: [ [ 3, 0 ] ]
#! @EndExampleSession
#! Here we see an example of an ambiguous Weyl module with different
#! quotients of socle length two.
DeclareAttribute("SocleLengthTwoQuotient", IsSubWeylModule );

#! @ChapterInfo Weyl_modules, Operations on submodules
#! @Group TwoFactorQuotientsContaining
#! @Arguments S
#! @Returns a list of QuotientWeylModules
#! @Description
#! This returns a list of quotients of the ambient 
#! Weyl module, each having exactly two composition factors, 
#! each of which contain <A>S</A> in their defining kernel. 
#! Such quotients realize non-split extensions of the simple top 
#! composition factor of <A>V</A>.
#! NOTE. Even when <A>S</A> is the trivial module, we do not claim 
#! that the output will give <E>all</E> of the extensions.
#! 
#! In the following example, we assume that `W`, `amv` are as defined 
#! in the preceding example.
#! @BeginExampleSession
#! gap> Q:= TwoFactorQuotientsContaining(SubWeylModule(W,amv[1]+amv[2]));
#! [ 42-dimensional quotient of V[ 3, 0 ], 42-dimensional quotient of V[ 3, 0 ] ]
#! gap> PrintSocleLayers(Q[1]);
#! Printing highest weights of simples in socle layers of 
#! 42-dimensional quotient of V[ 3, 0 ]
#! Layer 1: [ [ 1, 0 ] ]
#! Layer 2: [ [ 3, 0 ] ]
#! gap> PrintSocleLayers(Q[2]);
#! Printing highest weights of simples in socle layers of 
#! 42-dimensional quotient of V[ 3, 0 ]
#! Layer 1: [ [ 2, 0 ] ]
#! Layer 2: [ [ 3, 0 ] ]
#! @EndExampleSession
#! Here we see that the ambient Weyl module has at least two non-isomorphic 
#! extensions realized in its second radical. Comparing with information
#! from an earlier example (see <Ref Oper="PrintSocleLayers"/>) reveals 
#! that the Weyl module
#! in question is non-rigid (its socle and radical series do not coincide).
DeclareAttribute("TwoFactorQuotientsContaining", IsSubWeylModule );
