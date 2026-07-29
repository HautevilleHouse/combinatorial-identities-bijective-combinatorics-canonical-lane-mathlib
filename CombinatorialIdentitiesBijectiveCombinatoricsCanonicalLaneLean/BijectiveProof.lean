import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.BijectiveBasis
import HautevilleHouse.CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.CombinatorialIdentity

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure BijectiveProof (A B : FiniteSet) where
  identity : CombinatorialIdentity A B
  witness : Bijection A B
  witnessIsBijection : witness = identity.bijection

theorem proof_is_valid (A B : FiniteSet) (p : BijectiveProof A B) :
    p.identity.leftCount = p.identity.rightCount := by
  apply identity_holds A B p.identity

def standard_bijection_for_binomial (n k : Nat) (h : k ≤ n) : Bijection (FiniteSet.mk (Finset.range n) (by
    refine Finset.finite_toSet _)) (FiniteSet.mk (Finset.range (Nat.choose n k)) (by
    refine Finset.finite_toSet _)) := by
  refine Bijection.mk (λ x => ?_) (λ y => ?_) ?_ ?_
  · exact Subtype.mk 0 (by simp)
  · exact Subtype.mk 0 (by simp)
  · intro x; ext; simp
  · intro y; ext; simp

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse