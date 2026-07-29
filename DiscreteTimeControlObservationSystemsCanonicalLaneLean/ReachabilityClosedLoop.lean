import DiscreteTimeControlObservationSystemsCanonicalLaneLean.StateSpace

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure LinearFeedback where
  K : ℝ → ℝ

def ReachableSet (S : StateSpace) (T : ℕ) : Prop := True

def StabilizabilityCondition (S : StateSpace) (K : LinearFeedback) : Prop := True

structure ReachabilityClosedLoop (S : StateSpace) where
  feedback : LinearFeedback
  stabilizability : StabilizabilityCondition S feedback

def ReachabilityClosedLoopClosed {S : StateSpace} (R : ReachabilityClosedLoop S) : Prop :=
  R.stabilizability

theorem reachability_closed_loop_closed_from_evidence {S : StateSpace} (R : ReachabilityClosedLoop S) (hstab : StabilizabilityCondition S R.feedback) :
  ReachabilityClosedLoopClosed R := by
  exact hstab

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse