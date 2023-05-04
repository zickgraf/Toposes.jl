
```jldoctest
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
