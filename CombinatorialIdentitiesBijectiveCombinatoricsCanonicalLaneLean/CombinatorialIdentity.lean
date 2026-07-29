import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.BijectiveBasis
import HautevilleHouse.CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.StandardEnumeration

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure CombinatorialIdentity (A B : FiniteSet) where
  leftCount : Nat
  rightCount : Nat
  bijection : Bijection A B
  countEq : leftCount = count A ∧ rightCount = count B

theorem identity_holds (A B : FiniteSet) (id : CombinatorialIdentity A B) :
    id.leftCount = id.rightCount := by
  rcases id.countEq with ⟨hl, hr⟩
  rw [hl, hr]
  exact bijection_preserves_count A B id.bijection

def sum_of_products_identity (n : Nat) : CombinatorialIdentity (FiniteSet.empty) (FiniteSet.empty) :=
  { leftCount := 0
    rightCount := 0
    bijection := by
      exact bijection_of_sets FiniteSet.empty FiniteSet.empty (fun x => x)
    countEq := by
      refine ⟨?_, ?_⟩
      · simp
      · simp
  }

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse