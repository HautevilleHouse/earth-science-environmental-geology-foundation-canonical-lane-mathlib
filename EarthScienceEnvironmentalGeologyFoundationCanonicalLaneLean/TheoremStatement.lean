import canonicalLaneMathlib.ReviewerBridge

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean

structure EarthScienceEnvironmentalGeologyAdmittedObject where
  space : EarthScienceEnvironmentalGeologySpace
  foundationModeled : Prop
  dataCoverageSatisfied : Prop
  conclusion : foundationModeled ∧ dataCoverageSatisfied

structure EarthScienceEnvironmentalGeologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

def EarthScienceEnvironmentalGeologyWitnessClosed (O : EarthScienceEnvironmentalGeologyAdmittedObject) : Prop :=
  O.foundationModeled ∧ O.dataCoverageSatisfied

end EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean
end HautevilleHouse