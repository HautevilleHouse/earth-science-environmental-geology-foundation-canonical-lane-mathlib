import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure PlateTectonicsPackage where
  continentalDrift : Prop
  seafloorSpreading : Prop
  subduction : Prop
  plateBoundaryTypes : Prop
  mantleConvection : Prop

structure PlateTectonicsEvidence (P : PlateTectonicsPackage) where
  continentalDriftClosed : P.continentalDrift
  seafloorSpreadingClosed : P.seafloorSpreading
  subductionClosed : P.subduction
  plateBoundaryTypesClosed : P.plateBoundaryTypes
  mantleConvectionClosed : P.mantleConvection

def PlateTectonicsClosed (P : PlateTectonicsPackage) : Prop :=
  P.continentalDrift ∧ P.seafloorSpreading ∧ P.subduction ∧ P.plateBoundaryTypes ∧ P.mantleConvection

theorem plate_tectonics_closed_from_evidence (P : PlateTectonicsPackage) (E : PlateTectonicsEvidence P) :
    PlateTectonicsClosed P := by
  exact And.intro E.continentalDriftClosed (And.intro E.seafloorSpreadingClosed (And.intro E.subductionClosed (And.intro E.plateBoundaryTypesClosed E.mantleConvectionClosed)))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse