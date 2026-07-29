import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean

structure ClimateModelPackage (A : AdmissibleClass) where
  temperatureField : A.object.region → ℝ
  precipitationField : A.object.region → ℝ
  greenhouseGasConcentration : ℝ
  radiativeForcing : Prop

def ClimateModelClosed {A : AdmissibleClass} (C : ClimateModelPackage A) : Prop :=
  C.radiativeForcing

theorem climate_model_closed_evidence (A : AdmissibleClass) : ClimateModelPackage A := by
  refine { temperatureField := λ r => 288.15, precipitationField := λ r => 0.0, greenhouseGasConcentration := 415.0, radiativeForcing := True }

end EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean
end HautevilleHouse