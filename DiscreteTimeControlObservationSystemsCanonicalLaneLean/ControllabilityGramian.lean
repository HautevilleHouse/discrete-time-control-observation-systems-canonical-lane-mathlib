import DiscreteTimeControlObservationSystemsCanonicalLaneLean.StateSpace

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure ControllabilityGramian (S : StateSpace) where
  gramianMatrix : ℕ → ℕ → ℝ
  positiveDefinite : Prop
  rankCondition : Prop

def ControllabilityGramianClosed {S : StateSpace} (G : ControllabilityGramian S) : Prop :=
  G.positiveDefinite ∧ G.rankCondition

theorem controllabilityGramian_closed_from_evidence {S : StateSpace} (G : ControllabilityGramian S) (hpos : G.positiveDefinite) (hrank : G.rankCondition) :
  ControllabilityGramianClosed G := by
  exact And.intro hpos hrank

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse