import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyFoundation

structure RockCycle where
  igneousRockFormation : Prop
  sedimentaryRockFormation : Prop
  metamorphicRockFormation : Prop
  meltingSolidification : Prop
  weatheringErosion : Prop
  compactionCementation : Prop

structure RockCycleEvidence (R : RockCycle) where
  igneousRockFormationClosed : R.igneousRockFormation
  sedimentaryRockFormationClosed : R.sedimentaryRockFormation
  metamorphicRockFormationClosed : R.metamorphicRockFormation
  meltingSolidificationClosed : R.meltingSolidification
  weatheringErosionClosed : R.weatheringErosion
  compactionCementationClosed : R.compactionCementation

def RockCycleClosed (R : RockCycle) : Prop :=
  R.igneousRockFormation ∧ R.sedimentaryRockFormation ∧
  R.metamorphicRockFormation ∧ R.meltingSolidification ∧
  R.weatheringErosion ∧ R.compactionCementation

theorem rock_cycle_closed_from_evidence (R : RockCycle) (E : RockCycleEvidence R) :
    RockCycleClosed R := by
  exact And.intro E.igneousRockFormationClosed
    (And.intro E.sedimentaryRockFormationClosed
      (And.intro E.metamorphicRockFormationClosed
        (And.intro E.meltingSolidificationClosed
          (And.intro E.weatheringErosionClosed E.compactionCementationClosed))))

end EarthScienceEnvironmentalGeologyFoundation
end HautevilleHouse