import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure LuenbergerObserverPackage where
  observerGain : Matrix ℝ ℝ (Fin n) (Fin m)
  errorDynamicsStable : Prop
  convergenceRate : ℝ
  outputInjection : Prop

structure LuenbergerObserverEvidence (L : LuenbergerObserverPackage) where
  errorDynamicsStableClosed : L.errorDynamicsStable
  outputInjectionClosed : L.outputInjection

def LuenbergerObserverClosed (L : LuenbergerObserverPackage) : Prop :=
  L.errorDynamicsStable ∧ L.outputInjection

theorem luenberger_observer_closed_from_evidence (L : LuenbergerObserverPackage)
    (E : LuenbergerObserverEvidence L) : LuenbergerObserverClosed L := by
  exact And.intro E.errorDynamicsStableClosed E.outputInjectionClosed

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse