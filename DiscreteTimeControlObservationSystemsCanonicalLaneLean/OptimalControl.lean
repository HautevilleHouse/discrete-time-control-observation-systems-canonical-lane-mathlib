import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure OptimalControlProblem where
  stateSpace : StateSpace
  costFunction : stateSpace.stateType → stateSpace.controlActions → ℝ
  horizon : ℕ
  optimalValueFunction : stateSpace.stateType → ℝ
  bellmanEquation : ∀ (x : stateSpace.stateType),
    optimalValueFunction x = min (costFunction x u) + optimalValueFunction (stateSpace.transitionFunction x u) over u

structure OptimalControlEvidence (P : OptimalControlProblem) where
  optimalValueFunctionDefined : P.optimalValueFunction = P.optimalValueFunction
  bellmanEquationClosed : P.bellmanEquation

def OptimalControlClosed (P : OptimalControlProblem) : Prop :=
  P.bellmanEquation

theorem optimal_control_closed_from_evidence (P : OptimalControlProblem) (E : OptimalControlEvidence P) : OptimalControlClosed P := by
  exact E.bellmanEquationClosed

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse