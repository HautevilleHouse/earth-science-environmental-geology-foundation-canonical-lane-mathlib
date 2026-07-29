import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean

structure EarthAdmittedObject where
  region : Type
  geology : Prop
  environmentalModel : Prop
  conclusion : region → Prop

structure AdmissibleClass where
  object : EarthAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (∀ r, A.object.conclusion r) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean
end HautevilleHouse