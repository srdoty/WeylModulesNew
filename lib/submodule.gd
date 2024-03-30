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
