import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure RockCycleAdmittedObject where
  rockType : Type
  formationProcess : Prop
  transformationPath : Prop
  conclusion : transformationPath

structure AdmissibleClass where
  object : RockCycleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ A.endpointSatisfied ∨ A.remainderRecorded

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse