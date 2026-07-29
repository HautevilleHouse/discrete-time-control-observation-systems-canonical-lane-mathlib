import DiscreteTimeControlObservationSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure ControlInput where
  u : ℕ → ℝ
deriving Repr

structure ObservationOutput where
  y : ℕ → ℝ
deriving Repr

structure Disturbance where
  d : ℕ → ℝ
deriving Repr

structure StateSpace where
  X : ℕ → ℝ
  control : ControlInput
  observation : ObservationOutput
  disturbance : Disturbance
  dynamics : (u : ℝ) → (d : ℝ) → ℝ → ℝ
  observationMap : (u : ℝ) → ℝ → ℝ

def StateSpaceClosed (S : StateSpace) : Prop := True

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse