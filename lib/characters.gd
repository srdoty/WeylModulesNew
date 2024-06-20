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
#! @Group DecomposeCharacter
#! @Returns a list (of simple highest weights and their multiplicities)
#! @Arguments ch,p,typ,rk
#! @Description
#! If <A>ch</A> is a given character (of some module) then this function
#! computes the multiplicities of the simple characters in <A>ch</A>, thus
#! obtaining the decomposition numbers of the module. Here it is necessary
#! to specify the characteristic <A>p</A> and root system 
#! (of type <A>typ</A> and rank <A>rk</A>) for the simple characters.
#! For instance, this can be used to decompose tensor products.
#! @BeginExampleSession
#! gap> V:= WeylModule(2,[2,0],"A",2);
#! V[ 2, 0 ]
#! gap> ch:= ProductCharacter(Character(V),Character(V));
#! [ [ 4, 0 ], 1, [ 2, 1 ], 2, [ 3, -1 ], 2, [ 0, 2 ], 3, [ 1, 0 ], 4, 
#!   [ 2, -2 ], 3, [ -2, 3 ], 2, [ -1, 1 ], 4, [ 0, -1 ], 4, [ 1, -3 ], 2, 
#!   [ -4, 4 ], 1, [ -3, 2 ], 2, [ -2, 0 ], 3, [ -1, -2 ], 2, [ 0, -4 ], 1 ]
#! gap> DecomposeCharacter(ch,2,"A",2);
#! [ [ 4, 0 ], 1, [ 2, 1 ], 2, [ 0, 2 ], 3, [ 1, 0 ], 2 ]
#! @EndExampleSession
DeclareOperation("DecomposeCharacter", [IsList, IsPosInt,
    IsString, IsPosInt]);

#! @ChapterInfo Weights and Characters, Characters
#! @Group DifferenceCharacter
#! @Returns a list (a character)
#! @Arguments ch1,ch2
#! @Description
#! If <A>ch1</A> and <A>ch2</A> are given characters, this function 
#! returns their formal difference character. It is used in the 
#! definition of the `DecomposeCharacter` function.
#! @BeginExampleSession
#! gap> DifferenceCharacter(Character(V),Character(V));
#! [  ]
#! @EndExampleSession
#! The empty list here implements the zero character.
DeclareOperation( "DifferenceCharacter", [IsList,IsList]);

#! @ChapterInfo Weights and Characters, Characters
#! @Group ProductCharacter
#! @Returns a list (a character)
#! @Arguments ch1,ch2
#! @Description
#! Returns the product character of its inputs  <A>ch1</A> and <A>ch2</A>. 
#! If <A>ch1</A> and <A>ch2</A> are characters of modules then the output
#! of this function is the character of the tensor product of the modules.
#! @BeginExampleSession
#! gap> V:= WeylModule(2,[2,0],"A",2);
#! V[ 2, 0 ]
#! gap> ch:= ProductCharacter(Character(V),Character(V));
#! [ [ 4, 0 ], 1, [ 2, 1 ], 2, [ 3, -1 ], 2, [ 0, 2 ], 3, [ 1, 0 ], 4, 
#!   [ 2, -2 ], 3, [ -2, 3 ], 2, [ -1, 1 ], 4, [ 0, -1 ], 4, [ 1, -3 ], 2, 
#!   [ -4, 4 ], 1, [ -3, 2 ], 2, [ -2, 0 ], 3, [ -1, -2 ], 2, [ 0, -4 ], 1 ]
#! @EndExampleSession
#! By applying the function <Ref Oper="DecomposeCharacter"/> we can 
#! decompose tensor products in positive characteristic.
DeclareOperation("ProductCharacter", [IsList,IsList]);

#! @ChapterInfo Weights and Characters, Characters
#! @Group SimpleCharacter
#! @Returns a list (a character)
#! @Arguments p,wt,typ,rk
#! @Description
#! Computes the simple character of highest weight <A>wt</A> in 
#! characteristic <A>p</A>. The arguments <A>typ</A> and <A>rk</A> specify
#! the type and rank of the underlying root system. The function uses
#! Steinberg's tensor product theorem. 
#! @BeginExampleSession
#! gap> SimpleCharacter(2,[2,0],"A",2);
#! [ [ 2, 0 ], 1, [ -2, 2 ], 1, [ 0, -2 ], 1 ]
#! @EndExampleSession
#! Another way to compute the same result is to compute the `Character`
#! of the output of `SimpleQuotient(V)`, where `V` is the WeylModule in
#! the same characteristic and root system with the same highest weight.
#! @BeginExampleSession
#! gap> V:= WeylModule(2,[2,0],"A",2);
#! V[ 2, 0 ]
#! gap> Character(SimpleQuotient(V));
#! [ [ 2, 0 ], 1, [ -2, 2 ], 1, [ 0, -2 ], 1 ]
#! @EndExampleSession
DeclareOperation( "SimpleCharacter", [IsPosInt, IsList, IsString, IsPosInt] );

