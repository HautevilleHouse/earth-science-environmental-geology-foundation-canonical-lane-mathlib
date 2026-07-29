import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean

structure LandslideSusceptibilityMappingPackage where
  terrainUnit : Type u
  slopeAngle : terrainUnit -> Prop
  lithologyMap : terrainUnit -> Prop
  landCover : terrainUnit -> Prop
  triggerMechanism : Prop
  susceptibilityIndex : Prop
  hazardZoneDelimitation : Prop

structure LandslideSusceptibilityMappingEvidence (L : LandslideSusceptibilityMappingPackage) where
  triggerMechanismClosed : L.triggerMechanism
  susceptibilityIndexClosed : L.susceptibilityIndex
  hazardZoneDelimitationClosed : L.hazardZoneDelimitation

def LandslideSusceptibilityMappingClosed (L : LandslideSusceptibilityMappingPackage) : Prop :=
  L.triggerMechanism ∧ L.susceptibilityIndex ∧ L.hazardZoneDelimitation

theorem landslide_susceptibility_mapping_closed_from_evidence (L : LandslideSusceptibilityMappingPackage) (E : LandslideSusceptibilityMappingEvidence L) :
    LandslideSusceptibilityMappingClosed L := by
  exact And.intro E.triggerMechanismClosed (And.intro E.susceptibilityIndexClosed E.hazardZoneDelimitationClosed)

end EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean
end HautevilleHouse