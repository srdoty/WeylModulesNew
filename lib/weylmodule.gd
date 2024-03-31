#############################################################################
##
#W  weylmod.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains the declaration of attributes, properties, and
##  operations for Weyl modules.
##
#############################################################################


#! @Arguments V
#! @Group IsWeylModule
#! @ChapterInfo Weyl_modules, Filters
DeclareCategory( "IsWeylModule", 
    CategoryCollections(IsLeftAlgebraModuleElement) );

#! @Description
#! Constructs a Weyl module of highest weight `wt` in 
#! characteristic $p$ of type $t$ and rank $r$.
#! @Returns a WeylModule
#! @Arguments p,wt,t,r
#! @Group WeylModule
#! @ChapterInfo Weyl_modules, Constructors
DeclareOperation( "WeylModule", [IsPosInt, IsList, IsString, IsPosInt] );

#! @Description
#! The second form of the command constructs a Weyl  module of highest 
#! weight `wt` of the 
#! same characteristic and root system as the first parameter $V$, which
#! must be an existing Weyl module.
#! @Returns a WeylModule
#! @Arguments V,wt
#! @Group WeylModule
#! @ChapterInfo Weyl_modules, Constructors
DeclareOperation( "WeylModule", [IsWeylModule,IsList] );


#! @Arguments V
#! @Group Common operations
#! @ChapterInfo Weyl_modules, Common operations
DeclareOperation( "BasisVecs", [IsWeylModule]);

#! @Arguments V
#! @Group Common operations
#! @ChapterInfo Weyl_modules, Common operations
DeclareAttribute( "Character", IsWeylModule );

#! @Arguments V
#! @Group Common operations
#! @ChapterInfo Weyl_modules, Common operations
DeclareAttribute("DecompositionNumbers", IsWeylModule );


#! @Arguments V
#! @Group Common operations
#! @ChapterInfo Weyl_modules, Common operations
DeclareAttribute( "Dim", IsWeylModule );


#! @Arguments V
#! @Group Common operations
#! @ChapterInfo Weyl_modules, Common operations
DeclareAttribute( "DominantWeights", IsWeylModule );

#! @Arguments V
#! @Group Common operations
#! @ChapterInfo Weyl_modules, Common operations
DeclareAttribute( "DominantWeightSpaces", IsWeylModule );

#! @Arguments V
#! @Group Common operations
#! @ChapterInfo Weyl_modules, Common operations
DeclareOperation( "Generator", [IsWeylModule]);


#! @Arguments V
#! @Group Common operations
#! @ChapterInfo Weyl_modules, Common operations
DeclareAttribute( "Weights", IsWeylModule );


#! @Arguments V,wt
#! @Group Common operations
#! @ChapterInfo Weyl_modules, Common operations
DeclareOperation( "WeightSpace", [IsWeylModule,IsList]);

#! @Arguments V
#! @Group Common operations
#! @ChapterInfo Weyl_modules, Common operations
DeclareAttribute( "WeightSpaces", IsWeylModule );


DeclareOperation("ActOn", 
     [IsWeylModule, IsUEALatticeElement, IsLeftAlgebraModuleElement]);



#! @Arguments V
#! @Group Common operations
#! @ChapterInfo Weyl_modules, Common operations
DeclareOperation( "TheCharacteristic", [IsWeylModule]); 

#! @Description In the above, $V$ is a given Weyl module, quotient, 
#! submodule, or subquotient and <A>wt</A> is a weight.
#! @Arguments V
#! @Group Common operations
#! @ChapterInfo Weyl_modules, Common operations
DeclareAttribute( "TheLieAlgebra",  IsWeylModule );




# The following operation is not documented at this time
DeclareOperation( "RowVec", [IsWeylModule,IsLeftAlgebraModuleElement]);


DeclareOperation( "SimpleLieAlgGens", [IsWeylModule]);


DeclareOperation( "IsMaximalVector", [IsWeylModule,IsLeftAlgebraModuleElement]);

#! @Arguments V,wt
#! @Group three types
#! @ChapterInfo Weyl_modules, Common operations
DeclareOperation( "MaximalVectors", [IsWeylModule,IsList]);

#! @Arguments V
#! @Group three types
#! @ChapterInfo Weyl_modules, Common operations
DeclareAttribute( "MaximalVectors", IsWeylModule );

#! @Arguments V
#! @Group three types
#! @ChapterInfo Weyl_modules, Common operations
DeclareAttribute( "IsAmbiguous",  IsWeylModule );

#! @Description Here $V$ is a given Weyl module, submodule, or quotient and
#! <A>wt</A> is a given weight. The module is ambiguous if it has two or 
#! more linearly independent maximal vectors of the same weight. The function 
#! `AmbiguousMaxVecs` lists all the ambiguous maximal vectors. 
#! @Arguments V
#! @Group three types
#! @ChapterInfo Weyl_modules, Common operations
DeclareAttribute( "AmbiguousMaxVecs", IsWeylModule );



DeclareAttribute("SocleSeries", IsWeylModule );


DeclareAttribute("GensSocleLayers", IsWeylModule );


DeclareOperation("PrintSocleLayers", [IsWeylModule] );


DeclareAttribute("SimpleQuotient", IsWeylModule );


DeclareAttribute("MaximalSubmodule", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorCharacter", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorDim", IsWeylModule );


DeclareAttribute("LengthTwoQuotient", IsWeylModule );


DeclareOperation("LengthTwoQuotient", 
                 [IsWeylModule,IsLeftAlgebraModuleElement] );


DeclareOperation("LengthTwoQuotient", 
                 [IsWeylModule,IsList] );




