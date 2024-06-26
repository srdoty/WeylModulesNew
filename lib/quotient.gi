#############################################################################
##
#W  quotient.gi          WeylModules GAP package              S.R. Doty
##
##  This file contains operations for quotients of Weyl modules.
##
#############################################################################
InstallMethod(QuotientWeylModule, 
"for a sub Weyl module", true, [IsSubWeylModule], 0, 
function(S) 
 # creates the quotient V/S, where V is the ambient Weyl module
 local V,p,submodBasis, rowbasis,v,rowvec,
      VV,SS,Q,h,record,b,bb,cosetreps,vv,i,result;

 V:= S!.weylModule;
 if Dim(S) = 0 then
     record:= Objectify(NewType( FamilyObj(V), 
             IsQuotientWeylModule and IsAttributeStoringRep ), 
             rec(WeylModule:=V,kernel:=S,quotient:=V,homomorphism:=[], 
             cosetReps:=BasisVecs(V)) 
      );
      return(record);
 fi;

 p:= TheCharacteristic(V);
 submodBasis:= BasisVecs(S);
 rowbasis := S!.repbasis;
 SS:= VectorSpace(GF(p), rowbasis);
 VV:= GF(p)^Dim(V);
 Q:= VV/SS;
 h:= NaturalHomomorphismBySubspace(VV, SS);
 
 cosetreps:=[];
 b:= BasisVectors( Basis(Q) );
 bb:= BasisVecs(V);
 for v in b do
   vv:= PreImagesRepresentative(h, v);
   result:= 0*bb[1];
   for i in [1..Length(vv)] do
     result:= result + IntFFESymm(vv[i])*bb[i];
   od;
   Add(cosetreps, result);
 od;

 record:= Objectify(NewType( FamilyObj(V), 
             IsQuotientWeylModule and IsAttributeStoringRep ), 
             rec(WeylModule:=V,kernel:=S,quotient:=Q,homomorphism:=h, 
             cosetReps:=cosetreps) 
      );
 return(record);
end );

#############################################################################
InstallMethod(PrintObj, "for quotient Weyl modules", true, 
[IsQuotientWeylModule], 0, 
function(Q)
  local W;
  W:= Q!.WeylModule;
  Print(Dim(Q), "-dimensional quotient of ", W);
end );

#############################################################################
InstallMethod(AmbientWeylModule, "for quotient Weyl modules", true, 
[IsQuotientWeylModule], 0, 
function(Q)
 # returns the ambient Weyl module of <Q>
 return( Q!.WeylModule );
end );

#############################################################################
InstallMethod(DefiningKernel, "for quotient Weyl modules", true, 
[IsQuotientWeylModule], 0, 
function(Q)
 # returns the defining kernel of <Q>
 return( Q!.kernel );
end );

#############################################################################
InstallMethod(IsAmbiguous,  "for a quotient Weyl module", true, 
[IsQuotientWeylModule], 0, 
function(W)
    if Length(AmbiguousMaxVecs(W)) > 0 then return true; fi;
    return false;
end );

#############################################################################
InstallMethod(AmbiguousMaxVecs,  "for a quotient Weyl module", true, 
[IsQuotientWeylModule], 0, 
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
InstallMethod(TheLieAlgebra, "for quotient Weyl modules", true, 
[IsQuotientWeylModule], 0, 
function(W)
 # returns the underlying Lie algebra of <W>
 return( TheLieAlgebra(W!.WeylModule) );
end );

#############################################################################
InstallMethod(TheCharacteristic, "for quotient Weyl modules", true, 
[IsQuotientWeylModule], 0, 
function(W)
 # returns the characteristic of the base field
 return( TheCharacteristic(W!.WeylModule) );
end );

#############################################################################
InstallMethod(BasisVecs, "for quotient Weyl modules", true, 
[IsQuotientWeylModule], 0, 
function(W)
 # returns the standard basis of <W>
 return(W!.cosetReps);
end );

#############################################################################
InstallMethod(Generator, "for quotient Weyl modules", true, 
[IsQuotientWeylModule], 0, 
function(W)
 # returns the generator of <W>
 return BasisVecs(W)[1];
end );

#############################################################################
InstallMethod(Dim, "for quotient Weyl modules", true, 
[IsQuotientWeylModule], 0, 
function(W)
 # returns the dimension of <W>
 return Length(BasisVecs(W));
end );

#############################################################################
InstallMethod(Weights, "for a quotient Weyl module", true, 
[IsQuotientWeylModule], 0, 
function(V)
 # returns a list of the weight space labels of <V>
 return( DuplicateFreeList(List(BasisVecs(V), Weight)) );
end );

#############################################################################
InstallMethod(DominantWeights, "for a quotient Weyl module", true, 
[IsQuotientWeylModule], 0, 
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
InstallMethod(WeightSpaces, "for a quotient Weyl module", true,
[IsQuotientWeylModule], 0,
function(Q)
 # returns a list of the weight spaces of <Q>
 local wts,out,w;

 wts:=Weights(Q);
 out:= [ ];
 for w in wts do
   Add(out, w);
   Add(out, WeightSpace(Q,w));
 od;
 return(out);
end );

#############################################################################
InstallMethod(Character, "for a quotient Weyl module", true, 
[IsQuotientWeylModule], 0, 
function(V)
 # returns a list of the weights and multiplicities for V
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
InstallMethod(DominantWeightSpaces, "for a quotient Weyl module", true, 
[IsQuotientWeylModule], 0, 
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
InstallMethod(WeightSpace, "for a quotient Weyl module", true, 
[IsQuotientWeylModule,IsList], 0, 
function(Q,wt)
 # returns a basis for the given weight space in <Q> of weight <wt>
 local bb,out,b;
 bb:=BasisVecs(Q); out:=[ ];
 for b in bb do
   if Weight(b) = wt then Add(out,b); fi;
 od;
 return(out);
end );

#############################################################################
InstallMethod(ActOn, 
"for a quotient Weyl module, UEA element, and coset rep vector", true, 
[IsQuotientWeylModule,IsUEALatticeElement,IsLeftAlgebraModuleElement], 0, 
function(Q,x,v)
 # returns the result of acting by x on v
 local h,p,V,result,row,bb,vv,ans,i;

 V:= AmbientWeylModule(Q);
 h:= Q!.homomorphism;
 p:= V!.prime;
 result:= Image(h, RowVec(V, x^v mod p));
 
 bb:= BasisVecs(V);
 vv:= PreImagesRepresentative(h, result);
 ans:= 0*bb[1];
 for i in [1..Length(vv)] do
   ans:= ans + IntFFESymm(vv[i])*bb[i];
 od;
 return(ans);
end );


#############################################################################
InstallMethod(MaximalVectors, "for a quotient Weyl module and a weight", true, 
[IsQuotientWeylModule,IsList], 0, 
function(Q,wt)
 # Returns a relative maximal vector of a given weight space in a 
 # quotient Weyl module, if possible - relative to the <submodule> spanned
 # by the given <basis>. In other words, it produces a primitive vector, 
 # if one exists relative to <submodule>, in the given weight space. 
 
 local rank,i,j,k,p,height,highestPrimePower,vec,rowvec,finalmatrix,wtspace,
       item,outlist,result,join,row,S,matrix,simpleGens,xy,xsimple,ysimple,
       z,V;

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
 
 if not (wt in DominantWeights(Q)) then return []; fi;
 
 V:= AmbientWeylModule(Q);
 wtspace:= WeightSpace(Q,wt);
 p:= V!.prime;
 xy:= SimpleLieAlgGens(V); xsimple:=xy[1]; ysimple:=xy[2];
 rank:= Length(xsimple);
 height:= HighestPrimePower(p, Sum(V!.highestWeight));
 finalmatrix:= [];
 for j in [1..rank] do 
   for k in [0..height] do
     matrix:= []; 
     for vec in wtspace do
       rowvec:= RowVec(V, ActOn(Q, (xsimple[j]^(p^k)/Factorial(p^k)), vec) );
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
InstallMethod(MaximalVectors, "for a quotient Weyl module", true, 
[IsQuotientWeylModule], 0, 
function(Q)
 # Finds a maximal vector in each weight space of given quotient Weyl 
 # module <Q>, if possible.
 
 local k,max,wts,out;
 
   wts:= DominantWeights(Q);
   out:= [ ];
   for k in [1..Length(wts)] do
     max:= MaximalVectors(Q,wts[k]);
     if Length(max) > 0 then
       Append(out, max);
     fi;
   od;
   return( out );
end );

#############################################################################
InstallMethod(SocleSeries, "for a quotient Weyl module", true,
[IsQuotientWeylModule], 0, 
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
InstallMethod(GensSocleLayers, "for a quotient Weyl module", true, 
[IsQuotientWeylModule], 0,
function(Q)
    #returns a list of of lists of generators of the socle layers of Q
    local ss, soc, k, out, all, start;
    ss:= SocleSeries(Q);
    out:=[ Generators(ss[1]) ];
    for k in [2..Length(ss)] do
        all:= Generators(ss[k]);
        start:= 1 + Length(Generators(ss[k-1]));
        Add(out, all{[start..Length(all)]});
    od;
    return(out);
end );

InstallMethod(PrintSocleLayers, "for a Weyl module", true, 
[IsQuotientWeylModule], 0,
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
InstallMethod(DecompositionNumbers, "for a quotient Weyl module", true, 
[IsQuotientWeylModule], 0, 
function(Q)
 # returns the decomposition numbers of the given quotient Weyl module

 local V, ch, p, t, r, m, wt, mult, ms, decnums;
 V:= AmbientWeylModule(Q);    
 p:= TheCharacteristic(V);
 r:= V!.rank;
 t:=V!.type;
 ch:=Character(Q);
 return DecomposeCharacter(ch,p,t,r);
end );     

#############################################################################
