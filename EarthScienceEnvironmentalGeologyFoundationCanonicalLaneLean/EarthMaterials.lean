import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure EarthMaterials where
  minerals : Prop
  rocks : Prop
  sediments : Prop
  ores : Prop
  fossilFuels : Prop
  groundwaterResources : Prop

structure EarthMaterialsEvidence (M : EarthMaterials) where
  mineralsClosed : M.minerals
  rocksClosed : M.rocks
  sedimentsClosed : M.sediments
  oresClosed : M.ores
  fossilFuelsClosed : M.fossilFuels
  groundwaterResourcesClosed : M.groundwaterResources

def EarthMaterialsClosed (M : EarthMaterials) : Prop :=
  M.minerals ∧ M.rocks ∧ M.sediments ∧ M.ores ∧ M.fossilFuels ∧ M.groundwaterResources

theorem earth_materials_closed_from_evidence (M : EarthMaterials) (E : EarthMaterialsEvidence M) :
    EarthMaterialsClosed M := by
  exact And.intro E.mineralsClosed
    (And.intro E.rocksClosed
      (And.intro E.sedimentsClosed
        (And.intro E.oresClosed
          (And.intro E.fossilFuelsClosed E.groundwaterResourcesClosed))))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse