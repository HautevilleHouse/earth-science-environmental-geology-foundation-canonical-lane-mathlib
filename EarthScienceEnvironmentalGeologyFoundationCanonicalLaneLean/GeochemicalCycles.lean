import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure GeochemicalCyclesPackage where
  carbonCycle : Prop
  nitrogenCycle : Prop
  phosphorusCycle : Prop
  sulfurCycle : Prop
  oceanChemistry : Prop

structure GeochemicalCyclesEvidence (G : GeochemicalCyclesPackage) where
  carbonCycleClosed : G.carbonCycle
  nitrogenCycleClosed : G.nitrogenCycle
  phosphorusCycleClosed : G.phosphorusCycle
  sulfurCycleClosed : G.sulfurCycle
  oceanChemistryClosed : G.oceanChemistry

def GeochemicalCyclesClosed (G : GeochemicalCyclesPackage) : Prop :=
  G.carbonCycle ∧ G.nitrogenCycle ∧ G.phosphorusCycle ∧
  G.sulfurCycle ∧ G.oceanChemistry

theorem geochemical_cycles_closed_from_evidence
    (G : GeochemicalCyclesPackage) (E : GeochemicalCyclesEvidence G) :
    GeochemicalCyclesClosed G := by
  exact And.intro E.carbonCycleClosed
    (And.intro E.nitrogenCycleClosed
      (And.intro E.phosphorusCycleClosed
        (And.intro E.sulfurCycleClosed E.oceanChemistryClosed)))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse