%groups
order(pelecaniformes).
family(pelecanidae).
family(ardeidae).
family(threskiornithdae).
genus(pelecanus).
genus(botaurus).
genus(ixobrychus).
genus(ardea).
genus(egretta).
genus(bubulcus).
genus(butorides).
genus(nycticorax).
genus(nyctanassa).
genus(eudocimus).
genus(plegadis).
genus(platalea).
species(erythrorhynchos).
species(occidentalis).
species(lentiginosus).
species(exilis).
species(herodias).
species(alba).
species(thula).
species(caerulea).
species(tricolor).
species(rufescens).
species(ibis).
species(virescens).
species(nycticorax).
species(violacea).
species(albus).
species(falcinellus).
species(chihi).
species(ajaja).

%common names
commonName(pelecanus, pelican).
commonName(erythrorhynchos, americanWhitePelican).
commonName(occidentalis, brownPelican).
commonName(botaurus, bittern).
commonName(lentiginosus, americanBittern).
commonName(ixobrychus, bittern).
commonName(exilis, leastBittern).
commonName(ardea, heron).
commonName(herodias, greatBlueHeron).
commonName(alba, greatEgret).
commonName(egretta, heron).
commonName(egretta, egret).
commonName(thula, snowyEgret).
commonName(caerulea, littleBlueHeron).
commonName(tricolor, tricoloredHeron).
commonName(rufescens, reddishEgret).
commonName(bubulcus, egret).
commonName(ibis, cattleEgret).
commonName(butorides, heron).
commonName(virescens, greenHeron).
commonName(nycticorax, nightHeron).
commonName(nycticorax, blackCrownedNightHeron).
commonName(nyctanassa, nightHeron).
commonName(violacea, yellowCrownedNightHeron).
commonName(eudocimus, ibis).
commonName(albus, whiteIbis).
commonName(plegadis, ibis).
commonName(falcinellus, glossyIbis).
commonName(chihi, whiteFacedIbis).
commonName(platalea, spoonbill).
commonName(ajaja, roseateSpoonbill).

%definitions
%order(_) :- pelecaniformes. 

%family(A).

%genus(A).

%species(A).

hasParent(A,B) :-
    order(B),
    family(A);
    order(B),
    genus(A);
    order(B),
    species(A);
    family(B),
    genus(A);
    family(B),
    species(A);
    genus(B),
    species(A).

hasCommonName(N,C) :-
    commonName(N,_) = C.

hasCommonName(G,S,C) :-
    commonName(G,S) = C.

%hasSciName(?C,?N).

compoundName(G, S) :-
    genus(G),
    species(S),
    append(G, "_", buffer),
    append(buffer, S, buffer),
    buffer.

hasCompoundName(G, S, N) :-
    compoundName(G, S) = N.

%isaStrict(?A, ?B).

%isa(?A, ?B).

%synonym(?A, ?B).

%countSpecies(?A, -N).

%rangesTo(?A, ?P).

%habitat(?A, ?B).

%food(?A, ?B).

%nesting(?A, ?B).

%behavior(?A, ?B).

%conservation(?A, ?B).

