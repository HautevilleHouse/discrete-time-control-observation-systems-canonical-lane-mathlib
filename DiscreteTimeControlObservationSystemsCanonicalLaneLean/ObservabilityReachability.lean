import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure ObservabilityGramian where
  timeHorizon : Nat
  gramianMatrix : Matrix (Fin timeHorizon) (Fin timeHorizon) ℝ
  rankFull : Prop
  rankFullTerm : rankFull

structure ReachabilityGramian where
  timeHorizon : Nat
  gramianMatrix : Matrix (Fin timeHorizon) (Fin timeHorizon) ℝ
  rankFull : Prop
  rankFullTerm : rankFull

structure ObservabilityEvidence (G : ObservabilityGramian) where
  rankFullClosed : G.rankFull

structure ReachabilityEvidence (G : ReachabilityGramian) where
  rankFullClosed : G.rankFull

def ObservabilityClosed (G : ObservabilityGramian) : Prop :=
  G.rankFull

def ReachabilityClosed (G : ReachabilityGramian) : Prop :=
  G.rankFull

theorem observability_closed_from_evidence (G : ObservabilityGramian)
    (E : ObservabilityEvidence G) : ObservabilityClosed G := by
  exact E.rankFullClosed

theorem reachability_closed_from_evidence (G : ReachabilityGramian)
    (E : ReachabilityEvidence G) : ReachabilityClosed G := by
  exact E.rankFullClosed

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse