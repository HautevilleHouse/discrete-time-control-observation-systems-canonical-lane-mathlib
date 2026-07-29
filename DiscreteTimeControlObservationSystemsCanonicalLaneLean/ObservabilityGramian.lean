import DiscreteTimeControlObservationSystemsCanonicalLaneLean.StateSpace

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure ObservabilityGramian (S : StateSpace) where
  gramianMatrix : ℕ → ℕ → ℝ
  positiveDefinite : Prop
  rankCondition : Prop

def ObservabilityGramianClosed {S : StateSpace} (G : ObservabilityGramian S) : Prop :=
  G.positiveDefinite ∧ G.rankCondition

theorem observabilityGramian_closed_from_evidence {S : StateSpace} (G : ObservabilityGramian S) (hpos : G.positiveDefinite) (hrank : G.rankCondition) :
  ObservabilityGramianClosed G := by
  exact And.intro hpos hrank

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse