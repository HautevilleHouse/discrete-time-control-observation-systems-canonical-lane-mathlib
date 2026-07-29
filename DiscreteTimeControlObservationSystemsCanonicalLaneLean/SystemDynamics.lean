import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure SystemDynamics (X U Y : Type) where
  stateTransition : X → U → X
  observationMap : X → Y
  discreteTime : Prop
  deterministic : Prop
  timeInvariant : Prop

def systemDynamicsFieldClosed (S : SystemDynamics X U Y) : Prop :=
  S.discreteTime ∧ S.deterministic ∧ S.timeInvariant

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse