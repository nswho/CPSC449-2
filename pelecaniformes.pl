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

%compound names
compoundName(pelecanus, erythrorhynchos, pelecanus_erythrorhynchos).
compoundName(pelecanus, occidentalis, pelecanus_occidentalis).
compoundName(botaurus, lentiginosus, botaurus_lentiginosus).
compoundName(ixobrychus, exilis, ixobrychus_exilis).
compoundName(ardea, herodias, ardea_herodias).
compoundName(ardea, alba, ardea_alba).
compoundName(egretta, thula, egretta_thula).
compoundName(egretta, caerulea, egretta_caerulea).
compoundName(egretta, tricolor, egretta_tricolor).
compoundName(egretta, rufescens, egretta_rufescens).
compoundName(bubulcus, ibis, bubulcus_ibis).
compoundName(butorides, virescens, butorides_virescens).
compoundName(nycticorax, nycticorax, nycticorax_nycticorax).
compoundName(nyctanassa, violacea, nyctanassa_violacea).
compoundName(eudocimus, albus, eudocimus_albus).
compoundName(plegadis, falcinellus, plegadis_falcinellus).
compoundName(plegadis, chihi, plegadis_chihi).
compoundName(platalea, ajaja, platalea_ajaja).

%definitions
%order(A). 

%family(A).

%genus(A).

%species(A).

hasParent(A, B) :-
    order(B), family(A);
    order(B), genus(A);
    order(B), species(A);
    family(B), genus(A);
    family(B), species(A);
    genus(B), species(A);
    hasCompoundName(G, S, A), hasParent(G, B);
    hasCompoundName(G, S, A), hasParent(S, B).

hasCommonName(N, C) :-
    commonName(N, C);
    hasCompoundName(G, S, N), commonName(S, C).

hasCommonName(G, S, C) :-
    hasParent(S, G), commonName(S, B), B = C.

hasSciName(C, N) :-
    order(N), hasCommonName(N, C);
    family(N), hasCommonName(N, C);
    genus(N), hasCommonName(N, C);
    hasCompoundName(G, S, N), hasCommonName(S, C).

hasCompoundName(G, S, N) :-
    compoundName(G, S, N).

%isaStrict(?A, ?B).

%isa(?A, ?B).

synonym(A,B) :-
    hasCommonName(B, A);
    hasCommonName(A, B).
    

%countSpecies(?A, -N).

%rangesTo(?A, ?P).

%habitat(?A, ?B).

%food(?A, ?B).

%nesting(?A, ?B).

%behavior(?A, ?B).

%conservation(?A, ?B).

