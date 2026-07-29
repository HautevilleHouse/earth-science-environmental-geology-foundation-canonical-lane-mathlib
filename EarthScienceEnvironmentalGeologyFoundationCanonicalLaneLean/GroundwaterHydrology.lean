import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure GroundwaterHydrologyPackage where
  darcyFlow : Prop
  hydraulicConductivity : Prop
  storageCoefficient : Prop
  rechargeDischarge : Prop
  contaminantTransport : Prop

structure GroundwaterHydrologyEvidence (G : GroundwaterHydrologyPackage) where
  darcyFlowClosed : G.darcyFlow
  hydraulicConductivityClosed : G.hydraulicConductivity
  storageCoefficientClosed : G.storageCoefficient
  rechargeDischargeClosed : G.rechargeDischarge
  contaminantTransportClosed : G.contaminantTransport

def GroundwaterHydrologyClosed (G : GroundwaterHydrologyPackage) : Prop :=
  G.darcyFlow ∧ G.hydraulicConductivity ∧ G.storageCoefficient ∧
  G.rechargeDischarge ∧ G.contaminantTransport

theorem groundwater_hydrology_closed_from_evidence
    (G : GroundwaterHydrologyPackage) (E : GroundwaterHydrologyEvidence G) :
    GroundwaterHydrologyClosed G := by
  exact And.intro E.darcyFlowClosed
    (And.intro E.hydraulicConductivityClosed
      (And.intro E.storageCoefficientClosed
        (And.intro E.rechargeDischargeClosed E.contaminantTransportClosed)))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse