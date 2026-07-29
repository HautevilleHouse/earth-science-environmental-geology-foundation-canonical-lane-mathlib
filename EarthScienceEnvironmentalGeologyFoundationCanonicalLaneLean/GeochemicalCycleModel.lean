import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean

structure GeochemicalCycleModelPackage where
  element : Type u
  reservoir : Type v
  reservoirMass : reservoir -> Prop
  flux : reservoir -> reservoir -> Prop
  sourceSinkBalance : Prop
  residenceTimeComputed : Prop
  cycleClosure : Prop

structure GeochemicalCycleModelEvidence (G : GeochemicalCycleModelPackage) where
  sourceSinkBalanceClosed : G.sourceSinkBalance
  residenceTimeComputedClosed : G.residenceTimeComputed
  cycleClosureClosed : G.cycleClosure

def GeochemicalCycleModelClosed (G : GeochemicalCycleModelPackage) : Prop :=
  G.sourceSinkBalance ∧ G.residenceTimeComputed ∧ G.cycleClosure

theorem geochemical_cycle_model_closed_from_evidence (G : GeochemicalCycleModelPackage) (E : GeochemicalCycleModelEvidence G) :
    GeochemicalCycleModelClosed G := by
  exact And.intro E.sourceSinkBalanceClosed (And.intro E.residenceTimeComputedClosed E.cycleClosureClosed)

end EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean
end HautevilleHouse