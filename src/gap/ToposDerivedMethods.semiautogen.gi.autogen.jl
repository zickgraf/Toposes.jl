# SPDX-License-Identifier: GPL-2.0-or-later
# Toposes: Elementary toposes
#
# Implementations
#

##  A <-f-- X
##  |       |
##  |       |
##  x       g
##  |       |
##  v       v
##  D <-y-- B

##
AddDerivationToCAP( HasPushoutComplement,
        "",
        [ [ EmbeddingOfRelativePseudoComplementSubobject, 1 ],
          [ EmbeddingOfUnionSubobject, 2 ],
          [ FiberProduct, 7 ],
          [ IdentityMorphism, 4 ],
          [ ImageEmbedding, 6 ],
          [ IsDominating, 1 ],
          [ IsEqualAsSubobjects, 1 ],
          [ PreCompose, 14 ],
          [ ProjectionInFactorOfFiberProductWithGivenFiberProduct, 14 ],
          [ UniversalMorphismIntoDirectProduct, 6 ],
          [ UniversalMorphismIntoTerminalObject, 3 ] ],
        
  # generated by examples/precompile_derivations_pushout_complement.g
  function ( cat_1, f_1, x_1 )
    local deduped_1_1, deduped_2_1, deduped_3_1, deduped_4_1, deduped_5_1, deduped_6_1, deduped_7_1, deduped_8_1, deduped_9_1, deduped_10_1, deduped_11_1, deduped_12_1, deduped_13_1, deduped_14_1, deduped_15_1, deduped_16_1, deduped_17_1, deduped_18_1, deduped_19_1, deduped_20_1, deduped_21_1, deduped_22_1, deduped_23_1, deduped_24_1, deduped_25_1, deduped_26_1, deduped_27_1, deduped_28_1, deduped_29_1, deduped_30_1, deduped_31_1, deduped_32_1, deduped_33_1;
    deduped_32_1 = Target( x_1 );
    deduped_31_1 = Source( f_1 );
    deduped_30_1 = Source( x_1 );
    deduped_28_1 = UniversalMorphismIntoTerminalObject( cat_1, deduped_32_1 );
    deduped_27_1 = IdentityMorphism( cat_1, deduped_32_1 );
    deduped_26_1 = UniversalMorphismIntoTerminalObject( cat_1, deduped_31_1 );
    deduped_25_1 = IdentityMorphism( cat_1, deduped_31_1 );
    deduped_24_1 = IdentityMorphism( cat_1, deduped_30_1 );
    deduped_22_1 = [ deduped_24_1, f_1 ];
    deduped_21_1 = [ deduped_24_1, deduped_24_1 ];
    deduped_15_1 = FiberProduct( cat_1, deduped_22_1 );
    deduped_14_1 = FiberProduct( cat_1, deduped_21_1 );
    deduped_13_1 = PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_21_1, 2, deduped_14_1 ), UniversalMorphismIntoTerminalObject( cat_1, deduped_30_1 ) );
    deduped_12_1 = PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_21_1, 1, deduped_14_1 ), x_1 );
    deduped_10_1 = [ PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_22_1, 2, deduped_15_1 ), deduped_25_1 ), deduped_25_1 ];
    deduped_8_1 = FiberProduct( cat_1, deduped_10_1 );
    deduped_7_1 = PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_10_1, 2, deduped_8_1 ), deduped_26_1 );
    deduped_6_1 = PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_10_1, 1, deduped_8_1 ), PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_22_1, 1, deduped_15_1 ), x_1 ) );
    deduped_5_1 = ImageEmbedding( cat_1, UniversalMorphismIntoDirectProduct( cat_1, [ Target( deduped_12_1 ), Target( deduped_13_1 ) ], deduped_14_1, [ deduped_12_1, deduped_13_1 ] ) );
    if (IsEqualAsSubobjects( cat_1, EmbeddingOfUnionSubobject( cat_1, deduped_5_1, EmbeddingOfRelativePseudoComplementSubobject( cat_1, deduped_5_1, ImageEmbedding( cat_1, UniversalMorphismIntoDirectProduct( cat_1, [ Target( deduped_6_1 ), Target( deduped_7_1 ) ], deduped_8_1, [ deduped_6_1, deduped_7_1 ] ) ) ) ), ImageEmbedding( cat_1, UniversalMorphismIntoDirectProduct( cat_1, [ Target( deduped_27_1 ), Target( deduped_28_1 ) ], deduped_32_1, [ deduped_27_1, deduped_28_1 ] ) ) ) == false)
        return false;
    else
        deduped_33_1 = [ x_1, x_1 ];
        deduped_29_1 = FiberProduct( cat_1, deduped_33_1 );
        deduped_23_1 = [ deduped_25_1, deduped_25_1 ];
        deduped_20_1 = Source( deduped_24_1 );
        deduped_19_1 = FiberProduct( cat_1, deduped_23_1 );
        deduped_18_1 = IdentityMorphism( cat_1, deduped_20_1 );
        deduped_17_1 = PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_33_1, 2, deduped_29_1 ), deduped_24_1 );
        deduped_16_1 = PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_33_1, 1, deduped_29_1 ), deduped_24_1 );
        deduped_11_1 = [ PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_23_1, 2, deduped_19_1 ), deduped_26_1 ), deduped_26_1 ];
        deduped_9_1 = FiberProduct( cat_1, deduped_11_1 );
        deduped_4_1 = [ PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_11_1, 2, deduped_9_1 ), deduped_25_1 ), deduped_25_1 ];
        deduped_3_1 = FiberProduct( cat_1, deduped_4_1 );
        deduped_2_1 = PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_4_1, 2, deduped_3_1 ), f_1 );
        deduped_1_1 = PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_4_1, 1, deduped_3_1 ), PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_11_1, 1, deduped_9_1 ), PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_23_1, 1, deduped_19_1 ), f_1 ) ) );
        return IsDominating( cat_1, ImageEmbedding( cat_1, UniversalMorphismIntoDirectProduct( cat_1, [ Target( deduped_16_1 ), Target( deduped_17_1 ) ], deduped_29_1, [ deduped_16_1, deduped_17_1 ] ) ), EmbeddingOfUnionSubobject( cat_1, ImageEmbedding( cat_1, UniversalMorphismIntoDirectProduct( cat_1, [ Target( deduped_18_1 ), Target( deduped_24_1 ) ], deduped_20_1, [ deduped_18_1, deduped_24_1 ] ) ), ImageEmbedding( cat_1, UniversalMorphismIntoDirectProduct( cat_1, [ Target( deduped_1_1 ), Target( deduped_2_1 ) ], deduped_3_1, [ deduped_1_1, deduped_2_1 ] ) ) ) );
    end;
    return;
end );

##

#  A <--f-- X
#  |        |
#  x        g
#  |        |
#  v        v
#  D <--y-- B
AddDerivationToCAP( PushoutComplement,
        "",
        [ [ EmbeddingOfRelativePseudoComplementSubobject, 1 ],
          [ FiberProduct, 3 ],
          [ IdentityMorphism, 2 ],
          [ ImageEmbedding, 3 ],
          [ PreCompose, 7 ],
          [ ProjectionInFactorOfDirectProductWithGivenDirectProduct, 1 ],
          [ ProjectionInFactorOfFiberProductWithGivenFiberProduct, 6 ],
          [ TerminalObject, 1 ],
          [ UniversalMorphismIntoDirectProduct, 2 ],
          [ UniversalMorphismIntoTerminalObject, 2 ] ],
        
  # generated by examples/precompile_derivations_pushout_complement.g
  function ( cat_1, f_1, x_1 )
    local deduped_1_1, deduped_2_1, deduped_3_1, deduped_4_1, deduped_5_1, deduped_6_1, deduped_7_1, deduped_8_1, deduped_9_1, deduped_10_1, deduped_11_1, deduped_12_1, deduped_13_1, deduped_14_1, deduped_15_1;
    deduped_15_1 = Source( f_1 );
    deduped_14_1 = Source( x_1 );
    deduped_13_1 = IdentityMorphism( cat_1, deduped_15_1 );
    deduped_12_1 = IdentityMorphism( cat_1, deduped_14_1 );
    deduped_11_1 = [ deduped_12_1, f_1 ];
    deduped_10_1 = [ deduped_12_1, deduped_12_1 ];
    deduped_9_1 = FiberProduct( cat_1, deduped_11_1 );
    deduped_8_1 = FiberProduct( cat_1, deduped_10_1 );
    deduped_7_1 = PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_10_1, 2, deduped_8_1 ), UniversalMorphismIntoTerminalObject( cat_1, deduped_14_1 ) );
    deduped_6_1 = PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_10_1, 1, deduped_8_1 ), x_1 );
    deduped_5_1 = [ PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_11_1, 2, deduped_9_1 ), deduped_13_1 ), deduped_13_1 ];
    deduped_4_1 = FiberProduct( cat_1, deduped_5_1 );
    deduped_3_1 = PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_5_1, 2, deduped_4_1 ), UniversalMorphismIntoTerminalObject( cat_1, deduped_15_1 ) );
    deduped_2_1 = PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_5_1, 1, deduped_4_1 ), PreCompose( cat_1, ProjectionInFactorOfFiberProductWithGivenFiberProduct( cat_1, deduped_11_1, 1, deduped_9_1 ), x_1 ) );
    deduped_1_1 = EmbeddingOfRelativePseudoComplementSubobject( cat_1, ImageEmbedding( cat_1, UniversalMorphismIntoDirectProduct( cat_1, [ Target( deduped_6_1 ), Target( deduped_7_1 ) ], deduped_8_1, [ deduped_6_1, deduped_7_1 ] ) ), ImageEmbedding( cat_1, UniversalMorphismIntoDirectProduct( cat_1, [ Target( deduped_2_1 ), Target( deduped_3_1 ) ], deduped_4_1, [ deduped_2_1, deduped_3_1 ] ) ) );
    return ImageEmbedding( cat_1, PreCompose( cat_1, deduped_1_1, ProjectionInFactorOfDirectProductWithGivenDirectProduct( cat_1, [ Target( x_1 ), TerminalObject( cat_1 ) ], 1, Target( deduped_1_1 ) ) ) );
end );
