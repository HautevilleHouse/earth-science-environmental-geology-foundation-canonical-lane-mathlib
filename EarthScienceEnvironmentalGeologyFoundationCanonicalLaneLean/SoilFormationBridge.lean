import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure SoilFormationPackage (W : WeatheringErosionPackage) where
  parentMaterial : Prop
  climate : Prop
  organisms : Prop
  topography : Prop
  time : Prop

structure SoilFormationEvidence {W : WeatheringErosionPackage} (S : SoilFormationPackage W) where
  parentMaterialClosed : S.parentMaterial
  climateClosed : S.climate
  organismsClosed : S.organisms
  topographyClosed : S.topography
  timeClosed : S.time

def SoilFormationClosed {W : WeatheringErosionPackage} (S : SoilFormationPackage W) : Prop :=
  S.parentMaterial ∧ S.climate ∧ S.organisms ∧ S.topography ∧ S.time

theorem soil_formation_closed_from_evidence
    {W : WeatheringErosionPackage} (S : SoilFormationPackage W) (E : SoilFormationEvidence S) :
    SoilFormationClosed S := by
  exact And.intro E.parentMaterialClosed (And.intro E.climateClosed (And.intro E.organismsClosed (And.intro E.topographyClosed E.timeClosed)))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse