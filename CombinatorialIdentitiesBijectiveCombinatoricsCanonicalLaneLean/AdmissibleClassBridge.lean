import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.BijectiveProof

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∀ (X Y : FiniteSet), BijectiveProof X Y → identity_holds X Y (BijectiveProof.identity X Y)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  intro X Y p
  exact proof_is_valid X Y p

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse