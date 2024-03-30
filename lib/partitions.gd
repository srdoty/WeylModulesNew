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

