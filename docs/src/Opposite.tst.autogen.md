

julia> true
true

julia> Length( ListInstalledOperationsOfCategory( SkeletalFinSets ) )
315

julia> BooleanAlgebras = Opposite( SkeletalFinSets )
Opposite( SkeletalFinSets )

julia> Length( ListPrimitivelyInstalledOperationsOfCategory( BooleanAlgebras ) )
242

julia> Length( ListInstalledOperationsOfCategory( BooleanAlgebras ) )
260

julia> Opposite( BooleanAlgebras )
SkeletalFinSets

julia> FS = Opposite( WrapperCategory( BooleanAlgebras, @rec( ) ) )
Opposite( WrapperCategory( Opposite( SkeletalFinSets ) ) )

julia> Length( ListPrimitivelyInstalledOperationsOfCategory( FS ) )
244

julia> Length( ListInstalledOperationsOfCategory( FS ) )
260
