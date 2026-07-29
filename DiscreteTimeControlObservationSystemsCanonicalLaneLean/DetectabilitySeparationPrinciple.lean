import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure DetectabilitySeparationPrinciplePackage where
  stateFeedbackStabilizing : Prop
  observerErrorConvergent : Prop
  closedLoopStable : Prop
  separationHolds : Prop

structure DetectabilitySeparationPrincipleEvidence (D : DetectabilitySeparationPrinciplePackage) where
  stateFeedbackStabilizingClosed : D.stateFeedbackStabilizing
  observerErrorConvergentClosed : D.observerErrorConvergent
  closedLoopStableClosed : D.closedLoopStable
  separationHoldsClosed : D.separationHolds

def DetectabilitySeparationPrincipleClosed (D : DetectabilitySeparationPrinciplePackage) : Prop :=
  D.stateFeedbackStabilizing ∧ D.observerErrorConvergent ∧ D.closedLoopStable ∧ D.separationHolds

theorem detectability_separation_principle_closed_from_evidence
    (D : DetectabilitySeparationPrinciplePackage)
    (E : DetectabilitySeparationPrincipleEvidence D) : DetectabilitySeparationPrincipleClosed D := by
  exact And.intro E.stateFeedbackStabilizingClosed
    (And.intro E.observerErrorConvergentClosed
      (And.intro E.closedLoopStableClosed E.separationHoldsClosed))

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse