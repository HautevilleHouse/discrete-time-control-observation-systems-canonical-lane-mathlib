import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure StabilizationController where
  stateSpace : StateSpace
  controlLaw : stateSpace.stateType -> stateSpace.controlActions
  closedLoopDynamics : stateSpace.stateType -> stateSpace.stateType := fun x => stateSpace.transitionFunction x (controlLaw x)
  stabilityMargin : ℝ -> Prop := fun ε => True
  lyapunovFunction : stateSpace.stateType -> ℝ
  lyapunovDecreaseCondition : ∀ x : stateSpace.stateType, lyapunovFunction (closedLoopDynamics x) < lyapunovFunction x

structure StabilizationEvidence (C : StabilizationController) where
  controlLawDefined : C.controlLaw = C.controlLaw
  lyapunovDecreaseClosed : C.lyapunovDecreaseCondition

def StabilizationClosed (C : StabilizationController) : Prop :=
  C.lyapunovDecreaseCondition

theorem stabilization_closed_from_evidence (C : StabilizationController) (E : StabilizationEvidence C) : StabilizationClosed C := by
  exact E.lyapunovDecreaseClosed

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse