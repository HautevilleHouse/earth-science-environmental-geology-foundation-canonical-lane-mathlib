import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean

structure LandformPackage where
  topographicExpression : Prop
  erosionalProcess : Prop
  depositionalProcess : Prop
  climaticInfluence : Prop
  chronologicalSequence : Prop

structure LandformEvidence (L : LandformPackage) where
  topographicExpressionClosed : L.topographicExpression
  erosionalProcessClosed : L.erosionalProcess
  depositionalProcessClosed : L.depositionalProcess
  climaticInfluenceClosed : L.climaticInfluence
  chronologicalSequenceClosed : L.chronologicalSequence

def LandformClosed (L : LandformPackage) : Prop :=
  L.topographicExpression ∧ L.erosionalProcess ∧ L.depositionalProcess ∧ L.climaticInfluence ∧ L.chronologicalSequence

theorem landform_closed_from_evidence (L : LandformPackage) (E : LandformEvidence L) : LandformClosed L := by
  exact And.intro E.topographicExpressionClosed
    (And.intro E.erosionalProcessClosed
      (And.intro E.depositionalProcessClosed
        (And.intro E.climaticInfluenceClosed E.chronologicalSequenceClosed)))

end EarthScienceEnvironmentalGeologyFoundationCanonicalLaneLean
end HautevilleHouse
