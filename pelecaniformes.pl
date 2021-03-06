%order
order(pelecaniformes).

%family
family(pelecanidae).
family(ardeidae).
family(threskiornithdae).

%genus
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

%species
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

%parent
parent(pelecaniformes, pelecanidae).
parent(pelecaniformes, ardeidae).
parent(pelecaniformes, threskiornithdae).
parent(pelecanidae, pelecanus).
parent(ardeidae, botaurus).
parent(ardeidae, ixobrychus).
parent(ardeidae, ardea).
parent(ardeidae, egretta).
parent(ardeidae, bubulcus).
parent(ardeidae, butorides).
parent(ardeidae, nycticorax).
parent(ardeidae, nyctanassa).
parent(threskiornithdae, eudocimus).
parent(threskiornithdae, plegadis).
parent(threskiornithdae, platalea).
parent(pelecanus, erythrorhynchos).
parent(pelecanus, occidentalis).
parent(botaurus, lentiginosus).
parent(ixobrychus, exilis).
parent(ardea, herodias).
parent(ardea, alba).
parent(egretta, thula).
parent(egretta, caerulea).
parent(egretta, tricolor).
parent(egretta, rufescens).
parent(bubulcus, ibis).
parent(butorides, virescens).
parent(nycticorax, nycticorax).
parent(nyctanassa, violacea).
parent(eudocimus, albus).
parent(plegadis, falcinellus).
parent(plegadis, chihi).
parent(platalea, ajaja).

%common_names
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

%compound_names
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

%status
status(pelecanus_erythrorhynchos, lc).
status(pelecanus_occidentalis, lc).
status(botaurus_lentiginosus, lc).
status(ixobrychus_exilis, lc).
status(ardea_herodias, lc).
status(ardea_alba, lc).
status(egretta_thula, lc).
status(egretta_caerulea, lc).
status(egretta_tricolor, lc).
status(egretta_rufescens, nt).
status(bubulcus_ibis, lc).
status(butorides_virescens, lc).
status(nycticorax_nycticorax, lc).
status(nyctanassa_violacea, lc).
status(eudocimus_albus, lc).
status(plegadis_falcinellus, lc).
status(plegadis_chihi, lc).
status(platalea_ajaja, lc).

%definitions
hasParent(A, B) :-
    parent(B, A).

hasCommonName(N, C) :-
    hasCompoundName(G, S, N), commonName(S, C);
    commonName(N, C).

hasCommonName(G, S, C) :-
    hasParent(S, G), commonName(S, C).

hasSciName(C, N) :-
    order(N), hasCommonName(N, C);
    family(N), hasCommonName(N, C);
    genus(N), hasCommonName(N, C);
    hasCompoundName(G, S, N), hasCommonName(S, C).

hasCompoundName(G, S, N) :-
    compoundName(G, S, N).

isaStrict(A, B) :-
    hasParent(B, A);
    hasParent(A, B).

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

conservation(A, B) :-
    status(A, B);
    hasCompoundName(A, S, C),
    status(C, B);
    hasCompoundName(G, A, C),
    status(C, B).

