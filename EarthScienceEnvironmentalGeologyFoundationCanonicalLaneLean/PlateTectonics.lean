import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure PlateTectonics where
  divergentBoundary : Prop
  convergentBoundary : Prop
  transformBoundary : Prop
  subductionZone : Prop
  seafloorSpreading : Prop
  continentalDrift : Prop

structure PlateTectonicsEvidence (P : PlateTectonics) where
  divergentBoundaryClosed : P.divergentBoundary
  convergentBoundaryClosed : P.convergentBoundary
  transformBoundaryClosed : P.transformBoundary
  subductionZoneClosed : P.subductionZone
  seafloorSpreadingClosed : P.seafloorSpreading
  continentalDriftClosed : P.continentalDrift

def PlateTectonicsClosed (P : PlateTectonics) : Prop :=
  P.divergentBoundary ∧ P.convergentBoundary ∧ P.transformBoundary ∧
  P.subductionZone ∧ P.seafloorSpreading ∧ P.continentalDrift

theorem plate_tectonics_closed_from_evidence (P : PlateTectonics) (E : PlateTectonicsEvidence P) :
    PlateTectonicsClosed P := by
  exact And.intro E.divergentBoundaryClosed
    (And.intro E.convergentBoundaryClosed
      (And.intro E.transformBoundaryClosed
        (And.intro E.subductionZoneClosed
          (And.intro E.seafloorSpreadingClosed E.continentalDriftClosed))))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse