#############################################################################
##
#W  characters.gd          WeylModules GAP package              S.R. Doty
##
##  This file contains the declarations related to characters of 
##  Weyl modules, weight spaces, simple characters, etc.
##
#############################################################################



# The following command is not documented at this time
DeclareOperation( "SortedCharacter", [IsList] );

#! @ChapterInfo Weights and Characters, Weights
#! @Returns a list of integers
#! @Arguments elt
#! @Description
#! The weight of the given element <A>elt</A> is calculated and returned.
#! @BeginExampleSession
#! gap> V:= WeylModule(3,[3,3],"A",2);
#! V[ 3, 3 ]
#! gap> m:= MaximalVectors(V);
#! [ 1*v0, y1*v0, y2*v0, y1^(2)*y2*v0, -1*y1*y2^(2)*v0+y2*y3*v0, 
#!   y1*y2*y3*v0+y1^(2)*y2^(2)*v0 ]
#! gap> Weight(m[2]);
#! [ 1, 4 ]
#! gap> List(m,Weight);
#! [ [ 3, 3 ], [ 1, 4 ], [ 4, 1 ], [ 0, 3 ], [ 3, 0 ], [ 1, 1 ] ]
#! @EndExampleSession
#! NOTE. 
#! The above trick of applying the `Weight` function across an entire list
#! <A>lst</A> of vectors, with the command `List(lst, Weight)`, 
#! is very useful in  many situations. This capability is built in to
#! the `List` function in &GAP;.
DeclareOperation( "Weight", [IsLeftAlgebraModuleElement]);

# The following command is not documented at this time
DeclareOperation( "IsDominant", [IsList]);

# The following command is not documented at this time
DeclareOperation( "CharacterDim", [IsList]);

# The following command is not documented at this time
DeclareOperation( "IsRestrictedWeight", [IsPosInt, IsList] );


#! @ChapterInfo Weights and Characters, Characters
#! @Returns a list (of simple highest weights and their multiplicities)
#! @Arguments ch,p,typ,rk
#! @Description
#! If <A>ch</A> is a given character (of some module) then this function
#! computes the multiplicities of the simple characters in <A>ch</A>, thus
#! obtaining the decomposition numbers of the module. Here it is necessary
#! to specify the characteristic <A>p</A> and root system 
#! (of type <A>typ</A> and rank <A>rk</A>) for the simple characters.
DeclareOperation("DecomposeCharacter", [IsList, IsPosInt,
    IsString, IsPosInt]);

#! @ChapterInfo Weights and Characters, Characters
#! @Returns a list (a character)
#! @Arguments ch1,ch2
#! @Description
#! If <A>ch1</A> and <A>ch2</A> are given characters, this function 
#! returns their formal difference character. It is used in the 
#! definition of the `DecomposeCharacter` function.
DeclareOperation( "DifferenceCharacter", [IsList,IsList]);

#! @ChapterInfo Weights and Characters, Characters
#! @Returns a list (a character)
#! @Arguments ch1,ch2
#! @Description
#! Returns the product character of its inputs  <A>ch1</A> and <A>ch2</A>. 
#! If <A>ch1</A> and <A>ch2</A> are characters of modules then the output
#! of this function is the character of the tensor product of the modules.
DeclareOperation("ProductCharacter", [IsList,IsList]);

#! @ChapterInfo Weights and Characters, Characters
#! @Returns a list (a character)
#! @Arguments p,wt,typ,rk
#! @Description
#! This computes the simple character of highest weight <A>wt</A> in 
#! characteristic <A>p</A>. The arguments <A>typ</A> and <A>rk</A> specify
#! the type and rank of the underlying root system. (See the following
#! for a variant of this function.)
DeclareOperation( "SimpleCharacter", [IsPosInt, IsList, IsString, IsPosInt] );

#! @ChapterInfo Weights and Characters, Characters
#! @Returns a list (a character)
#! @Arguments V,wt
#! @Description
#! If <A>V</A> is a given
#! Weyl module of highest weight <A>wt</A> 
#! then this function returns the character of its unique top
#! composition factor (that is, the character of the quotient by the unique
#! maximal submodule).
DeclareOperation( "SimpleCharacter", [IsWeylModule, IsList] );
