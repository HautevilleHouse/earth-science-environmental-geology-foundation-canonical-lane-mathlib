import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure SedimentTransportPackage where
  sedimentFlux : Prop
  continuityEquation : Prop
  erosionDepositionDynamics : Prop
  bedloadTransport : Prop
  suspendedLoadTransport : Prop

structure SedimentTransportEvidence (S : SedimentTransportPackage) where
  sedimentFluxClosed : S.sedimentFlux
  continuityEquationClosed : S.continuityEquation
  erosionDepositionDynamicsClosed : S.erosionDepositionDynamics
  bedloadTransportClosed : S.bedloadTransport
  suspendedLoadTransportClosed : S.suspendedLoadTransport

def SedimentTransportClosed (S : SedimentTransportPackage) : Prop :=
  S.sedimentFlux ∧ S.continuityEquation ∧ S.erosionDepositionDynamics ∧
  S.bedloadTransport ∧ S.suspendedLoadTransport

theorem sediment_transport_closed_from_evidence
    (S : SedimentTransportPackage) (E : SedimentTransportEvidence S) :
    SedimentTransportClosed S := by
  exact And.intro E.sedimentFluxClosed
    (And.intro E.continuityEquationClosed
      (And.intro E.erosionDepositionDynamicsClosed
        (And.intro E.bedloadTransportClosed E.suspendedLoadTransportClosed)))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse