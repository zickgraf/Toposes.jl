

julia> true
true

julia> Length( ListInstalledOperationsOfCategory( SkeletalFinSets ) )
342

julia> BooleanAlgebras = Opposite( SkeletalFinSets )
Opposite( SkeletalFinSets )

julia> Length( ListPrimitivelyInstalledOperationsOfCategory( BooleanAlgebras ) )
259

julia> Length( ListInstalledOperationsOfCategory( BooleanAlgebras ) )
275

julia> Opposite( BooleanAlgebras )
SkeletalFinSets

julia> FS = Opposite( WrapperCategory( BooleanAlgebras, @rec( ) ) )
Opposite( WrapperCategory( Opposite( SkeletalFinSets ) ) )

julia> Length( ListPrimitivelyInstalledOperationsOfCategory( FS ) )
259

julia> Length( ListInstalledOperationsOfCategory( FS ) )
279
