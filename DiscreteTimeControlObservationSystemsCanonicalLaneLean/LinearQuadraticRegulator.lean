import HautevilleHouse.DiscreteTimeControlObservationSystemsCanonicalLaneLean.SystemDynamics
import HautevilleHouse.DiscreteTimeControlObservationSystemsCanonicalLaneLean.ReachabilityObservability

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure LQRPackage {X U Y : Type} (S : SystemDynamics X U Y)
    (R : ReachabilityPackage S) (O : ObservabilityPackage S) where
  costFunction : (X × U) → ℝ
  optimalPolicy : X → U
  algebraicRiccatiEquation : Prop
  closedLoopStable : Prop

def LQRClosed (L : LQRPackage S R O) : Prop :=
  L.algebraicRiccatiEquation ∧ L.closedLoopStable

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse