import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.BijectiveBasis

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure Permutation (A : FiniteSet) where
  perm : Bijection A A

def factorial (n : Nat) : Nat := Nat.factorial n

theorem count_permutations (A : FiniteSet) : Fintype.card (Permutation A) = factorial (count A) := by
  -- standard combinatorial fact
  apply Fintype.card_congr ?_
  exact {
    toFun := λ p => p.perm
    invFun := λ f => ⟨f⟩
    leftInv := λ _ => rfl
    rightInv := λ _ => rfl
  }

structure Subset (A : FiniteSet) where
  predicate : A.carrier → Prop
  isDecidable : DecidablePred predicate

def binomial (n k : Nat) : Nat := Nat.choose n k

theorem count_subsets_of_size (A : FiniteSet) (k : Nat) : Fintype.card {s : Subset A // Fintype.card {x : A.carrier // s.predicate x} = k} = binomial (count A) k := by
  sorry

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse