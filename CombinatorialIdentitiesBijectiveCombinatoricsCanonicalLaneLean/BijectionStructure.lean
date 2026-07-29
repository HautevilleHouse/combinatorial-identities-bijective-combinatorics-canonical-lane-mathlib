import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure BijectionStructure (A B : Type) where
  bijection : A → B
  inverse : B → A
  leftInverse : ∀ a, inverse (bijection a) = a
  rightInverse : ∀ b, bijection (inverse b) = b

structure BijectionStructurePackage where
  sourceSet : Type u
  targetSet : Type v
  bijection : BijectionStructure sourceSet targetSet
  preservedProperty : Prop
  propertyPreserved : preservedProperty

def BijectionStructureClosed (P : BijectionStructurePackage) : Prop :=
  P.preservedProperty

theorem bijection_structure_closed_from_evidence (P : BijectionStructurePackage) :
    BijectionStructureClosed P := by
  exact P.propertyPreserved

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse