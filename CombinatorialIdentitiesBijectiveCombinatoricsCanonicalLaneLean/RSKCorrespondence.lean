import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure RSKObjects where
  permutation : Type u
  tableauxPair : Type v
  insert : permutation → tableauxPair
  record : permutation → tableauxPair
  bijection : permutation → tableauxPair
  bijectionInverse : tableauxPair → permutation
  shapeCoincidence : ∀ (p : permutation), (insert p).fst.shape = (record p).snd.shape

structure RSKClosurePackage (R : RSKObjects) where
  insertDefined : ∀ (p : R.permutation), R.insert p = R.bijection p
  recordDefined : ∀ (p : R.permutation), R.record p = R.bijection p
  bijectionIsBijection : Function.Bijective R.bijection
  shapeCoincidenceClosed : ∀ (p : R.permutation), (R.insert p).fst.shape = (R.record p).snd.shape

structure RSKClosureEvidence {R : RSKObjects}
    (P : RSKClosurePackage R) where
  insertDefinedClosed : ∀ (p : R.permutation), P.insertDefined p
  recordDefinedClosed : ∀ (p : R.permutation), P.recordDefined p
  bijectionIsBijectionClosed : P.bijectionIsBijection
  shapeCoincidenceClosed : ∀ (p : R.permutation), P.shapeCoincidenceClosed p

def RSKClosure {R : RSKObjects} (P : RSKClosurePackage R) : Prop :=
  (∀ p, P.insertDefined p) ∧ (∀ p, P.recordDefined p) ∧ P.bijectionIsBijection ∧ (∀ p, P.shapeCoincidenceClosed p)

theorem rsk_closure_evidence {R : RSKObjects}
    (P : RSKClosurePackage R) (E : RSKClosureEvidence P) : RSKClosure P := by
  exact And.intro E.insertDefinedClosed
    (And.intro E.recordDefinedClosed
      (And.intro E.bijectionIsBijectionClosed E.shapeCoincidenceClosed))

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse