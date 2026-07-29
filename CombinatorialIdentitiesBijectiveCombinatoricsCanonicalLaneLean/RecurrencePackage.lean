import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure RecurrencePackage where
  initialValues : List ℕ
  recurrenceRule : Prop
  closedFormIdentity : Prop
  bijectiveProof : Prop

def RecurrenceClosed (R : RecurrencePackage) : Prop :=
  R.initialValues.length > 0 ∧ R.recurrenceRule ∧ R.closedFormIdentity ∧ R.bijectiveProof

structure RecurrenceEvidence (R : RecurrencePackage) where
  initialValuesNonemptyClosed : R.initialValues.length > 0
  recurrenceRuleClosed : R.recurrenceRule
  closedFormIdentityClosed : R.closedFormIdentity
  bijectiveProofClosed : R.bijectiveProof

theorem recurrence_closed_from_evidence (R : RecurrencePackage) (E : RecurrenceEvidence R) :
    RecurrenceClosed R := by
  exact And.intro E.initialValuesNonemptyClosed (And.intro E.recurrenceRuleClosed (And.intro E.closedFormIdentityClosed E.bijectiveProofClosed))

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse