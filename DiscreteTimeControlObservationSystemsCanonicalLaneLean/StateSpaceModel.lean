import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure StateSpaceModel where
  stateSpace : Type u
  inputSpace : Type v
  outputSpace : Type w
  dynamics : stateSpace -> inputSpace -> stateSpace
  observationMap : stateSpace -> outputSpace
  initialCondition : stateSpace

structure StateSpaceEvidence (M : StateSpaceModel) where
  dynamicsLinear : Prop
  observationLinear : Prop
  initialConditionWellDefined : Prop

def StateSpaceClosed (M : StateSpaceModel) : Prop :=
  M.dynamicsLinear ∧ M.observationLinear ∧ M.initialConditionWellDefined

theorem state_space_closed_from_evidence (M : StateSpaceModel)
    (E : StateSpaceEvidence M) : StateSpaceClosed M := by
  exact And.intro E.dynamicsLinear
    (And.intro E.observationLinear E.initialConditionWellDefined)

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse