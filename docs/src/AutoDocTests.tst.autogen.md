
```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories; using FinSetsForCAP; using Toposes

julia> true
true

julia> a = FinSet( 3 )
|3|

julia> b = FinSet( 4 )
|4|

julia> f = MapOfFinSets( a, [ 0, 1, 1 ], b )
|3| → |4|

julia> Pf = PowerObjectFunctorial( f )
|16| → |8|

julia> Display( Pf )
[ 0,..., 15 ] ⱶ[ 0, 1, 6, 7, 0, 1, 6, 7, 0, 1, 6, 7, 0, 1, 6, 7 ]→ [ 0,..., 7 ]

```

```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories; using FinSetsForCAP; using Toposes

julia> true
true

julia> a = FinSet( 3 )
|3|

julia> sa = SingletonMorphism( a )
|3| ↪ |8|

julia> Display( sa )
[ 0, 1, 2 ] ⱶ[ 1, 2, 4 ]→ [ 0,..., 7 ]

julia> sa == LowerSegmentOfRelation( a, a, CartesianDiagonal( a, 2 ) )
true

```

```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories; using FinSetsForCAP; using Toposes

julia> true
true

julia> a = FinSet( 2 )
|2|

julia> ia = IsomorphismOntoCartesianSquareOfPowerObject( a )
|16| ⭇ |16|

julia> Display( ia )
[ 0,..., 15 ] ⱶ[ 0, 1, 4, 5, 2, 3, 6, 7, 8, 9, 12, 13, 10, 11, 14, 15 ]→ [ 0,..., 15 ]

```

```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories; using FinSetsForCAP; using Toposes

julia> true
true

julia> sFinSets = SkeletalFinSets
SkeletalFinSets

julia> t = TerminalObject( sFinSets )
|1|

julia> TruthMorphismOfFalse( sFinSets ) == RelativeTruthMorphismOfFalse( t )
true

julia> TruthMorphismOfTrue( sFinSets ) == RelativeTruthMorphismOfTrue( t )
true

julia> TruthMorphismOfNot( sFinSets ) == RelativeTruthMorphismOfNot( t )
true

julia> TruthMorphismOfAnd( sFinSets ) == RelativeTruthMorphismOfAnd( t )
true

julia> TruthMorphismOfOr( sFinSets ) == RelativeTruthMorphismOfOr( t )
true

julia> TruthMorphismOfImplies( sFinSets ) == RelativeTruthMorphismOfImplies( t )
true

julia> a = FinSet( 2 )
|2|

julia> fPa = RelativeTruthMorphismOfFalse( a )
|1| → |4|

julia> Display( fPa )
[ 0 ] ⱶ[ 0 ]→ [ 0,..., 3 ]

julia> tPa = RelativeTruthMorphismOfTrue( a )
|1| → |4|

julia> Display( tPa )
[ 0 ] ⱶ[ 3 ]→ [ 0,..., 3 ]

julia> nPa = RelativeTruthMorphismOfNot( a )
|4| → |4|

julia> Display( nPa )
[ 0,..., 3 ] ⱶ[ 3, 2, 1, 0 ]→ [ 0,..., 3 ]

julia> aPa = RelativeTruthMorphismOfAnd( a )
|16| → |4|

julia> Display( aPa )
[ 0,..., 15 ] ⱶ[ 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 2, 2, 0, 1, 2, 3 ]→ [ 0,..., 3 ]

julia> oPa = RelativeTruthMorphismOfOr( a )
|16| → |4|

julia> Display( oPa )
[ 0,..., 15 ] ⱶ[ 0, 1, 2, 3, 1, 1, 3, 3, 2, 3, 2, 3, 3, 3, 3, 3 ]→ [ 0,..., 3 ]

julia> iPa = RelativeTruthMorphismOfImplies( a )
|16| → |4|

julia> Display( iPa )
[ 0,..., 15 ] ⱶ[ 3, 2, 1, 0, 3, 3, 1, 1, 3, 2, 3, 2, 3, 3, 3, 3 ]→ [ 0,..., 3 ]

```

```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories; using FinSetsForCAP; using Toposes

julia> true
true

julia> K = FinSet( [ 2, 3, 5 ] );

julia> Display( K )
[ 2, 3, 5 ]

julia> L = FinSet( [ 0, 1, 2, 3, 5, 6 ] );

julia> Display( L )
[ 0, 1, 2, 3, 5, 6 ]

julia> l = EmbeddingOfFinSets( K, L )
<A morphism in FinSets>

julia> G = FinSet( [ 0, 1, 2, 3, 4, 5, 6, 10 ] );

julia> Display( G )
[ 0, 1, 2, 3, 4, 5, 6, 10 ]

julia> m = EmbeddingOfFinSets( L, G )
<A morphism in FinSets>

```

```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories; using FinSetsForCAP; using Toposes

julia> HasPushoutComplement( l, m )
true

julia> c = PushoutComplement( l, m )
<A morphism in FinSets>

julia> D = Source( c );

julia> Display( D )
[ 2, 3, 4, 5, 10 ]

```

```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories; using FinSetsForCAP; using Toposes

julia> true
true

julia> K = FinSet( 3 )
|3|

julia> L = FinSet( 6 )
|6|

julia> l = MapOfFinSets( K, [ 2, 3, 4 ], L );; IsMonomorphism( l );; l
|3| ↪ |6|

julia> Display( l )
[ 0, 1, 2 ] ⱶ[ 2, 3, 4 ]→ [ 0,..., 5 ]

julia> G = FinSet( 8 )
|8|

julia> Display( G )
[ 0,..., 7 ]

julia> m = MapOfFinSets( L, [ 0, 1, 2, 3, 5, 6 ], G )
|6| → |8|

julia> Display( m )
[ 0,..., 5 ] ⱶ[ 0, 1, 2, 3, 5, 6 ]→ [ 0,..., 7 ]

```

```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories; using FinSetsForCAP; using Toposes

julia> HasPushoutComplement( l, m )
true

julia> c = PushoutComplement( l, m )
|5| → |8|

julia> Display( c )
[ 0,..., 4 ] ⱶ[ 2, 3, 4, 5, 7 ]→ [ 0,..., 7 ]

```

```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories; using FinSetsForCAP; using Toposes

julia> true
true

julia> K = FinSet( [ 2, 3, 5 ] );

julia> Length( K )
3

julia> Display( K )
[ 2, 3, 5 ]

julia> L = FinSet( [ 0, 1, 2, 3, 5, 6 ] );

julia> Length( L )
6

julia> Display( L )
[ 0, 1, 2, 3, 5, 6 ]

julia> R = FinSet( [ 2, 3, 4, 5, 7 ] );

julia> Length( R )
5

julia> Display( R )
[ 2, 3, 4, 5, 7 ]

julia> l = EmbeddingOfFinSets( K, L )
<A morphism in FinSets>

julia> r = EmbeddingOfFinSets( K, R )
<A morphism in FinSets>

```

```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories; using FinSetsForCAP; using Toposes

julia> G = FinSet( [ 0, 1, 2, 3, 4, 5, 6, 10 ] );

julia> Length( G )
8

julia> Display( G )
[ 0, 1, 2, 3, 4, 5, 6, 10 ]

julia> m = EmbeddingOfFinSets( L, G )
<A morphism in FinSets>

```

```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories; using FinSetsForCAP; using Toposes

julia> p = DPO( m, l, r );

julia> h = p[1]
<A morphism in FinSets>

julia> p = p[2]
<A morphism in FinSets>

julia> H = Range( p );

julia> Length( H )
7

julia> Display( H )
[ [ [ 1, 2 ], [ 2, 2 ] ], [ [ 1, 3 ], [ 2, 3 ] ], [ [ 1, 4 ] ], [ [ 1, 5 ], [ 2, 5 ] ], [ [ 1, 10 ] ], [ [ 2, 4 ] ], [ [ 2, 7 ] ] ]

```

```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories; using FinSetsForCAP; using Toposes

julia> true
true

julia> LTI = LawvereTierneyLocalModalityOperators( SkeletalFinSets );

julia> Perform( LTI, Display )
[ 0, 1 ] ⱶ[ 0, 1 ]→ [ 0, 1 ]
[ 0, 1 ] ⱶ[ 1, 1 ]→ [ 0, 1 ]

julia> LTS = LawvereTierneySubobjects( SkeletalFinSets );

julia> Perform( LTS, Display )
[ 0 ] ⱶ[ 1 ]→ [ 0, 1 ]
[ 0, 1 ] ⱶ[ 0, 1 ]→ [ 0, 1 ]

julia> LTC = LawvereTierneyEmbeddingsOfSubobjectClassifiers( SkeletalFinSets );

julia> Perform( LTC, Display )
[ 0, 1 ] ⱶ[ 0, 1 ]→ [ 0, 1 ]
[ 0 ] ⱶ[ 1 ]→ [ 0, 1 ]

```

```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories; using FinSetsForCAP; using Toposes

julia> true
true

julia> true
true

julia> op = Opposite( SkeletalFinSets )
Opposite( SkeletalFinSets )

julia> Display( ListKnownCategoricalProperties( op ) )
[ "IsBicartesianCategory", "IsBicartesianCoclosedCategory", "IsCartesianCategory", "IsCocartesianCategory", "IsCocartesianCoclosedCategory", "IsCodistributiveCategory", "IsEquippedWithHomomorphismStructure", "IsFiniteCocompleteCategory", "IsFiniteCompleteCategory", "IsSkeletalCategory" ]

```
