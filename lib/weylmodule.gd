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
#! @Group Character
DeclareAttribute( "Character", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments V
#! @Group DecompositionNumbers
DeclareAttribute("DecompositionNumbers", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments V
#! @Group Dim
DeclareAttribute( "Dim", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments V
#! @Group DominantWeights
DeclareAttribute( "DominantWeights", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments V
#! @Group DominantWeightSpaces
DeclareAttribute( "DominantWeightSpaces", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Arguments V
#! @Group Generator
DeclareOperation( "Generator", [IsWeylModule]);

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments V
#! @Group Weights
DeclareAttribute( "Weights", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments V,wt
#! @Group WeightSpace
DeclareOperation( "WeightSpace", [IsWeylModule,IsList]);

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments V
#! @Group WeightSpaces
DeclareAttribute( "WeightSpaces", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Arguments V,u,v
#! @Group ActOn
DeclareOperation("ActOn", 
     [IsWeylModule, IsUEALatticeElement, IsLeftAlgebraModuleElement]);


#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments V
#! @Group TheCharacteristic
DeclareOperation( "TheCharacteristic", [IsWeylModule]); 

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments V
#! @Group TheLieAlgebra
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
#! @Arguments V
#! @Group MaximalVectors
DeclareAttribute( "MaximalVectors", IsWeylModule );

#! @ChapterInfo Weyl modules, Three types
#! @Arguments V
#! @Group IsAmbiguous
DeclareAttribute( "IsAmbiguous",  IsWeylModule );

#! @ChapterInfo Weyl modules, Three types
#! @Description Here <A>V</A> is a given Weyl module, submodule, or quotient 
#! and <A>wt</A> is a given weight. The module is ambiguous if it has two or 
#! more linearly independent maximal vectors of the same weight. The function 
#! `AmbiguousMaxVecs` lists a basis for the subspace of ambiguous maximal 
#! vectors. 
#! @Arguments V
#! @Group AmbiguousMaxVecs
DeclareAttribute( "AmbiguousMaxVecs", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Description Here <A>V</A> is a given Weyl module or quotient Weyl module.
#! `SocleSeries` returns the socle series of <A>V</A>, as a list of submodules
#! of <A>V</A>.
#! @Arguments V
#! @Group SocleSeries
DeclareAttribute("SocleSeries", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Description `GensSocleLayers` returns a list of lists, such that
#! the $i$th list gives a list of generators of the $i$th socle.
#! @Arguments V
#! @Group GensSocleLayers
DeclareAttribute("GensSocleLayers", IsWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Description `PrintSocleLayers` prints the weights of the generators
#! of the socle layers corresponding to the output of the previous command.
#! @Arguments V
#! @Group PrintSocleLayers
DeclareOperation("PrintSocleLayers", [IsWeylModule] );



#! @ChapterInfo Weyl modules, Operations on Weyl modules
#! @Arguments V
#! @Group MaximalSubmodule
#! @Returns The unique maximal submodule of the Weyl module <A>V</A>.
DeclareAttribute("MaximalSubmodule", IsWeylModule );


#! @ChapterInfo Weyl modules, Operations on Weyl modules
#! @Arguments V
#! @Group SimpleQuotient
#! @Returns The simple quotient by the unique maximal submodule of 
#! the Weyl module <A>V</A>.
DeclareAttribute("SimpleQuotient", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorCharacter", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorDim", IsWeylModule );





