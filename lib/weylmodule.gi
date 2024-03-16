#############################################################################
##
#W  weylmod.gi                   GAP package              S.R. Doty
##
##
#Y  Copyright (C)  2009,  S.R. Doty
##
##  This file contains the implementation of methods for
##  Weyl modules, simple characters, etc.
##
#############################################################################
InstallMethod(WeylModule, 
"for a prime <p>, a list <wt>, and a simple Lie algebra of type <t>, rank <r>",
true, [IsPosInt, IsList, IsString, IsPosInt], 0, 
function(p, wt, t, r) 
  local V, W, L;
  L:= SimpleLieAlgebra(t,r,Rationals);
  V:= HighestWeightModule(L, wt);
  W:= Objectify(NewType( FamilyObj(V), 
              IsWeylModule and IsAttributeStoringRep ), 
              rec(prime:=p,highestWeight:=wt,type:=t,rank:=r,module:=V)
              );
  return(W);
end );

#############################################################################
InstallMethod(WeylModule, 
"for a prime <p>, a list <wt>, and a simple Lie algebra of type <t>, rank <r>",
true, [IsWeylModule,IsList], 0, 
function(M, wt)
# returns a Weyl module of highest weight <wt> of the same type as <M>
# in particular, with the SAME underlying Lie algebra  
  local V, W, L,p,t,r;
  p:= M!.prime;
  t:= M!.type;
  r:= M!.rank;
  L:= SimpleLieAlgebra(t,r,Rationals);
  V:= HighestWeightModule(L, wt);
  W:= Objectify(NewType( FamilyObj(V), 
              IsWeylModule and IsAttributeStoringRep ), 
              rec(prime:=p,highestWeight:=wt,type:=t,rank:=r,module:=V)
              );
  return(W);
end );

#############################################################################
InstallMethod(PrintObj, "for Weyl modules", true, 
[IsWeylModule], 0, 
function(W)
  Print("V", W!.highestWeight);
end );

#############################################################################
InstallMethod(IsAmbiguous,  "for a Weyl module", true, 
[IsWeylModule], 0, 
function(W)
  if Length(AmbiguousMaxVecs(W)) > 0 then return true; fi;
  return false; # otherwise
end );

#############################################################################
InstallMethod(AmbiguousMaxVecs,  "for a Weyl module", true, 
[IsWeylModule], 0, 
function(W)
    local mvecs,out,k;
    out:= [ ];
    mvecs:= MaximalVectors(W);
    for k in [2..Length(mvecs)] do
        if Weight(mvecs[k-1]) = Weight(mvecs[k]) then 
            Add(out,mvecs[k-1]); Add(out,mvecs[k]);
        fi;
    od;
    return(DuplicateFreeList(out));
end );

#############################################################################
InstallMethod(TheLieAlgebra,  "for a Weyl module", true, 
[IsWeylModule], 0, 
function(W)
  local L,t,r;
  t:= W!.type;
  r:= W!.rank;
  L:= SimpleLieAlgebra(t,r,Rationals);
  return(L);
end );

#############################################################################
InstallMethod(TheCharacteristic,  "for a Weyl module", true, 
[IsWeylModule], 0, 
function(W)
  return(W!.prime);
end );

#############################################################################
InstallMethod(BasisVecs, "for a Weyl module", true, 
[IsWeylModule], 0, 
function(W)
 # returns the standard basis of <W>
 return BasisVectors(Basis(W!.module));
end );

#############################################################################
InstallMethod(Generator, "for a Weyl module", true, 
[IsWeylModule], 0, 
function(W)
 # returns the generator of <W>
 return BasisVecs(W)[1];
end );

#############################################################################
InstallMethod(Dim, "for Weyl modules", true, 
[IsWeylModule], 0, 
function(W)
 # returns the dimension of <W>
 return Length(BasisVecs(W));
end );

#############################################################################
InstallMethod(Weights, "for a Weyl module", true, 
[IsWeylModule], 0, 
function(V)
 # returns a list of the weight space labels of <V>
 return( DuplicateFreeList(List(BasisVecs(V), Weight)) );
end );

#############################################################################
InstallMethod(DominantWeights, "for a Weyl module", true, 
[IsWeylModule], 0, 
function(V)
 # returns a list of the dominant weight space labels of <V>
 local out,item;
 out:= [];
 for item in Weights(V) do
   if IsDominant(item) then Add(out, item); fi;
 od;
 return(out);
end );

#############################################################################
InstallMethod(WeightSpace, "for a Weyl module", true, 
[IsWeylModule,IsList], 0, 
function(V,wt)
 # returns a basis for the given weight space in <V> of weight <wt>
 local bb,out,b;
 bb:=BasisVecs(V); out:=[ ];
 for b in bb do
   if Weight(b) = wt then Add(out,b); fi;
 od;
 return(out);
end );

#############################################################################
InstallMethod(WeightSpaces, "for a Weyl module", true,
[IsWeylModule], 0,
function(V)
 # returns a list of the weights and weight spaces of <V>
 local wts,out,w;

 wts:=Weights(V);
 out:= [ ];
 for w in wts do
   Add(out, w);
   Add(out, WeightSpace(V,w));
 od;
 return(out);
end );

#############################################################################
InstallMethod(DominantWeightSpaces, "for a Weyl module", true, 
[IsWeylModule], 0, 
function(V)
 # returns a list of the dominant weight spaces of V
 local out, k, ws;
 out:= [ ];
 ws:= WeightSpaces(V);
 for k in [2,4..Length(ws)] do
   if IsDominant( ws[k-1] ) then 
     Add(out, ws[k-1]);
     Add(out, ws[k]);
   fi;
 od;
 return(out);
end );

#############################################################################
InstallMethod(ActOn, 
"for a Weyl module, an element of the hyperalgebra, and a vector",
true, [IsWeylModule, IsUEALatticeElement, IsLeftAlgebraModuleElement], 0, 
function(V, h, v) 
 # returns the result of acting by <h> on <v>
 local p;
 p:= TheCharacteristic(V);
 return ((h^v) mod p);
end );

#############################################################################
InstallMethod(Character, "for a Weyl module", true, 
[IsWeylModule], 0, 
function(V)
 # returns the character (a list of the weights and their multiplicities)
 # for the given WeyModule V
 local ws, k, out;
 out:= [ ];
 ws:= WeightSpaces(V);
 for k in [2,4..Length(ws)] do
   Add(out, ws[k-1]);
   Add(out, Length(ws[k]));
 od;
 return(out);
end );
   
#############################################################################
InstallMethod(RowVec,
"for a Weyl module and a given weight vector", true,
[IsWeylModule,IsLeftAlgebraModuleElement], 0, 
function(V,vec)
  # converts <vec> to a row vector with mod p coefficients
  local e,k,out,p;
  p:= V!.prime;
  out := [ ];
  for k in [1..Dim(V)] do Add(out, 0*Z(p)^0); od;
  e:= ExtRepOfObj(ExtRepOfObj(vec));
  for k in [2,4..Length(e)] do
     out[ e[k-1][1] ] := e[k]*Z(p)^0;
  od;
  return( out );
  end );

#############################################################################
InstallMethod(SimpleLieAlgGens,
"for a WeylModule", true,
[IsWeylModule], 0,
function(V)
   # returns xsimple & ysimple
   local L, rank, noPosRoots, k, g, xsimple, ysimple;
   L:= TheLieAlgebra(V);
   g:= LatticeGeneratorsInUEA( L );
   rank:= Length(CanonicalGenerators(RootSystem(L))[1]);
   noPosRoots:= Length(ChevalleyBasis(L)[1]);
   xsimple:= [ ]; ysimple:= [ ];
   for k in [1..rank] do 
     Add(ysimple, g[k]);
     Add(xsimple, g[k+noPosRoots]);
   od;
   return( [xsimple, ysimple] );
 end );

#############################################################################
InstallMethod(IsMaximalVector, "for a Weyl module and weight vector", true, 
[IsWeylModule,IsLeftAlgebraModuleElement], 0, 
function(V,vec)
 # Tests <vec> to see if it is maximal in <V>. Not used by any functions!
 # For now, keep for testing purposes. Deprecate later?   

 local rank,j,k,p,zerovec,height,xy,xsimple,ysimple;

 p:= V!.prime;
 xy:= SimpleLieAlgGens(V); xsimple:=xy[1]; ysimple:=xy[2];
 zerovec:= 0*vec;
 rank:= Length(xsimple);
 height:= HighestPrimePower(p, Sum(V!.highestWeight));
 for j in [1..rank] do 
     for k in [0..height] do 
       if not (xsimple[j]^(p^k)/Factorial(p^k))^vec mod p = zerovec then 
         return(false); fi;
     od;
 od;
 return(true);
end );

#############################################################################
# At the moment, operations depending on the following are not likely
# to work if we obtain more than one independent maximal vector in the
# given weight space. In such a case, the multiple maximal vectors in
# question are stored in the Weyl module, and a warning is printed.
#############################################################################
InstallMethod(MaximalVectors, "for a Weyl module and weight", true,
[IsWeylModule,IsList], 0, function(V,wt)
# Returns maximal vectors of a given weight space in a module, if possible

 local rank,i,j,k,p,height,vec,rowvec,finalmatrix,wtspace,
       item,outlist,result,join,S,matrix,xy,xsimple,ysimple,z;

 join:= function(A,B)
   # Given matrices A,B compute an augmented matrix M such that the
   # left nullspace of M equals the intersection of the left nullspaces
   # of A and B. 
   local tA,tB,CS,vec,p; 
   p:= V!.prime;
   tA:= TransposedMatMutable(A); tB:= TransposedMatMutable(B);
   if Length(tA) = 0 then tA:= tB; fi;
   CS:= VectorSpace(GF(p),tA);
   for vec in tB do
     if not vec in CS then 
       Add(tA, vec);
       CS:= VectorSpace(GF(p),tA);
     fi;
   od;
   return( TransposedMatMutable(tA) );
   end; 

 p:= V!.prime;
 wtspace:= WeightSpace(V,wt);
 xy:= SimpleLieAlgGens(V); xsimple:=xy[1]; ysimple:=xy[2];
 rank:= Length(xsimple);
 height:= HighestPrimePower(p, Sum(V!.highestWeight));
 finalmatrix:= [];
 for j in [1..rank] do 
   for k in [0..height] do
     matrix:= []; 
     for vec in wtspace do
       rowvec:= RowVec(V, (xsimple[j]^(p^k)/Factorial(p^k))^vec mod p );
       Add(matrix, rowvec);
     od;
     finalmatrix:= join(finalmatrix, matrix); 
   od;
 od;
 
 z:= NullspaceMatDestructive(finalmatrix);
 outlist:= [];
 for item in z do
   result:= 0*wtspace[1];
   for i in [1..Length(item)] do
     result:= result + IntFFESymm(item[i])*wtspace[i];
   od;
   Add(outlist, result);
 od;
 return(outlist);
end );  


#############################################################################
InstallMethod(MaximalVectors, "for a Weyl module", true, 
[IsWeylModule], 0, 
function(V)
 # Finds a maximal vector in each weight space of given Weyl module <V>, 
 # if possible 
 local k,max,wts,out;
   wts:= DominantWeights(V);
   out:= [ ];
   for k in [1..Length(wts)] do
     max:= MaximalVectors(V,wts[k]);
     if Length(max) > 0 then
       Append(out, max);
     fi;
   od;
   return( out );
end );

#############################################################################
InstallMethod(SocleSeries, "for a Weyl module", true, [IsWeylModule], 0, 
function(V)
 # Returns the socle series of V

 local S, ans;

 S:= SocleWeyl(V);
 ans:= [S];
 
 while Dim(S) < Dim(V) do
   S:= NextSocle(S);
   Add(ans,S);
 od;
 return ans;
end );

#############################################################################
InstallMethod(GensSocleLayers, "for a Weyl module", true, [IsWeylModule], 0,
function(V)
    #returns a list of lists of generators of the socle layers
    local ss, soc, k, out, all, start;
    ss:= SocleSeries(V);
    out:=[ Generators(ss[1]) ];
    for k in [2..Length(ss)] do
        all:= Generators(ss[k]);
        start:= 1 + Length(Generators(ss[k-1]));
        Add(out, all{[start..Length(all)]});
    od;
    return(out);
end );

InstallMethod(PrintSocleLayers, "for a Weyl module", true, [IsWeylModule], 0,
function(V)
    # prints the highest weights of the composition factors for 
    # each socle layer, one by one
    local sl, k;
    sl:= GensSocleLayers(V);
    Print( "Printing highest weights of simples in socle layers of ", V, "\n");
    for k in [1..Length(sl)] do
        Print("Layer ", k, ": ", List(sl[k], Weight), "\n");
    od;
end );
                      
#############################################################################
InstallMethod(SimpleQuotient, "for a Weyl module", true, 
[IsWeylModule], 0, 
function(V)
 # returns the quotient of the given Weyl module by the maximal submodule
 local mvecs,S,Q;

 S:=SubWeylModule(V,[ ]); # zero module
 mvecs:= MaximalVectors(V);
 if Length(mvecs) = 1 then
    return(QuotientWeylModule(S));
 fi;
    
 while Length(mvecs) > 1 do
    S:=SubWeylModule(S,mvecs[2]);
    Q:=QuotientWeylModule(S);
    mvecs:=MaximalVectors(Q);
 od;
 return(Q);
end );

#############################################################################
InstallMethod(MaximalSubmodule, "for a Weyl module", true,
[IsWeylModule], 0,
function(V)
 # returns the (unique) maximal submodule of <V>
 local Q;
 Q:=SimpleQuotient(V);
 return(DefiningKernel(Q));
end );

#############################################################################
InstallMethod(SimpleTopFactorCharacter, "for a Weyl module", true, 
[IsWeylModule], 0, 
function(V)
 # returns the character of the simple top factor of the given 
 # Weyl module
 return( Character(SimpleQuotient(V)) );
end );


#############################################################################
InstallMethod(SimpleTopFactorDim, "for a Weyl module", true, 
[IsWeylModule], 0, 
function(V)
 # returns the dimension of the simple top factor of the given 
 # Weyl module

 return( CharacterDim(SimpleTopFactorCharacter(V)) );
end );
 
#############################################################################
InstallMethod(DecompositionNumbers, "for a Weyl module", true, 
[IsWeylModule], 0, 
function(V)
 # returns the decomposition numbers of the given Weyl module

 local ch, p, t, r, m, wt, mult, ms, decnums;
 
 p:= TheCharacteristic(V);
 r:= V!.rank;
 t:=V!.type;
 ch:=Character(V);
 return DecomposeCharacter(ch,p,t,r);
end );     

#############################################################################
InstallMethod(LengthTwoQuotient, "for a Weyl module", true,
[IsWeylModule], 0, 
function(V)
 # returns a quotient of <V> with socle series of length two
 local ss,Q;
 ss:= SocleSeries(V);
 if Length(ss) = 2 then
    return(V);
 fi;
 if Length(ss) = 1 then
     Print("This module is simple - nothing to do!");
 fi;
 
 while Length(ss) > 2 do
    Q:=QuotientWeylModule(ss[Length(ss)-2]);
    ss:= SocleSeries(Q);
 od;
 return(Q);
end );

# Enhancement of the above:

InstallMethod(LengthTwoQuotient, "for a Weyl module and vector", true,
[IsWeylModule,IsLeftAlgebraModuleElement], 0,
function(V,vec)
 # returns a length <= 2 quotient of <V> with <vec> in its kernel
 local ss,S,Q,g;
 S:= SubWeylModule(V,vec);   
 Q:= QuotientWeylModule(S);
 ss:= SocleSeries(Q);
 
 while Length(ss) > 2 do
    g:=Generators(ss[Length(ss)-2]);
    Add(g,vec);   # make sure <vec> stays in the kernel
    S:=SubWeylModule(V,g);
    Q:=QuotientWeylModule(S);
    ss:= SocleSeries(Q);
 od;
 return(Q);
end );

InstallMethod(LengthTwoQuotient, "for a Weyl module and list of vectors", 
true, [IsWeylModule,IsList], 0,
function(V,veclist)
 # returns a length <= 2 quotient of <V> with <veclist> in its kernel
 local ss,S,Q,g;
 S:= SubWeylModule(V,veclist);   
 Q:= QuotientWeylModule(S);
 ss:= SocleSeries(Q);
 
 while Length(ss) > 2 do
    g:=Generators(ss[Length(ss)-2]);
    g:=Concatenation(g,veclist);   # make sure <veclist> stays in the kernel
    S:=SubWeylModule(V,g);
    Q:=QuotientWeylModule(S);
    ss:= SocleSeries(Q);
 od;
 return(Q);
end );

#############################################################################
