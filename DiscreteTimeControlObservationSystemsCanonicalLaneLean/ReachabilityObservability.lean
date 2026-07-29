import HautevilleHouse.DiscreteTimeControlObservationSystemsCanonicalLaneLean.SystemDynamics

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure ReachabilityPackage {X U Y : Type} (S : SystemDynamics X U Y) where
  controllableSubspace : Set X
  reachableInFiniteSteps : Prop
  controllabilityGramian : Prop
  fullStateControllability : Prop

structure ObservabilityPackage {X U Y : Type} (S : SystemDynamics X U Y) where
  unobservableSubspace : Set X
  observableInFiniteSteps : Prop
  observabilityGramian : Prop
  fullStateObservability : Prop

def ReachabilityObservationEvidence {X U Y : Type} {S : SystemDynamics X U Y} (R : ReachabilityPackage S) (O : ObservabilityPackage S) : Prop :=
  R.controllableSubspace = ⊥ ∧ O.unobservableSubspace = ⊥

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse