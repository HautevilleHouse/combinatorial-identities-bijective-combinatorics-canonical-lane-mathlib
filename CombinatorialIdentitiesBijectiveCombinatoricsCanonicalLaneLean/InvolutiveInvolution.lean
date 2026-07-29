import CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.PascalIdentity

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure InvolutiveInvolution where
  set : Type u
  involution : set → set
  involutionInvolutive : ∀ x, involution (involution x) = x
  fixedPointCount : Nat
  twoCycleCount : Nat
  bijectionWitness : BijectionClosed (AdmissibleBijection.mk (BijectionStructure.mk set 0 0 True) (BijectionStructure.mk set 0 0 True) (fun x => x) True True)

def InvolutionClosed (I : InvolutiveInvolution) : Prop :=
  I.involutionInvolutive

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse