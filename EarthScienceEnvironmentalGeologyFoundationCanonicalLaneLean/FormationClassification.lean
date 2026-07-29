import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean

structure FormationPackage where
  layerGeometry : Type u
  stratigraphy : Type v
  sedimentaryStructure : Prop
  fossilContent : Prop
  depositionalEnvironment : Prop
  tectonicSetting : Prop

structure FormationEvidence (F : FormationPackage) where
  sedimentaryStructureClosed : F.sedimentaryStructure
  fossilContentClosed : F.fossilContent
  depositionalEnvironmentClosed : F.depositionalEnvironment
  tectonicSettingClosed : F.tectonicSetting

def FormationClosed (F : FormationPackage) : Prop :=
  F.sedimentaryStructure ∧ F.fossilContent ∧ F.depositionalEnvironment ∧ F.tectonicSetting

theorem formation_closed_from_evidence (F : FormationPackage) (E : FormationEvidence F) : FormationClosed F := by
  exact And.intro E.sedimentaryStructureClosed
    (And.intro E.fossilContentClosed
      (And.intro E.depositionalEnvironmentClosed E.tectonicSettingClosed))

end EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean
end HautevilleHouse
