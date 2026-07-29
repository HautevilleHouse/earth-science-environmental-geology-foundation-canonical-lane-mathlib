import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean

structure SeismicHazardAssessmentPackage where
  faultSystem : Type u
  seismicityCatalog : Type v
  recurrenceInterval : seismicityCatalog -> Prop
  magnitudeDistribution : seismicityCatalog -> Prop
  groundMotionPrediction : Prop
  hazardCurveComputed : Prop
  peakGroundAcceleration : Prop

structure SeismicHazardAssessmentEvidence (S : SeismicHazardAssessmentPackage) where
  recurrenceIntervalClosed : S.recurrenceInterval (S.seismicityCatalog)
  magnitudeDistributionClosed : S.magnitudeDistribution (S.seismicityCatalog)
  groundMotionPredictionClosed : S.groundMotionPrediction
  hazardCurveComputedClosed : S.hazardCurveComputed
  peakGroundAccelerationClosed : S.peakGroundAcceleration

def SeismicHazardAssessmentClosed (S : SeismicHazardAssessmentPackage) : Prop :=
  S.groundMotionPrediction ∧ S.hazardCurveComputed ∧ S.peakGroundAcceleration

theorem seismic_hazard_assessment_closed_from_evidence (S : SeismicHazardAssessmentPackage) (E : SeismicHazardAssessmentEvidence S) :
    SeismicHazardAssessmentClosed S := by
  exact And.intro E.groundMotionPredictionClosed (And.intro E.hazardCurveComputedClosed E.peakGroundAccelerationClosed)

end EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean
end HautevilleHouse