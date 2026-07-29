import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure BijectionPackage where
  lhsSet : Type u
  rhsSet : Type v
  lhsSize : Nat
  rhsSize : Nat
  bijectionExists : Prop
  sizePreserving : Prop

def BijectionClosed (B : BijectionPackage) : Prop :=
  B.bijectionExists ∧ B.sizePreserving

structure BijectionEvidence (B : BijectionPackage) where
  bijectionExistsClosed : B.bijectionExists
  sizePreservingClosed : B.sizePreserving

theorem bijection_closed_from_evidence (B : BijectionPackage) (E : BijectionEvidence B) :
    BijectionClosed B := by
  exact And.intro E.bijectionExistsClosed E.sizePreservingClosed

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse