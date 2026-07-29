import CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.BijectionStructure

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure ExchangeArgument (A : AdmissibleClass) where
  leftSet : A.object.carrier
  rightSet : A.object.carrier
  bijectionExists : BijectionClosed (AdmissibleBijection.mk leftSet rightSet (fun x => x) True True)
  invarianceUnderExchange : Prop
  invarianceWitness : invarianceUnderExchange

def ExchangeClosed {A : AdmissibleClass} (E : ExchangeArgument A) : Prop :=
  E.invarianceUnderExchange

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse