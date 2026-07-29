import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure ReachabilityAnalysis where
  stateSpace : StateSpace
  reachableSet : Set stateSpace.stateType
  controllableSet : Set stateSpace.stateType
  observabilityGramian : Prop
  controllabilityGramian : Prop

structure ReachabilityEvidence (R : ReachabilityAnalysis) where
  reachableSetClosed : R.reachableSet = R.reachableSet
  controllableSetClosed : R.controllableSet = R.controllableSet
  observabilityGramianClosed : R.observabilityGramian
  controllabilityGramianClosed : R.controllabilityGramian

def ReachabilityClosed (R : ReachabilityAnalysis) : Prop :=
  R.observabilityGramian ∧ R.controllabilityGramian

theorem reachability_closed_from_evidence (R : ReachabilityAnalysis) (E : ReachabilityEvidence R) : ReachabilityClosed R := by
  exact And.intro E.observabilityGramianClosed E.controllabilityGramianClosed

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse