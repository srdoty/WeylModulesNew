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

DeclareCategory( "IsWeylModule", 
  CategoryCollections(IsLeftAlgebraModuleElement) );

DeclareOperation( "WeylModule", [IsPosInt, IsList, IsString, IsPosInt] );

DeclareOperation( "WeylModule", [IsWeylModule,IsList] );

DeclareAttribute( "IsAmbiguous",  IsWeylModule );

DeclareAttribute( "AmbiguousMaxVecs", IsWeylModule );

DeclareAttribute( "TheLieAlgebra",  IsWeylModule );

DeclareOperation( "TheCharacteristic", [IsWeylModule]); 

DeclareOperation( "BasisVecs", [IsWeylModule]);

DeclareOperation( "Generator", [IsWeylModule]);

DeclareAttribute( "Dim", IsWeylModule );

DeclareAttribute( "Weights", IsWeylModule );

DeclareAttribute( "DominantWeights", IsWeylModule );

DeclareOperation( "WeightSpace", [IsWeylModule,IsList]);

DeclareAttribute( "WeightSpaces", IsWeylModule );

DeclareOperation("ActOn", 
     [IsWeylModule, IsUEALatticeElement, IsLeftAlgebraModuleElement]);

DeclareAttribute( "DominantWeightSpaces", IsWeylModule );

DeclareAttribute( "Character", IsWeylModule );

# The following operation is not documented at this time
DeclareOperation( "RowVec", [IsWeylModule,IsLeftAlgebraModuleElement]);

DeclareOperation( "SimpleLieAlgGens", [IsWeylModule]);

DeclareOperation( "IsMaximalVector", [IsWeylModule,IsLeftAlgebraModuleElement]);

DeclareOperation( "MaximalVectors", [IsWeylModule,IsList]);

DeclareOperation( "MaximalVectors", [IsWeylModule]);

DeclareAttribute("SocleSeries", IsWeylModule );

DeclareAttribute("SocleLayers", IsWeylModule );

DeclareAttribute("SimpleQuotient", IsWeylModule );

DeclareAttribute("MaximalSubmodule", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorCharacter", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorDim", IsWeylModule );

DeclareAttribute("DecompositionNumbers", IsWeylModule );



