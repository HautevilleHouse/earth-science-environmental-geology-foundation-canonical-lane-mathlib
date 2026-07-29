import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean

structure ResourceDepositPackage where
  mineralizationProcess : Prop
  hostRockProperty : Prop
  gradeDistribution : Prop
  structuralControl : Prop
  explorationTarget : Prop

structure ResourceDepositEvidence (R : ResourceDepositPackage) where
  mineralizationProcessClosed : R.mineralizationProcess
  hostRockPropertyClosed : R.hostRockProperty
  gradeDistributionClosed : R.gradeDistribution
  structuralControlClosed : R.structuralControl
  explorationTargetClosed : R.explorationTarget

def ResourceDepositClosed (R : ResourceDepositPackage) : Prop :=
  R.mineralizationProcess ∧ R.hostRockProperty ∧ R.gradeDistribution ∧ R.structuralControl ∧ R.explorationTarget

theorem resource_deposit_closed_from_evidence (R : ResourceDepositPackage) (E : ResourceDepositEvidence R) : ResourceDepositClosed R := by
  exact And.intro E.mineralizationProcessClosed
    (And.intro E.hostRockPropertyClosed
      (And.intro E.gradeDistributionClosed
        (And.intro E.structuralControlClosed E.explorationTargetClosed)))

end EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean
end HautevilleHouse
