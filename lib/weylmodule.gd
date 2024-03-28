#############################################################################
##
#W  weylmod.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains the declaration of attributes, properties, and
##  operations for Weyl modules.
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

DeclareAttribute( "MaximalVectors", IsWeylModule );

DeclareAttribute("SocleSeries", IsWeylModule );

DeclareAttribute("GensSocleLayers", IsWeylModule );

DeclareOperation("PrintSocleLayers", [IsWeylModule] );

DeclareAttribute("SimpleQuotient", IsWeylModule );

DeclareAttribute("MaximalSubmodule", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorCharacter", IsWeylModule );

# The following command is not documented at this time
DeclareAttribute("SimpleTopFactorDim", IsWeylModule );

DeclareAttribute("DecompositionNumbers", IsWeylModule );

DeclareAttribute("LengthTwoQuotient", IsWeylModule );

DeclareOperation("LengthTwoQuotient", 
                 [IsWeylModule,IsLeftAlgebraModuleElement] );

DeclareOperation("LengthTwoQuotient", 
                 [IsWeylModule,IsList] );




