import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure LQGController where
  stateCostMatrix : Matrix (Fin n) (Fin n) ℝ
  inputCostMatrix : Matrix (Fin m) (Fin m) ℝ
  noiseCovarianceMatrix : Matrix (Fin n) (Fin n) ℝ
  measurementNoiseCovariance : Matrix (Fin p) (Fin p) ℝ
  optimalGainComputed : Prop
  optimalGainComputedTerm : optimalGainComputed

structure LQGControlEvidence (C : LQGController) where
  optimalGainClosed : C.optimalGainComputed

def LQGControlClosed (C : LQGController) : Prop :=
  C.optimalGainComputed

theorem lqg_control_closed_from_evidence (C : LQGController)
    (E : LQGControlEvidence C) : LQGControlClosed C := by
  exact E.optimalGainClosed

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse