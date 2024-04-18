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


#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V
#! @Group Common operations
DeclareOperation( "BasisVecs", [IsWeylModule]);

#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V
#! @Group Common operations
DeclareAttribute( "Character", IsWeylModule );

#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V
#! @Group Common operations
DeclareAttribute("DecompositionNumbers", IsWeylModule );

#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V
#! @Group Common operations
DeclareAttribute( "Dim", IsWeylModule );

#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V
#! @Group Common operations
DeclareAttribute( "DominantWeights", IsWeylModule );

#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V
#! @Group Common operations
DeclareAttribute( "DominantWeightSpaces", IsWeylModule );

#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V
#! @Group Common operations
DeclareOperation( "Generator", [IsWeylModule]);

#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V
#! @Group Common operations
DeclareAttribute( "Weights", IsWeylModule );

#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V,wt
#! @Group Common operations
DeclareOperation( "WeightSpace", [IsWeylModule,IsList]);

#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V
#! @Group Common operations
DeclareAttribute( "WeightSpaces", IsWeylModule );


DeclareOperation("ActOn", 
     [IsWeylModule, IsUEALatticeElement, IsLeftAlgebraModuleElement]);


#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V
#! @Group Common operations
DeclareOperation( "TheCharacteristic", [IsWeylModule]); 

#! @ChapterInfo Weyl modules, Common operations
#! @Description In all the above commands, <A>V</A> is a given Weyl module, 
#! quotient, submodule, or subquotient and <A>wt</A> is a weight.
#! @Arguments V
#! @Group Common operations
DeclareAttribute( "TheLieAlgebra",  IsWeylModule );




# The following operation is not documented at this time
DeclareOperation( "RowVec", [IsWeylModule,IsLeftAlgebraModuleElement]);


DeclareOperation( "SimpleLieAlgGens", [IsWeylModule]);


DeclareOperation( "IsMaximalVector", [IsWeylModule,IsLeftAlgebraModuleElement]);

#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V,wt
#! @Group three types
DeclareOperation( "MaximalVectors", [IsWeylModule,IsList]);

#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V
#! @Group three types
DeclareAttribute( "MaximalVectors", IsWeylModule );

#! @ChapterInfo Weyl modules, Common operations
#! @Arguments V
#! @Group three types
DeclareAttribute( "IsAmbiguous",  IsWeylModule );

#! @ChapterInfo Weyl modules, Common operations
#! @Description Here <A>V</A> is a given Weyl module, submodule, or quotient 
#! and <A>wt</A> is a given weight. The module is ambiguous if it has two or 
#! more linearly independent maximal vectors of the same weight. The function 
#! `AmbiguousMaxVecs` lists a basis for the subspace of ambiguous maximal 
#! vectors. 
#! @Arguments V
#! @Group three types
DeclareAttribute( "AmbiguousMaxVecs", IsWeylModule );

#! @ChapterInfo Weyl modules, Common operations
#! @Description Here <A>V</A> is a given Weyl module or quotient Weyl module.
#! `SocleSeries` returns the socle series of <A>V</A>, as a list of submodules
#! of <A>V</A>.
#! @Arguments V
#! @Group two types
DeclareAttribute("SocleSeries", IsWeylModule );

#! @ChapterInfo Weyl modules, Common operations
#! @Description `GensSocleLayers` returns a list of lists, such that
#! the $i$th list gives a list of generators of the $i$th socle.
#! @Arguments V
#! @Group two types
DeclareAttribute("GensSocleLayers", IsWeylModule );

#! @ChapterInfo Weyl modules, Common operations
#! @Description `PrintSocleLayers` prints the weights of the generators
#! of the socle layers corresponding to the output of the previous command.
#! @Arguments V
#! @Group two types
DeclareOperation("PrintSocleLayers", [IsWeylModule] );



#! @ChapterInfo Weyl modules, Unique operations
#! @Arguments V
#! @Returns The unique maximal submodule of the Weyl module <A>V</A>.
DeclareAttribute("MaximalSubmodule", IsWeylModule );


#! @ChapterInfo Weyl modules, Unique operations
#! @Arguments V
#! @Returns The simple quotient by the unique maximal submodule of 
#! the Weyl module <A>V</A>.
DeclareAttribute("SimpleQuotient", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorCharacter", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorDim", IsWeylModule );

#! @ChapterInfo Weyl modules, Unique operations
#! @Description `LengthTwoQuotient` tries to construct a quotient
#! of the given Weyl module <A>V</A> with at most two composition factors.
#! Such a quotient realizes a non-split extension of the simple top
#! factor by some other simple composition factor. The first form looks
#! for such a quotient where the kernel contains the next to last proper 
#! socle series submodule.
#! @Arguments V
#! @Group LengthTwoQuotient
DeclareAttribute("LengthTwoQuotient", IsWeylModule );

#! @ChapterInfo Weyl modules, Unique operations
#! @Description The second form of the command attempts to find 
#! such a quotient, where the kernel contains the generator <A>v</A>.
#! @Arguments V,v
#! @Group LengthTwoQuotient
DeclareOperation("LengthTwoQuotient", 
                 [IsWeylModule,IsLeftAlgebraModuleElement] );

#! @ChapterInfo Weyl modules, Unique operations
#! @Description The third form of the command attempts to find 
#! such a quotient, where the kernel contains the given <A>list</A> of vectors.
#! @Arguments V,list
#! @Group LengthTwoQuotient
DeclareOperation("LengthTwoQuotient", 
                 [IsWeylModule,IsList] );



