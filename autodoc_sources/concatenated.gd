# THIS FILE IS ONLY FOR GENERATING DOCUMENTATION AUTOMATICALLY!!!!!
# IT WAS CREATED BY CONCATENATING THE .gd FILES IN lib IN THEIR LOAD
# ORDER, AND THEN ADDING AUTODOC COMMENTS.
#
# IF YOU CHANGE THE lib FOLDER THEN YOU MAY NEED TO RECREATE
# THIS FILE.
#
#############################################################################
##
#W  weylmod.gd                   GAP package              S.R. Doty
##
##
#Y  Copyright (C)  2009,  S.R. Doty
##
##  This file contains the declaration of attributes, properties, and
##  operations for Weyl modules, simple characters, etc.
##
#############################################################################

#! @Chapter Reference: Declarations by File

#! This chapter documents the declarations by file in the <F>lib</F> folder,
#! following the load order specified in the file <F>init.g</F>. This is
#! provided mainly to aid in subsequent development efforts.

#! @Section Contents of weylmodules.gd

#!
DeclareCategory( "IsWeylModule", 
  CategoryCollections(IsLeftAlgebraModuleElement) );
#!
DeclareOperation( "WeylModule", [IsPosInt, IsList, IsString, IsPosInt] );
#!
DeclareOperation( "WeylModule", [IsWeylModule,IsList] );
#!
DeclareOperation( "IsAmbiguous",  [IsWeylModule]);
#!
DeclareOperation( "AmbiguousMaxVecs",  [IsWeylModule]);
#!
DeclareOperation( "TheLieAlgebra",  [IsWeylModule]);
#!
DeclareOperation( "TheCharacteristic", [IsWeylModule]); 
#!
DeclareOperation( "BasisVecs", [IsWeylModule]);
#!
DeclareOperation( "Generator", [IsWeylModule]);
#!
DeclareOperation( "Dim", [IsWeylModule]);
#!
DeclareOperation( "Weights", [IsWeylModule]);
#!
DeclareOperation( "DominantWeights", [IsWeylModule]);
#!
DeclareOperation( "WeightSpace", [IsWeylModule,IsList]);
#!
DeclareOperation( "WeightSpaces", [IsWeylModule]);
#!
DeclareOperation("ActOn", 
     [IsWeylModule, IsUEALatticeElement, IsLeftAlgebraModuleElement]);
#!
DeclareOperation( "DominantWeightSpaces", [IsWeylModule]);
#!
DeclareOperation( "Character", [IsWeylModule]);
# The following operation is not documented at this time
DeclareOperation( "RowVec", [IsWeylModule,IsLeftAlgebraModuleElement]);
#!
DeclareOperation( "SimpleLieAlgGens", [IsWeylModule]);
#!
DeclareOperation( "IsMaximalVector", [IsWeylModule,IsLeftAlgebraModuleElement]);
#!
DeclareOperation( "MaximalVectors", [IsWeylModule,IsList]);
#!
DeclareOperation( "MaximalVectors", [IsWeylModule]);
#!
DeclareOperation("SocleSeries", [IsWeylModule]);
#!
DeclareOperation("SimpleQuotient", [IsWeylModule]);
#!
DeclareOperation("MaximalSubmodule", [IsWeylModule]);

# The following command is not documented at this time
DeclareOperation("SimpleTopFactorCharacter", [IsWeylModule]);

# The following command is not documented at this time
DeclareOperation("SimpleTopFactorDim", [IsWeylModule]);
#!
DeclareOperation("DecompositionNumbers", [IsWeylModule]);





###################### submodule.gd starts here #########################

#! @Section Contents of submodules.gd

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
DeclareOperation("SubWeylModuleDirectSum", [IsWeylModule,IsList]);
#!
DeclareOperation( "IsAmbiguous",  [IsSubWeylModule]);
#!
DeclareOperation( "AmbiguousMaxVecs",  [IsSubWeylModule]);
#!
DeclareOperation("Generators", [IsSubWeylModule]);
#!
DeclareOperation("BasisVecs", [IsSubWeylModule]);
#!
DeclareOperation("Dim", [IsSubWeylModule]);
#!
DeclareOperation("AmbientWeylModule", [IsSubWeylModule]);
#!
DeclareOperation("Weights", [IsSubWeylModule]);
#!
DeclareOperation("DominantWeights", [IsSubWeylModule]);
#!
DeclareOperation("WeightSpaces", [IsSubWeylModule]);
#!
DeclareOperation("Character", [IsSubWeylModule]);
#!
DeclareOperation("DominantWeightSpaces", [IsSubWeylModule]);
#!
DeclareOperation("WeightSpace", [IsSubWeylModule,IsList]);

# The following command is not documented at this time
DeclareOperation("SubWeylModule", [IsWeylModule,IsPosInt,IsPosInt,IsList]);
#!
DeclareOperation("IsMaximalVector", 
        [IsSubWeylModule,IsLeftAlgebraModuleElement]);
#!
DeclareOperation( "MaximalVectors", [IsSubWeylModule,IsList]);
#!
DeclareOperation( "MaximalVectors", [IsSubWeylModule]);
#!
DeclareOperation( "IsWithin", [IsSubWeylModule,IsLeftAlgebraModuleElement]);
#!
DeclareOperation("SocleWeyl", [IsWeylModule]);
#!
DeclareOperation("NextSocle", [IsSubWeylModule]);
#!
DeclareOperation("GensNextSocle", [IsSubWeylModule]);




######################## characters.gd follows #########################
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



################### misc.gd follows ####################################
#! @Section Contents of misc.gd

# The following function is not documented at this time
DeclareOperation( "HighestPrimePower", [IsPosInt,IsInt]);




################### partitions.gd follows ##############################
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



############################ quotient.gd follows ####################
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
DeclareOperation( "IsAmbiguous",  [IsQuotientWeylModule]);
#!
DeclareOperation( "AmbiguousMaxVecs",  [IsQuotientWeylModule]);
#!
DeclareOperation( "TheLieAlgebra", [IsQuotientWeylModule]);
#!
DeclareOperation( "TheCharacteristic", [IsQuotientWeylModule]);
#!
DeclareOperation( "BasisVecs", [IsQuotientWeylModule]);
#!
DeclareOperation( "Generator", [IsQuotientWeylModule]);
#!
DeclareOperation( "Dim", [IsQuotientWeylModule]);
#!
DeclareOperation( "Weights", [IsQuotientWeylModule]);
#!
DeclareOperation( "DominantWeights", [IsQuotientWeylModule]);
#!
DeclareOperation( "WeightSpaces", [IsQuotientWeylModule]);
#!
DeclareOperation( "Character", [IsQuotientWeylModule]);
#!
DeclareOperation( "DominantWeightSpaces", [IsQuotientWeylModule]);
#!
DeclareOperation( "WeightSpace", [IsQuotientWeylModule,IsList]);
#!
DeclareOperation( "ActOn", [IsQuotientWeylModule,IsUEALatticeElement,
           IsLeftAlgebraModuleElement]);
#!
DeclareOperation( "MaximalVectors", [IsQuotientWeylModule,IsList]);
#!
DeclareOperation( "MaximalVectors", [IsQuotientWeylModule]);
#!
DeclareOperation( "SocleSeries", [IsQuotientWeylModule]);



##################### schuralgebra.gd follows ##########################
#! @Section Contents of schuralgebras.gd

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



###################### subquotient.gd follows ##########################
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
DeclareOperation( "SubWeylModule", 
            [IsQuotientWeylModule,IsList]);
#!
DeclareOperation("SubWeylModuleDirectSum", [IsQuotientWeylModule,IsList]);
#!
DeclareOperation("Generators", [IsSubQuotientWeylModule]);
#!
DeclareOperation("BasisVecs", [IsSubQuotientWeylModule]);
#!
DeclareOperation("Dim", [IsSubQuotientWeylModule]);
#!
DeclareOperation("AmbientQuotient", [IsSubQuotientWeylModule]);
#!
DeclareOperation("Weights", [IsSubQuotientWeylModule]);
#!
DeclareOperation("WeightSpaces", [IsSubQuotientWeylModule]);
#!
DeclareOperation("Character", [IsSubQuotientWeylModule]);
#!
DeclareOperation("DominantWeightSpaces", [IsSubQuotientWeylModule]);
#!
DeclareOperation("WeightSpace", [IsSubQuotientWeylModule,IsList]);
#!
DeclareOperation("SocleWeyl", [IsQuotientWeylModule]);
#!
DeclareOperation("NextSocle", [IsSubQuotientWeylModule]);
