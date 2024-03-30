#############################################################################
##
#W  characters.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains the declarations related to characters of 
##  Weyl modules, weight spaces, simple characters, etc.
##
#############################################################################
#! @Chapter Reference: Declarations by File

#! This chapter documents the declarations by file in the <F>lib</F> folder,
#! following the load order specified in the file <F>init.g</F>. This is
#! provided mainly to aid in subsequent development efforts.

#! @Section Contents of characters.gd


# The following command is not documented at this time
DeclareOperation( "SortedCharacter", [IsList] );

#!
DeclareOperation( "Weight", [IsLeftAlgebraModuleElement]);

# The following command is not documented at this time
DeclareOperation( "IsDominant", [IsList]);

#!
DeclareOperation( "DifferenceCharacter", [IsList,IsList]);

# The following command is not documented at this time
DeclareOperation( "CharacterDim", [IsList]);

# The following command is not documented at this time
DeclareOperation( "IsRestrictedWeight", [IsPosInt, IsList] );

#!
DeclareOperation("ProductCharacter", [IsList,IsList]);

#!
DeclareOperation("DecomposeCharacter", [IsList, IsPosInt,
    IsString, IsPosInt]);

#!
DeclareOperation( "SimpleCharacter", [IsPosInt, IsList, IsString, IsPosInt] );

#!
DeclareOperation( "SimpleCharacter", [IsWeylModule, IsList] );
#############################################################################
##
#W  misc.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains miscellaneous declarations.
##
#############################################################################

# The following is not documented at this time
DeclareOperation( "HighestPrimePower", [IsPosInt,IsInt]);
#############################################################################
##
#W  partitions.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains declarations related to partition notation in Type A.
##
#############################################################################
#! @Section Contents of partitions.gd

#!
DeclareOperation("CompositionToWeight", [IsList]);

#!
DeclareOperation("WeightToComposition", [IsInt, IsList]);

#!
DeclareOperation("BoundedPartitions", [IsInt, IsInt, IsInt]);

#!
DeclareOperation("BoundedPartitions", [IsInt, IsInt]);

#!
DeclareOperation("pRestrictedPartitions", [IsInt, IsInt]);

#!
DeclareOperation("AllPartitions", [IsInt]);

#!
DeclareOperation("Conjugate", [IsList]);

#!
DeclareOperation("pRestricted", [IsPosInt, IsList]);

#!
DeclareOperation("pRegular", [IsPosInt, IsList]);

#!
DeclareOperation("Mullineux", [IsPosInt, IsList]);

#!
DeclareOperation("pRegularPartitions", [IsPosInt, IsPosInt]);

#############################################################################
##
#W  quotient.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains declarations for quotients of Weyl modules.
##
#############################################################################
#! @Section Contents of quotient.gd

#!
DeclareCategory( "IsQuotientWeylModule", 
  CategoryCollections(IsLeftAlgebraModuleElement) );

#!
DeclareOperation( "QuotientWeylModule", [IsSubWeylModule] );

#!
DeclareOperation( "AmbientWeylModule", [IsQuotientWeylModule]);

#!
DeclareOperation( "DefiningKernel", [IsQuotientWeylModule]);

#!
DeclareAttribute( "IsAmbiguous",  IsQuotientWeylModule );

#!
DeclareAttribute( "AmbiguousMaxVecs",  IsQuotientWeylModule );

#!
DeclareAttribute( "TheLieAlgebra", IsQuotientWeylModule );

#!
DeclareOperation( "TheCharacteristic", [IsQuotientWeylModule]);

#!
DeclareOperation( "BasisVecs", [IsQuotientWeylModule]);

#!
DeclareOperation( "Generator", [IsQuotientWeylModule]);

#!
DeclareAttribute( "Dim", IsQuotientWeylModule );

#!
DeclareAttribute( "Weights", IsQuotientWeylModule );

#!
DeclareAttribute( "DominantWeights", IsQuotientWeylModule );

#!
DeclareAttribute( "WeightSpaces", IsQuotientWeylModule );

#!
DeclareAttribute( "Character", IsQuotientWeylModule );

#!
DeclareAttribute( "DominantWeightSpaces", IsQuotientWeylModule );

#!
DeclareOperation( "WeightSpace", [IsQuotientWeylModule,IsList]);

#!
DeclareOperation( "ActOn", [IsQuotientWeylModule,IsUEALatticeElement,
           IsLeftAlgebraModuleElement]);

#!
DeclareOperation( "MaximalVectors", [IsQuotientWeylModule,IsList]);

#!
DeclareAttribute( "MaximalVectors", IsQuotientWeylModule );

#!
DeclareAttribute( "SocleSeries", IsQuotientWeylModule );

#!
DeclareAttribute( "GensSocleLayers", IsQuotientWeylModule );

#!
DeclareOperation( "PrintSocleLayers", [IsQuotientWeylModule] );

#!
DeclareAttribute("DecompositionNumbers", IsQuotientWeylModule );
#############################################################################
##
#W  schuralgebras.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains declarations for Schur algebra Weyl modules.
##
#############################################################################
#! @Section Contents of schuralgebra.gd

#!
DeclareCategory("IsSchurAlgebraWeylModule", IsWeylModule );

#!
DeclareOperation("SchurAlgebraWeylModule", [IsInt, IsList]);

###########################################################################
#note - the following operation has ALREADY been declared, so no need 
#to declare it again...

#DeclareOperation("DecompositionNumbers", [IsSchurAlgebraWeylModule]);

#doing so leads to a warning error, but everything still works.
###########################################################################

#!
DeclareOperation("SchurAlgebraDecompositionMatrix", [IsInt, IsInt, IsInt]);

#!
DeclareOperation("SymmetricGroupDecompositionNumbers", [IsInt, IsList]);

#!
DeclareOperation("SymmetricGroupDecompositionMatrix", [IsInt, IsInt]);
#############################################################################
##
#W  submodule.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains declarations for submodules of Weyl modules.
##
#############################################################################
#! @Section Contents of submodule.gd

#!
DeclareCategory( "IsSubWeylModule", 
    CategoryCollections(IsLeftAlgebraModuleElement) );

#!
DeclareOperation( "SubWeylModule", [IsWeylModule,IsLeftAlgebraModuleElement]);

#!
DeclareOperation( "SubWeylModule",
     [IsSubWeylModule,IsLeftAlgebraModuleElement]);

#!
DeclareOperation("SubWeylModule", [IsWeylModule,IsList]);

#!
DeclareOperation("SubWeylModule", [IsSubWeylModule,IsList]);

#!
DeclareOperation("SubWeylModuleDirectSum", [IsWeylModule,IsList]);

#!
DeclareAttribute( "IsAmbiguous", IsSubWeylModule );

#!
DeclareAttribute( "AmbiguousMaxVecs", IsSubWeylModule );

#!
DeclareOperation("Generators", [IsSubWeylModule]);

#!
DeclareOperation("BasisVecs", [IsSubWeylModule]);

#!
DeclareAttribute("Dim", IsSubWeylModule );

#!
DeclareOperation("AmbientWeylModule", [IsSubWeylModule]);

#!
DeclareOperation("TheCharacteristic", [IsSubWeylModule] );

#!
DeclareAttribute("TheLieAlgebra", IsSubWeylModule );

#!
DeclareAttribute("Weights", IsSubWeylModule );

#!
DeclareAttribute("DominantWeights", IsSubWeylModule );

#!
DeclareAttribute("WeightSpaces", IsSubWeylModule );

#!
DeclareAttribute("Character", IsSubWeylModule );

#!
DeclareAttribute("DominantWeightSpaces", IsSubWeylModule );

#!
DeclareOperation("WeightSpace", [IsSubWeylModule,IsList]);

# The following command is not documented at this time
DeclareOperation("SubWeylModule", [IsWeylModule,IsPosInt,IsPosInt,IsList]);

#!
DeclareOperation( "MaximalVectors", [IsSubWeylModule,IsList]);

#!
DeclareAttribute( "MaximalVectors", IsSubWeylModule );

#!
DeclareOperation( "IsWithin", [IsSubWeylModule,IsLeftAlgebraModuleElement]);

#!
DeclareAttribute("SocleWeyl", IsWeylModule );

#!
DeclareOperation("NextSocle", [IsSubWeylModule]);

#!
DeclareOperation("GensNextSocle", [IsSubWeylModule]);

#!
DeclareAttribute("DecompositionNumbers", IsSubWeylModule );

#!
DeclareOperation("LengthTwoQuotient", [IsWeylModule,IsSubWeylModule] );

#!
DeclareOperation("Extensions", [IsWeylModule,IsSubWeylModule] );
#############################################################################
##
#W  subquotient.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains declarations for submodules of quotient Weyl modules.
##
#############################################################################
#! @Section Contents of subquotient.gd

#!
DeclareCategory( "IsSubQuotientWeylModule", 
  CategoryCollections(IsLeftAlgebraModuleElement) );

#!
DeclareOperation( "IsWithin", 
            [IsSubQuotientWeylModule,IsLeftAlgebraModuleElement]);

#!
DeclareOperation( "SubWeylModule", 
            [IsQuotientWeylModule,IsLeftAlgebraModuleElement]);

#!
DeclareOperation( "SubWeylModule", 
            [IsSubQuotientWeylModule,IsLeftAlgebraModuleElement]);

#!
DeclareOperation( "SubWeylModule", [IsQuotientWeylModule,IsList]);

#!
DeclareOperation( "SubWeylModule", [IsSubQuotientWeylModule,IsList]);

#!
DeclareOperation("SubWeylModuleDirectSum", [IsQuotientWeylModule,IsList]);

#!
DeclareOperation("Generators", [IsSubQuotientWeylModule]);

#!
DeclareOperation("BasisVecs", [IsSubQuotientWeylModule]);

#!
DeclareAttribute("Dim", IsSubQuotientWeylModule );

#!
DeclareOperation("AmbientQuotient", [IsSubQuotientWeylModule]);

#!
DeclareOperation("TheCharacteristic", [IsSubQuotientWeylModule]);

#!
DeclareAttribute("TheLieAlgebra", IsSubQuotientWeylModule );

#!
DeclareAttribute("Weights", IsSubQuotientWeylModule );

#!
DeclareAttribute("DominantWeights", IsSubQuotientWeylModule );

#!
DeclareAttribute("WeightSpaces", IsSubQuotientWeylModule );

#!
DeclareAttribute("Character", IsSubQuotientWeylModule );

#!
DeclareAttribute("DominantWeightSpaces", IsSubQuotientWeylModule );

#!
DeclareOperation("WeightSpace", [IsSubQuotientWeylModule,IsList]);

#!
DeclareAttribute("SocleWeyl", IsQuotientWeylModule );

#!
DeclareOperation("NextSocle", [IsSubQuotientWeylModule]);

#!
DeclareAttribute("DecompositionNumbers", IsSubQuotientWeylModule );

#############################################################################
##
#W  weylmod.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains the declaration of attributes, properties, and
##  operations for Weyl modules.
##
#############################################################################
#! @Section Contents of weylmodules.gd

#!
DeclareCategory( "IsWeylModule", 
  CategoryCollections(IsLeftAlgebraModuleElement) );

#!
DeclareOperation( "WeylModule", [IsPosInt, IsList, IsString, IsPosInt] );

#!
DeclareOperation( "WeylModule", [IsWeylModule,IsList] );

#!
DeclareAttribute( "IsAmbiguous",  IsWeylModule );

#!
DeclareAttribute( "AmbiguousMaxVecs", IsWeylModule );

#!
DeclareAttribute( "TheLieAlgebra",  IsWeylModule );

#!
DeclareOperation( "TheCharacteristic", [IsWeylModule]); 

#!
DeclareOperation( "BasisVecs", [IsWeylModule]);

#!
DeclareOperation( "Generator", [IsWeylModule]);

#!
DeclareAttribute( "Dim", IsWeylModule );

#!
DeclareAttribute( "Weights", IsWeylModule );

#!
DeclareAttribute( "DominantWeights", IsWeylModule );

#!
DeclareOperation( "WeightSpace", [IsWeylModule,IsList]);

#!
DeclareAttribute( "WeightSpaces", IsWeylModule );

#!
DeclareOperation("ActOn", 
     [IsWeylModule, IsUEALatticeElement, IsLeftAlgebraModuleElement]);

#!
DeclareAttribute( "DominantWeightSpaces", IsWeylModule );

#!
DeclareAttribute( "Character", IsWeylModule );

# The following operation is not documented at this time
DeclareOperation( "RowVec", [IsWeylModule,IsLeftAlgebraModuleElement]);

#!
DeclareOperation( "SimpleLieAlgGens", [IsWeylModule]);

#!
DeclareOperation( "IsMaximalVector", [IsWeylModule,IsLeftAlgebraModuleElement]);

#!
DeclareOperation( "MaximalVectors", [IsWeylModule,IsList]);

#!
DeclareAttribute( "MaximalVectors", IsWeylModule );

#!
DeclareAttribute("SocleSeries", IsWeylModule );

#!
DeclareAttribute("GensSocleLayers", IsWeylModule );

#!
DeclareOperation("PrintSocleLayers", [IsWeylModule] );

#!
DeclareAttribute("SimpleQuotient", IsWeylModule );

#!
DeclareAttribute("MaximalSubmodule", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorCharacter", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorDim", IsWeylModule );

#!
DeclareAttribute("DecompositionNumbers", IsWeylModule );

#!
DeclareAttribute("LengthTwoQuotient", IsWeylModule );

#!
DeclareOperation("LengthTwoQuotient", 
                 [IsWeylModule,IsLeftAlgebraModuleElement] );

#!
DeclareOperation("LengthTwoQuotient", 
                 [IsWeylModule,IsList] );




