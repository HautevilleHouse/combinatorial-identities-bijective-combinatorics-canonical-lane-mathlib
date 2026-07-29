import CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.CatalanStructure

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure PascalIdentity where
  n : Nat
  k : Nat
  leftHandSide : Nat
  rightHandSide : Nat
  identityHolds : leftHandSide = rightHandSide
  bijectiveProof : BijectionClosed (AdmissibleBijection.mk (BijectionStructure.mk (Set.univ) n 0 True) (BijectionStructure.mk (Set.univ) n 0 True) (fun x => x) True True)

def PascalIdentityClosed (P : PascalIdentity) : Prop :=
  P.identityHolds

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse