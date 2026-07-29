import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure BijectionStructure where
  sourceSet : Type u
  targetSet : Type v
  bijection : sourceSet → targetSet
  bijectionInv : targetSet → sourceSet
  bijectionIsBijective : ∀ x, bijectionInv (bijection x) = x ∧ ∀ y, bijection (bijectionInv y) = y

def BijectionClosed (B : BijectionStructure) : Prop :=
  ∀ x : B.sourceSet, B.bijectionInv (B.bijection x) = x

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse