import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse