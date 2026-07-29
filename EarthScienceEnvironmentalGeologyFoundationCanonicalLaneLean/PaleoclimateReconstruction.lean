import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean

structure PaleoclimateReconstructionPackage where
  proxyRecord : Type u
  climateVariable : proxyRecord -> Prop
  timeSeries : proxyRecord -> Prop
  datingMethod : proxyRecord -> Prop
  calibrationEquation : Prop
  reconstructionValidated : Prop

structure PaleoclimateReconstructionEvidence (P : PaleoclimateReconstructionPackage) where
  calibrationEquationClosed : P.calibrationEquation
  reconstructionValidatedClosed : P.reconstructionValidated

def PaleoclimateReconstructionClosed (P : PaleoclimateReconstructionPackage) : Prop :=
  P.calibrationEquation ∧ P.reconstructionValidated

theorem paleoclimate_reconstruction_closed_from_evidence (P : PaleoclimateReconstructionPackage) (E : PaleoclimateReconstructionEvidence P) :
    PaleoclimateReconstructionClosed P := by
  exact And.intro E.calibrationEquationClosed E.reconstructionValidatedClosed

end EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean
end HautevilleHouse