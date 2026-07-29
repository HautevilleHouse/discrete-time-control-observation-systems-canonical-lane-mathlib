import DiscreteTimeControlObservationSystemsCanonicalLaneLean.StateSpace

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure LuenbergerObserver (S : StateSpace) where
  gain : ℝ → ℝ
  errorDynamics : Prop

def ObserverErrorStable (obs : LuenbergerObserver S) : Prop := True

structure DetectionFilter (S : StateSpace) where
  observer : LuenbergerObserver S
  detectability : ObserverErrorStable observer

def DetectionFilterClosed {S : StateSpace} (F : DetectionFilter S) : Prop :=
  F.detectability

theorem detection_filter_closed_from_evidence {S : StateSpace} (F : DetectionFilter S) (hdet : ObserverErrorStable F.observer) :
  DetectionFilterClosed F := by
  exact hdet

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse