import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure HydrologicCyclePackage where
  evaporation : Prop
  condensation : Prop
  precipitation : Prop
  runoff : Prop
  infiltration : Prop
  storage : Prop

structure HydrologicCycleEvidence (H : HydrologicCyclePackage) where
  evaporationClosed : H.evaporation
  condensationClosed : H.condensation
  precipitationClosed : H.precipitation
  runoffClosed : H.runoff
  infiltrationClosed : H.infiltration
  storageClosed : H.storage

def HydrologicCycleClosed (H : HydrologicCyclePackage) : Prop :=
  H.evaporation ∧ H.condensation ∧ H.precipitation ∧ H.runoff ∧ H.infiltration ∧ H.storage

theorem hydrologic_cycle_closed_from_evidence (H : HydrologicCyclePackage) (E : HydrologicCycleEvidence H) :
    HydrologicCycleClosed H := by
  exact And.intro E.evaporationClosed (And.intro E.condensationClosed (And.intro E.precipitationClosed (And.intro E.runoffClosed (And.intro E.infiltrationClosed E.storageClosed))))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse