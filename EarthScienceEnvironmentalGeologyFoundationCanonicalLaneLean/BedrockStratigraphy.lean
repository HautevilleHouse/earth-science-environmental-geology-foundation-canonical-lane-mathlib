import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean

structure BedrockStratigraphyPackage where
  layerSequence : Type u
  lithology : layerSequence -> Prop
  depositionalEnvironment : layerSequence -> Prop
  geochronology : layerSequence -> Prop
  stratigraphicOrder : layerSequence -> layerSequence -> Prop
  conformity : Prop
  unconformityDetected : Prop

structure BedrockStratigraphyEvidence (B : BedrockStratigraphyPackage) where
  conformityClosed : B.conformity
  unconformityDetectedClosed : B.unconformityDetected

def BedrockStratigraphyClosed (B : BedrockStratigraphyPackage) : Prop :=
  B.conformity ∧ B.unconformityDetected

theorem bedrock_stratigraphy_closed_from_evidence (B : BedrockStratigraphyPackage) (E : BedrockStratigraphyEvidence B) :
    BedrockStratigraphyClosed B := by
  exact And.intro E.conformityClosed E.unconformityDetectedClosed

end EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean
end HautevilleHouse