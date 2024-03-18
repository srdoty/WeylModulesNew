DeclareCategory( "IsSubQuotientWeylModule", 
  CategoryCollections(IsLeftAlgebraModuleElement) );

DeclareOperation( "IsWithin", 
            [IsSubQuotientWeylModule,IsLeftAlgebraModuleElement]);

DeclareOperation( "SubWeylModule", 
            [IsQuotientWeylModule,IsLeftAlgebraModuleElement]);

DeclareOperation( "SubWeylModule", 
            [IsSubQuotientWeylModule,IsLeftAlgebraModuleElement]);

DeclareOperation( "SubWeylModule", [IsQuotientWeylModule,IsList]);

DeclareOperation( "SubWeylModule", [IsSubQuotientWeylModule,IsList]);

DeclareOperation("SubWeylModuleDirectSum", [IsQuotientWeylModule,IsList]);

DeclareOperation("Generators", [IsSubQuotientWeylModule]);

DeclareOperation("BasisVecs", [IsSubQuotientWeylModule]);

DeclareAttribute("Dim", IsSubQuotientWeylModule );

DeclareOperation("AmbientQuotient", [IsSubQuotientWeylModule]);

DeclareAttribute("Weights", IsSubQuotientWeylModule );

DeclareAttribute("DominantWeights", IsSubQuotientWeylModule );

DeclareAttribute("WeightSpaces", IsSubQuotientWeylModule );

DeclareAttribute("Character", IsSubQuotientWeylModule );

DeclareAttribute("DominantWeightSpaces", IsSubQuotientWeylModule );

DeclareOperation("WeightSpace", [IsSubQuotientWeylModule,IsList]);

DeclareOperation("SocleWeyl", [IsQuotientWeylModule]);

DeclareOperation("NextSocle", [IsSubQuotientWeylModule]);

DeclareAttribute("DecompositionNumbers", IsSubQuotientWeylModule );

