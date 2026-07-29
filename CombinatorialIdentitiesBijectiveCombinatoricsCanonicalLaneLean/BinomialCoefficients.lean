import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure BinomialIdentity where
  n k : ℕ
  left : ℕ
  right : ℕ
  bijectionProof : left = right

def BinomialIdentityClosed (B : BinomialIdentity) : Prop :=
  B.left = B.right

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse