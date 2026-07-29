import canonicalLaneMathlib.AdmissibleClass
import DiscreteTimeControlObservationSystemsCanonicalLaneLean.StateSpaceModel
import DiscreteTimeControlObservationSystemsCanonicalLaneLean.ObservabilityReachability
import DiscreteTimeControlObservationSystemsCanonicalLaneLean.LQGOptimalControl

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def DiscreteTimeControlObservationSystemsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem discrete_time_control_observation_systems_endgame (A : AdmissibleClass) :
    DiscreteTimeControlObservationSystemsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse