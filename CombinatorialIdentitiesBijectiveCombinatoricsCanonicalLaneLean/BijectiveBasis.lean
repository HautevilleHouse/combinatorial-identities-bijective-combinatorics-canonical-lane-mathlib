import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure FiniteSet where
  carrier : Type
  isFinite : Fintype carrier

structure Bijection (A B : FiniteSet) where
  toFun : A.carrier → B.carrier
  invFun : B.carrier → A.carrier
  leftInv : ∀ x, invFun (toFun x) = x
  rightInv : ∀ y, toFun (invFun y) = y

def count (A : FiniteSet) : Nat :=
  Fintype.card A.carrier

theorem bijection_preserves_count (A B : FiniteSet) (f : Bijection A B) : count A = count B := by
  apply Fintype.card_congr (Equiv.ofBijective f.toFun ⟨f.leftInv, f.rightInv⟩)

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse