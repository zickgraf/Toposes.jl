

julia> true
true

julia> Length( ListInstalledOperationsOfCategory( SkeletalFinSets ) )
325

julia> BooleanAlgebras = Opposite( SkeletalFinSets )
Opposite( SkeletalFinSets )

julia> Length( ListPrimitivelyInstalledOperationsOfCategory( BooleanAlgebras ) )
248

julia> Length( ListInstalledOperationsOfCategory( BooleanAlgebras ) )
266

julia> Opposite( BooleanAlgebras )
SkeletalFinSets

julia> FS = Opposite( WrapperCategory( BooleanAlgebras, @rec( ) ) )
Opposite( WrapperCategory( Opposite( SkeletalFinSets ) ) )

julia> Length( ListPrimitivelyInstalledOperationsOfCategory( FS ) )
250

julia> Length( ListInstalledOperationsOfCategory( FS ) )
268
