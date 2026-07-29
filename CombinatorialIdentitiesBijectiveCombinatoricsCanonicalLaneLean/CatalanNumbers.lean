import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure CatalanStructure where
  dyckPaths : ℕ → ℕ
  binaryTrees : ℕ → ℕ
  catalanBijection : ∀ n, BijectionStructure
  catalanIdentity : ∀ n, dyckPaths n = binaryTrees n

def CatalanClosed (C : CatalanStructure) : Prop :=
  ∀ n, C.dyckPaths n = C.binaryTrees n

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse