import CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.ExchangeArgument

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure CatalanStructure where
  n : Nat
  dyckPaths : Set (List Bool)
  parentheses : Set (List Char)
  bijectionWitness : BijectionClosed (AdmissibleBijection.mk (BijectionStructure.mk (Set.univ) n 0 True) (BijectionStructure.mk (Set.univ) n 0 True) (fun x => x) True True)

def CatalanIdentitiesClosed (C : CatalanStructure) : Prop :=
  C.bijectionWitness

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse