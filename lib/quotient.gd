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

#! @ChapterInfo Weyl_modules, Operations on quotients
#! @Returns a Weyl module
#! @Arguments Q
#! @Group Ambient4Q
#! @Description
#! This returns the ambient Weyl module <K>V</K> corresponding to the given 
#! quotient <A>Q</A>.  
DeclareOperation( "AmbientWeylModule", [IsQuotientWeylModule]);

#! @ChapterInfo Weyl_modules, Operations on quotients
#! @Returns a submodule
#! @Arguments Q
#! @Group DefiningKernel
#! @Description
#! This returns the kernel corresponding to the given 
#! quotient <A>Q</A>. In other words, it returns the submodule <K>S</K>
#! such that $Q$ is isomorphic to $V/S$, where <K>V</K> is the ambient 
#! Weyl module.
DeclareOperation( "DefiningKernel", [IsQuotientWeylModule]);

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Arguments Q
#! @Group IsAmbiguous
DeclareAttribute( "IsAmbiguous",  IsQuotientWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Arguments Q
#! @Group AmbiguousMaxVecs
DeclareAttribute( "AmbiguousMaxVecs",  IsQuotientWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments Q
#! @Group TheLieAlgebra
DeclareAttribute( "TheLieAlgebra", IsQuotientWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments Q
#! @Group TheCharacteristic
DeclareOperation( "TheCharacteristic", [IsQuotientWeylModule]);

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments Q
#! @Group BasisVecs
DeclareOperation( "BasisVecs", [IsQuotientWeylModule]);

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Arguments Q
#! @Group Generator
DeclareOperation( "Generator", [IsQuotientWeylModule]);

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments Q
#! @Group Dim
DeclareAttribute( "Dim", IsQuotientWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments Q
#! @Group Weights
DeclareAttribute( "Weights", IsQuotientWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments Q
#! @Group DominantWeights
DeclareAttribute( "DominantWeights", IsQuotientWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments Q
#! @Group WeightSpaces
DeclareAttribute( "WeightSpaces", IsQuotientWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments Q
#! @Group Character
DeclareAttribute( "Character", IsQuotientWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments Q
#! @Group DominantWeightSpaces
DeclareAttribute( "DominantWeightSpaces", IsQuotientWeylModule );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments Q,wt
#! @Group WeightSpace
DeclareOperation( "WeightSpace", [IsQuotientWeylModule,IsList]);

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Arguments Q,u,v
#! @Group ActOn
DeclareOperation( "ActOn", [IsQuotientWeylModule,IsUEALatticeElement,
           IsLeftAlgebraModuleElement]);

#! @ChapterInfo Weyl modules, Three types
#! @Arguments Q,wt
#! @Group MaximalVectors
DeclareOperation( "MaximalVectors", [IsQuotientWeylModule,IsList]);

#! @ChapterInfo Weyl modules, Three types
#! @Arguments Q
#! @Group MaximalVectors
DeclareAttribute( "MaximalVectors", IsQuotientWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Arguments Q
#! @Group SocleSeries
DeclareAttribute( "SocleSeries", IsQuotientWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Arguments Q
#! @Group GensSocleLayers
DeclareAttribute( "GensSocleLayers", IsQuotientWeylModule );

#! @ChapterInfo Weyl modules, Operations on Weyl modules and their quotients
#! @Arguments Q
#! @Group PrintSocleLayers
DeclareOperation( "PrintSocleLayers", [IsQuotientWeylModule] );

#! @ChapterInfo Weyl modules, Operations common to all four types
#! @Arguments Q
#! @Group DecompositionNumbers
DeclareAttribute("DecompositionNumbers", IsQuotientWeylModule );
