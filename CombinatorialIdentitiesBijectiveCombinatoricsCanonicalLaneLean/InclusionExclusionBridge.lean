import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure InclusionExclusionObjects where
  finiteSet : Type u
  properties : List (finiteSet → Prop)
  overcount : Nat → Nat
  exactCount : Nat
  inclusionExclusionIdentity : overcount 0 = exactCount

structure InclusionExclusionClosurePackage (IE : InclusionExclusionObjects) where
  principleApplied : Prop
  signAlternation : Prop
  overcountClosed : IE.overcount 0 = IE.exactCount

structure InclusionExclusionClosureEvidence {IE : InclusionExclusionObjects}
    (P : InclusionExclusionClosurePackage IE) where
  principleAppliedClosed : P.principleApplied
  signAlternationClosed : P.signAlternation
  overcountClosed : P.overcountClosed

def InclusionExclusionClosure {IE : InclusionExclusionObjects}
    (P : InclusionExclusionClosurePackage IE) : Prop :=
  P.principleApplied ∧ P.signAlternation ∧ P.overcountClosed

theorem inclusion_exclusion_closure_evidence {IE : InclusionExclusionObjects}
    (P : InclusionExclusionClosurePackage IE) (E : InclusionExclusionClosureEvidence P) :
    InclusionExclusionClosure P := by
  exact And.intro E.principleAppliedClosed
    (And.intro E.signAlternationClosed E.overcountClosed)

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse