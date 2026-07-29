import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure GeosphereStructure where
  earthCrust : Prop
  earthMantle : Prop
  earthCore : Prop
  lithosphereLayer : Prop
  asthenosphereLayer : Prop
  boundaryConditions : Prop

structure GeosphereEvidence (G : GeosphereStructure) where
  earthCrustClosed : G.earthCrust
  earthMantleClosed : G.earthMantle
  earthCoreClosed : G.earthCore
  lithosphereLayerClosed : G.lithosphereLayer
  asthenosphereLayerClosed : G.asthenosphereLayer
  boundaryConditionsClosed : G.boundaryConditions

def GeosphereClosed (G : GeosphereStructure) : Prop :=
  G.earthCrust ∧ G.earthMantle ∧ G.earthCore ∧
  G.lithosphereLayer ∧ G.asthenosphereLayer ∧ G.boundaryConditions

theorem geosphere_closed_from_evidence (G : GeosphereStructure) (E : GeosphereEvidence G) :
    GeosphereClosed G := by
  exact And.intro E.earthCrustClosed
    (And.intro E.earthMantleClosed
      (And.intro E.earthCoreClosed
        (And.intro E.lithosphereLayerClosed
          (And.intro E.asthenosphereLayerClosed E.boundaryConditionsClosed))))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse