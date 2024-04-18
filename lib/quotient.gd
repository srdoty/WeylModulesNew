#############################################################################
##
#W  quotient.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains declarations for quotients of Weyl modules.
##
#############################################################################


#! @ChapterInfo Weyl_modules, Filters
#! @Group IsQuotientWeylModule
#! @Arguments V
DeclareCategory( "IsQuotientWeylModule", 
  CategoryCollections(IsLeftAlgebraModuleElement) );

#! @ChapterInfo Weyl_modules, Constructors
#! @Group QuotientWeylModule
#! @Returns a QuotientWeylModule
#! @Arguments S
#! @Description
#! Constructs the quotient module $V/S$ corresponding to the given 
#! submodule <A>S</A>.  Here <K>V</K> is the ambient Weyl module of the 
#! given <A>S</A>. 
#! Quotient Weyl modules are attribute-storing objects.
DeclareOperation( "QuotientWeylModule", [IsSubWeylModule] );

#! @ChapterInfo Weyl_modules, Unique ops for quotients
#! @Returns a Weyl module
#! @Arguments Q
#! @Description
#! This returns the ambient Weyl module <K>V</K> corresponding to the given 
#! quotient <A>Q</A>.  
DeclareOperation( "AmbientWeylModule", [IsQuotientWeylModule]);

#! @ChapterInfo Weyl_modules, Unique ops for quotients
#! @Returns a submodule
#! @Arguments Q
#! @Description
#! This returns the kernel corresponding to the given 
#! quotient <A>Q</A>. In other words, it returns the submodule <K>S</K>
#! such that $Q$ is isomorphic to $V/S$, where <K>V</K> is the ambient 
#! Weyl module.
DeclareOperation( "DefiningKernel", [IsQuotientWeylModule]);


DeclareAttribute( "IsAmbiguous",  IsQuotientWeylModule );


DeclareAttribute( "AmbiguousMaxVecs",  IsQuotientWeylModule );


DeclareAttribute( "TheLieAlgebra", IsQuotientWeylModule );

DeclareOperation( "TheCharacteristic", [IsQuotientWeylModule]);


DeclareOperation( "BasisVecs", [IsQuotientWeylModule]);


DeclareOperation( "Generator", [IsQuotientWeylModule]);


DeclareAttribute( "Dim", IsQuotientWeylModule );


DeclareAttribute( "Weights", IsQuotientWeylModule );


DeclareAttribute( "DominantWeights", IsQuotientWeylModule );


DeclareAttribute( "WeightSpaces", IsQuotientWeylModule );


DeclareAttribute( "Character", IsQuotientWeylModule );


DeclareAttribute( "DominantWeightSpaces", IsQuotientWeylModule );


DeclareOperation( "WeightSpace", [IsQuotientWeylModule,IsList]);


DeclareOperation( "ActOn", [IsQuotientWeylModule,IsUEALatticeElement,
           IsLeftAlgebraModuleElement]);


DeclareOperation( "MaximalVectors", [IsQuotientWeylModule,IsList]);


DeclareAttribute( "MaximalVectors", IsQuotientWeylModule );


DeclareAttribute( "SocleSeries", IsQuotientWeylModule );


DeclareAttribute( "GensSocleLayers", IsQuotientWeylModule );


DeclareOperation( "PrintSocleLayers", [IsQuotientWeylModule] );


DeclareAttribute("DecompositionNumbers", IsQuotientWeylModule );
