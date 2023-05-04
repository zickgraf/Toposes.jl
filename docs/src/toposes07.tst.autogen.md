
```jldoctest
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
