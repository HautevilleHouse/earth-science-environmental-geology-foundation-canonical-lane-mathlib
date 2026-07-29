import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure ClimateModelingFoundationPackage where
  radiativeForcing : Prop
  energyBalance : Prop
  atmosphereOceanCoupling : Prop
  paleoclimateProxies : Prop
  feedbackMechanisms : Prop

structure ClimateModelingFoundationEvidence (C : ClimateModelingFoundationPackage) where
  radiativeForcingClosed : C.radiativeForcing
  energyBalanceClosed : C.energyBalance
  atmosphereOceanCouplingClosed : C.atmosphereOceanCoupling
  paleoclimateProxiesClosed : C.paleoclimateProxies
  feedbackMechanismsClosed : C.feedbackMechanisms

def ClimateModelingFoundationClosed (C : ClimateModelingFoundationPackage) : Prop :=
  C.radiativeForcing ∧ C.energyBalance ∧ C.atmosphereOceanCoupling ∧
  C.paleoclimateProxies ∧ C.feedbackMechanisms

theorem climate_modeling_foundation_closed_from_evidence
    (C : ClimateModelingFoundationPackage) (E : ClimateModelingFoundationEvidence C) :
    ClimateModelingFoundationClosed C := by
  exact And.intro E.radiativeForcingClosed
    (And.intro E.energyBalanceClosed
      (And.intro E.atmosphereOceanCouplingClosed
        (And.intro E.paleoclimateProxiesClosed E.feedbackMechanismsClosed)))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse