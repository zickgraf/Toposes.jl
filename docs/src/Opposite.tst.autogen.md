

julia> true
true

julia> Length( ListInstalledOperationsOfCategory( SkeletalFinSets ) )
312

julia> BooleanAlgebras = Opposite( SkeletalFinSets )
Opposite( SkeletalFinSets )

julia> Length( ListInstalledOperationsOfCategory( BooleanAlgebras ) )
258

julia> Opposite( BooleanAlgebras )
SkeletalFinSets

julia> FS = Opposite( WrapperCategory( BooleanAlgebras, @rec( ) ) )
Opposite( WrapperCategory( Opposite( SkeletalFinSets ) ) )

julia> Length( ListInstalledOperationsOfCategory( FS ) )
258
