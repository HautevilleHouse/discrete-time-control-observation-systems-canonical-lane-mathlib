import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure ObservabilityAnalysis where
  stateSpace : StateSpace
  observationHistory : ℕ → Set stateSpace.stateType
  deterministicObservability : Prop
  observerDesign : stateSpace.stateType → stateSpace.observationActions → stateSpace.stateType
  convergenceCondition : ∀ (x : stateSpace.stateType) (y : stateSpace.stateType),
    (∀ n : ℕ, stateSpace.observationFunction (stateSpace.transitionFunction^[n] x) = stateSpace.observationFunction (stateSpace.transitionFunction^[n] y)) → x = y

structure ObservabilityEvidence (O : ObservabilityAnalysis) where
  deterministicObservabilityClosed : O.deterministicObservability
  convergenceConditionClosed : O.convergenceCondition

def ObservabilityClosed (O : ObservabilityAnalysis) : Prop :=
  O.deterministicObservability ∧ O.convergenceCondition

theorem observability_closed_from_evidence (O : ObservabilityAnalysis) (E : ObservabilityEvidence O) : ObservabilityClosed O := by
  exact And.intro E.deterministicObservabilityClosed E.convergenceConditionClosed

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse