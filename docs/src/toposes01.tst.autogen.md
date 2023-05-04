
```jldoctest
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
