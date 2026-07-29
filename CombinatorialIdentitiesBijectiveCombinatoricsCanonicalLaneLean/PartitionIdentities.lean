import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure PartitionIdentity where
  partitionCount : ℕ → ℕ
  distinctPartitionCount : ℕ → ℕ
  eulerBijection : ∀ n, BijectionStructure
  partitionIdentity : ∀ n, partitionCount n = distinctPartitionCount n

def PartitionClosed (P : PartitionIdentity) : Prop :=
  ∀ n, P.partitionCount n = P.distinctPartitionCount n

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse