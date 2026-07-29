import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure ClimateSystem where
  atmosphereComposition : Prop
  oceanCirculation : Prop
  solarRadiation : Prop
  greenhouseEffect : Prop
  weatherPatterns : Prop
  climateFeedback : Prop

structure ClimateSystemEvidence (C : ClimateSystem) where
  atmosphereCompositionClosed : C.atmosphereComposition
  oceanCirculationClosed : C.oceanCirculation
  solarRadiationClosed : C.solarRadiation
  greenhouseEffectClosed : C.greenhouseEffect
  weatherPatternsClosed : C.weatherPatterns
  climateFeedbackClosed : C.climateFeedback

def ClimateSystemClosed (C : ClimateSystem) : Prop :=
  C.atmosphereComposition ∧ C.oceanCirculation ∧ C.solarRadiation ∧
  C.greenhouseEffect ∧ C.weatherPatterns ∧ C.climateFeedback

theorem climate_system_closed_from_evidence (C : ClimateSystem) (E : ClimateSystemEvidence C) :
    ClimateSystemClosed C := by
  exact And.intro E.atmosphereCompositionClosed
    (And.intro E.oceanCirculationClosed
      (And.intro E.solarRadiationClosed
        (And.intro E.greenhouseEffectClosed
          (And.intro E.weatherPatternsClosed E.climateFeedbackClosed))))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse