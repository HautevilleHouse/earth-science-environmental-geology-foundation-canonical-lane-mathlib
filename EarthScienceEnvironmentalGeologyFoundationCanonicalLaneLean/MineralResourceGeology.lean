import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure MineralResourceGeologyPackage where
  oreGenesis : Prop
  geochemicalExploration : Prop
  geophysicalSurvey : Prop
  resourceEstimation : Prop
  environmentalImpact : Prop

structure MineralResourceGeologyEvidence (M : MineralResourceGeologyPackage) where
  oreGenesisClosed : M.oreGenesis
  geochemicalExplorationClosed : M.geochemicalExploration
  geophysicalSurveyClosed : M.geophysicalSurvey
  resourceEstimationClosed : M.resourceEstimation
  environmentalImpactClosed : M.environmentalImpact

def MineralResourceGeologyClosed (M : MineralResourceGeologyPackage) : Prop :=
  M.oreGenesis ∧ M.geochemicalExploration ∧ M.geophysicalSurvey ∧
  M.resourceEstimation ∧ M.environmentalImpact

theorem mineral_resource_geology_closed_from_evidence
    (M : MineralResourceGeologyPackage) (E : MineralResourceGeologyEvidence M) :
    MineralResourceGeologyClosed M := by
  exact And.intro E.oreGenesisClosed
    (And.intro E.geochemicalExplorationClosed
      (And.intro E.geophysicalSurveyClosed
        (And.intro E.resourceEstimationClosed E.environmentalImpactClosed)))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse