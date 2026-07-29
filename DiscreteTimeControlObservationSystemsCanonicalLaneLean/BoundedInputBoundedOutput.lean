import DiscreteTimeControlObservationSystemsCanonicalLaneLean.StateSpace

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure TransferFunction (S : StateSpace) where
  H : ℕ → ℝ
  boundedInputCondition : Prop
  boundedOutputCondition : Prop

def BiboStable (tf : TransferFunction S) : Prop :=
  tf.boundedInputCondition ∧ tf.boundedOutputCondition

structure BoundedInputBoundedOutput (S : StateSpace) where
  tf : TransferFunction S
  biboStable : BiboStable tf

def BoundedInputBoundedOutputClosed {S : StateSpace} (B : BoundedInputBoundedOutput S) : Prop :=
  B.biboStable

theorem bibo_closed_from_evidence {S : StateSpace} (B : BoundedInputBoundedOutput S) (hstable : BiboStable B.tf) :
  BoundedInputBoundedOutputClosed B := by
  exact hstable

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse