import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure HydrologicCycle where
  evaporation : Prop
  condensation : Prop
  precipitation : Prop
  runoff : Prop
  infiltration : Prop
  groundwaterFlow : Prop

structure HydrologicCycleEvidence (H : HydrologicCycle) where
  evaporationClosed : H.evaporation
  condensationClosed : H.condensation
  precipitationClosed : H.precipitation
  runoffClosed : H.runoff
  infiltrationClosed : H.infiltration
  groundwaterFlowClosed : H.groundwaterFlow

def HydrologicCycleClosed (H : HydrologicCycle) : Prop :=
  H.evaporation ∧ H.condensation ∧ H.precipitation ∧
  H.runoff ∧ H.infiltration ∧ H.groundwaterFlow

theorem hydrologic_cycle_closed_from_evidence (H : HydrologicCycle) (E : HydrologicCycleEvidence H) :
    HydrologicCycleClosed H := by
  exact And.intro E.evaporationClosed
    (And.intro E.condensationClosed
      (And.intro E.precipitationClosed
        (And.intro E.runoffClosed
          (And.intro E.infiltrationClosed E.groundwaterFlowClosed))))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse