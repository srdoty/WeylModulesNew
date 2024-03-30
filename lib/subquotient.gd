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

