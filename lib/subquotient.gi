#############################################################################
InstallMethod(IsWithin, 
"for a sub quotient Weyl module and a given weight vector", true, 
[IsSubQuotientWeylModule,IsLeftAlgebraModuleElement], 0, 
function(S,vec)
 # Returns true if the given <vec> lies within the given submodule S
 local Q,h,V,rowbasis, v, rowvec, SS; 
 Q:=S!.quotientWeylModule;
 V:=AmbientWeylModule(Q);
 h:= Q!.homomorphism;

 rowbasis:=S!.repbasis;
 SS:= VectorSpace(GF(V!.prime), rowbasis);
 rowvec:= Image(h, RowVec(V,vec));
 if rowvec in SS then
    return true;
 else
    return false;
 fi;
end );  

#############################################################################
InstallMethod(SubWeylModule, "for a quotient Weyl module and vector", true, 
[IsQuotientWeylModule,IsLeftAlgebraModuleElement], 0, 
function(Q,vec)
 # finds a basis for the submodule of <Q> generated by <vec>
 local i,j,k,rowbasis,lbasis,newvec,rowvec,S,L,
       p,zerotensor,extendbasis,g,gens,noPosRoots,v,
       height,comps,wt,W,h,SM;

 W:= AmbientWeylModule(Q);
 if vec = Generator(W) then
    h:= Q!.homomorphism;  # ADDED 3 Mar 2024
    lbasis:= BasisVecs(Q);
    rowbasis:=[];
    for v in lbasis do
       Add(rowbasis, Image(h, RowVec(W,v)));  # MODIFIED 3 Mar 2024
    od;   
    SM:=Objectify(NewType(FamilyObj(Q), IsSubQuotientWeylModule),
     rec(eltbasis:=lbasis,repbasis:=rowbasis,gens:=[vec],
     quotientWeylModule:=Q) );
    return(SM);
 fi;

 h:= Q!.homomorphism;
 p:= W!.prime;
 wt:= W!.highestWeight;
 height:= HighestPrimePower(p, Sum(wt));

 L:= W!.LieAlgebra;
 g:= LatticeGeneratorsInUEA( L );
 noPosRoots:= Length(ChevalleyBasis(L)[1]);
 gens:= g{ [1..2*noPosRoots] };
 for i in [1..height] do
    for j in [1..2*noPosRoots] do
       Add(gens, gens[j]^(p^i)/Factorial(p^i));
    od;
 od;

 rowbasis:= [ Image(h, RowVec(W,vec)) ]; lbasis:= [ vec ];
 S:= VectorSpace(GF(p), rowbasis);   

 extendbasis:= function(v)
   local i;
   for i in gens do
       newvec:= ActOn(Q, i, v);
       if newvec <> 0*v then  
         rowvec:= Image(h, RowVec(W,newvec));
         if not (rowvec in S) then
            Add( rowbasis, rowvec);
            S:= VectorSpace(GF(p), rowbasis);
            Add( lbasis, newvec );
         fi;
       fi;
   od;
 end;

 extendbasis(vec); 
 j:=2;
 while j <= Length(lbasis) do
    extendbasis(lbasis[j]); 
    j:= j+1;
 od;

 SM:=Objectify(NewType(FamilyObj(Q), IsSubQuotientWeylModule),
     rec(eltbasis:=lbasis,repbasis:=rowbasis,gens:=[vec],
     quotientWeylModule:=Q) );
 return(SM);
end );


#############################################################################
InstallMethod(SubWeylModule, "for a sub quotient and a vector", true, 
[IsSubQuotientWeylModule, IsLeftAlgebraModuleElement], 0, 
function(W,vec)
 # Returns the submodule of the ambient quotient Weyl module generated by the
 # given submodule <W> and given vector <vec>.

 local Q, p, U, rowbasis, lbasis, S, generators, ulbasis, urowbasis, i, SM;

 Q:=W!.quotientWeylModule; p:=AmbientWeylModule(Q)!.prime;
 lbasis:=ShallowCopy(W!.eltbasis);
 if Length(lbasis) = 0 then  # W is the zero module
    return( SubWeylModule(Q,vec) );
 fi;
 rowbasis:=ShallowCopy(W!.repbasis);
 generators:=ShallowCopy(W!.gens);
 Add(generators, vec);

 U:=SubWeylModule(Q,vec);
 ulbasis:= U!.eltbasis;
 urowbasis:=U!.repbasis;
 for i in [1..Length(ulbasis)] do
   S:=VectorSpace(GF(p), rowbasis);
   if not (urowbasis[i] in S) then
     Add(lbasis, ulbasis[i]);
     Add(rowbasis, urowbasis[i]);
   fi;
 od;

 SM:=Objectify(NewType(FamilyObj(Q), IsSubQuotientWeylModule),
     rec(eltbasis:=lbasis,repbasis:=rowbasis,gens:=generators,
     quotientWeylModule:=Q) );
 return(SM);
end );

#############################################################################
InstallMethod(SubWeylModule, 
"for a quotient Weyl module and list of vectors", true, 
[IsQuotientWeylModule, IsList], 0, 
function(Q,vecs)
 # Returns the sub quotient module generated by the given vectors

 local S,v,SM;
 if Length(vecs) = 0 then
    SM:=Objectify(NewType(FamilyObj(Q), IsSubQuotientWeylModule),
     rec(eltbasis:=[],repbasis:=[],gens:=[],
     quotientWeylModule:=Q) );
 return(SM);
 fi;
 
 S:= SubWeylModule(Q, vecs[1]);
 for v in vecs{ [2..Length(vecs)] } do
   S:= SubWeylModule(S,v);
 od;
 return( S );
end );

#############################################################################
InstallMethod(SubWeylModuleDirectSum,
"for a quotient Weyl module and a list of sub Weyl modules", true,
[IsQuotientWeylModule,IsList], 0,
function(Q,inlist)
 # returns the direct sum of the inputs (which are assumed independent)
 # Note: No checking of the assumption is done!

 local S, lbasis, rowbasis, generators, SM;

 lbasis:= []; rowbasis:= []; generators:= [];
 for S in inlist do
    Append(lbasis, S!.eltbasis);
    Append(rowbasis, S!.repbasis);
    Append(generators, S!.gens);
    Assert(0,Q = S!.quotientWeylModule);
 od;

 SM:= Objectify(NewType(FamilyObj(Q), IsSubQuotientWeylModule),
     rec(eltbasis:=lbasis,repbasis:=rowbasis,gens:=generators,
     quotientWeylModule:=Q) );
 return(SM);
end );


#############################################################################
InstallMethod(PrintObj, "for a sub quotient Weyl module", true,
[IsSubQuotientWeylModule], 0,
function(S)
 Print("Submod of ", S!.quotientWeylModule);
end );

#############################################################################
InstallMethod(Generators, "for a sub quotient Weyl module", true,
[IsSubQuotientWeylModule], 0,
function(S)
 return(S!.gens);
end );

#############################################################################
InstallMethod(BasisVecs, "for a sub quotient Weyl module", true,
[IsSubQuotientWeylModule], 0,
function(S)
 # returns the basis vectors of <S>
 return(S!.eltbasis);
end );

#############################################################################
InstallMethod(Dim, "for a sub quotient Weyl module", true,
[IsSubQuotientWeylModule], 0,
function(S)
 # returns the dimension of <S>
 return(Length(S!.eltbasis));
end );

#############################################################################
InstallMethod(AmbientQuotient, "for a sub quotient Weyl module", true,
[IsSubQuotientWeylModule], 0,
function(S)
 # returns the ambient quotient Weyl module
 return(S!.quotientWeylModule);
end );

#############################################################################
InstallMethod(Weights, "for a sub quotient Weyl module", true, 
[IsSubQuotientWeylModule], 0, 
function(S)
 # returns a list of the weight space labels of <S>
 return( DuplicateFreeList(List(BasisVecs(S), Weight)) );
end );

#############################################################################
InstallMethod(WeightSpaces, "for a sub quotient Weyl module", true,
[IsSubQuotientWeylModule], 0,
function(S)
 # returns a list of the weight spaces of <S>
 local wts,out,w;

 wts:=Weights(S);
 out:= [ ];
 for w in wts do
   Add(out, w);
   Add(out, WeightSpace(S,w));
 od;
 return(out);
end );

#############################################################################
InstallMethod(Character, "for a sub quotient Weyl module", true, 
[IsSubQuotientWeylModule], 0, 
function(S)
 # returns the character (a list of the weights and their multiplicities)
 # for the given sub quotient Wey module S
 local ws, k, out;
 out:= [ ];
 ws:= WeightSpaces(S);
 for k in [2,4..Length(ws)] do
   Add(out, ws[k-1]);
   Add(out, Length(ws[k]));
 od;
 return(out);
end );

#############################################################################
InstallMethod(DominantWeightSpaces, "for a sub quotient Weyl module", true, 
[IsSubQuotientWeylModule], 0, 
function(S)
 # returns a list of the dominant weight spaces of S
 local out, k, ws;
 out:= [ ];
 ws:= WeightSpaces(S);
 for k in [2,4..Length(ws)] do
   if IsDominant( ws[k-1] ) then 
     Add(out, ws[k-1]);
     Add(out, ws[k]);
   fi;
 od;
 return(out);
end );

#############################################################################
InstallMethod(WeightSpace, "for a sub quotient Weyl module", true, 
[IsSubQuotientWeylModule,IsList], 0, 
function(S,wt)
 # returns a basis for the given weight space in <S> of weight <wt>
 local bb,out,b;
 bb:=BasisVecs(S); out:=[ ];
 for b in bb do
   if Weight(b) = wt then Add(out,b); fi;
 od;
 return(out);
end );

#############################################################################
InstallMethod(SocleWeyl, "for a quotient Weyl module", true, 
[IsQuotientWeylModule], 0, 
function(Q)
 # Returns the socle of the given quotient module <Q> 
 
 local outlist, v, mvecs, s, V, p, b, dima, dimb;
 
 V:= Q!.WeylModule; p:=V!.prime;
 outlist:= []; 
 mvecs:= MaximalVectors(Q);
 for v in mvecs do
     s:= SubWeylModule(Q,v); 
     dima:= Dim(s);
     b:= SimpleCharacter(p,Weight(v),V!.type,V!.rank); dimb:=CharacterDim(b);
     if dima = dimb then
       Add(outlist, s);
     fi;
 od;
 return SubWeylModuleDirectSum(Q,outlist);
end );

#############################################################################
InstallMethod(NextSocle, "for a sub quotient Weyl module", true,
[IsSubQuotientWeylModule], 0, 
function(S)
 # Returns the next socle of V (the submodule that maps onto soc(V/S))

 local V, Q, mvecs, m, sub, lam, p, t, r, ans, K, gens, g, SS, QQ;
 Q:= AmbientQuotient(S); # the parent quotient module
 V:= AmbientWeylModule(Q); 
 p:=TheCharacteristic(V);
 t:=V!.type;
 r:=V!.rank;
 ans:= S; # initially

 # calculate the preimage SS of S under V -> V/K
 K:= DefiningKernel(Q);
 gens:= Generators(S);
 SS:=K; # initially
 for g in gens do
   SS:= SubWeylModule(SS,g);
 od;

 QQ:= QuotientWeylModule(SS);
 mvecs:= MaximalVectors(QQ);
 for m in mvecs do
    sub:= SubWeylModule(QQ, m);
    lam:= Weight(m);
    if SortedCharacter(Character(sub))
       = SortedCharacter(SimpleCharacter(p,lam,t,r)) then
       ans:= SubWeylModule(ans, m);
    fi;
 od;
 return ans;
end );

