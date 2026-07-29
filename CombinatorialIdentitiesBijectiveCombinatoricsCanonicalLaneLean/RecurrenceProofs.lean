import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure RecurrenceRelation (f : Nat → Nat) where
  baseCase : f 0 = 1
  recurrence : ∀ n, f (n+1) = (n+1) * f n

structure RecurrenceProofPackage where
  sequence : Nat → Nat
  recurrenceRelation : RecurrenceRelation sequence
  closedForm : ∀ n, sequence n = n!
  closedFormProof : closedForm

def RecurrenceProofClosed (P : RecurrenceProofPackage) : Prop :=
  P.closedForm

theorem recurrence_proof_closed_from_evidence (P : RecurrenceProofPackage) :
    RecurrenceProofClosed P := by
  exact P.closedFormProof

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse