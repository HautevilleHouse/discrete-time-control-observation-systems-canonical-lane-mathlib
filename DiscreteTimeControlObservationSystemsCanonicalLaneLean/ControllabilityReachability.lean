import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure ControllabilityPackage where
  horizon : ℕ
  controllabilityMatrix : Matrix (Fin horizon) ℝ (Fin horizon)
  fullRank : Prop
  reachableSubspaceDimension : ℕ
  stabilizabilityGuaranteed : Prop

structure ControllabilityEvidence (C : ControllabilityPackage) where
  fullRankClosed : C.fullRank
  stabilizabilityGuaranteedClosed : C.stabilizabilityGuaranteed

def ControllabilityClosed (C : ControllabilityPackage) : Prop :=
  C.fullRank ∧ C.stabilizabilityGuaranteed

theorem controllability_closed_from_evidence (C : ControllabilityPackage)
    (E : ControllabilityEvidence C) : ControllabilityClosed C := by
  exact And.intro E.fullRankClosed E.stabilizabilityGuaranteedClosed

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse