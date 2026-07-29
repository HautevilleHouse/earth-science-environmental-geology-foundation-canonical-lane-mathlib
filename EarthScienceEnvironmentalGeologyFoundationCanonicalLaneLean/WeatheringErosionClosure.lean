import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure WeatheringErosionPackage (R : RockCycleAdmittedObject) where
  physicalWeathering : Prop
  chemicalWeathering : Prop
  erosionTransport : Prop
  deposition : Prop

structure WeatheringErosionEvidence {R : RockCycleAdmittedObject} (W : WeatheringErosionPackage R) where
  physicalWeatheringClosed : W.physicalWeathering
  chemicalWeatheringClosed : W.chemicalWeathering
  erosionTransportClosed : W.erosionTransport
  depositionClosed : W.deposition

def WeatheringErosionClosed {R : RockCycleAdmittedObject} (W : WeatheringErosionPackage R) : Prop :=
  W.physicalWeathering ∧ W.chemicalWeathering ∧ W.erosionTransport ∧ W.deposition

theorem weathering_erosion_closed_from_evidence
    {R : RockCycleAdmittedObject} (W : WeatheringErosionPackage R) (E : WeatheringErosionEvidence W) :
    WeatheringErosionClosed W := by
  exact And.intro E.physicalWeatheringClosed (And.intro E.chemicalWeatheringClosed (And.intro E.erosionTransportClosed E.depositionClosed))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse