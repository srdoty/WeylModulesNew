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
