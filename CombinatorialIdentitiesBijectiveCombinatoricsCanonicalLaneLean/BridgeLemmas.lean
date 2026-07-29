import CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BijectionClosed (AdmissibleBijection.mk A.object A.object (fun x => x) True True)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.endpointSatisfied

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse