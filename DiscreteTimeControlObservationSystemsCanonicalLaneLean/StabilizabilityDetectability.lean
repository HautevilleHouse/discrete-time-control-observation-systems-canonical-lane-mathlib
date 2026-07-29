import HautevilleHouse.DiscreteTimeControlObservationSystemsCanonicalLaneLean.SystemDynamics
import HautevilleHouse.DiscreteTimeControlObservationSystemsCanonicalLaneLean.ReachabilityObservability

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure StabilizabilityPackage {X U Y : Type} (S : SystemDynamics X U Y)
    (R : ReachabilityPackage S) where
  uncontrollableModesStable : Prop
  stabilizable : Prop

def stabilizableClosed {X U Y : Type} {S : SystemDynamics X U Y}
    {R : ReachabilityPackage S} (P : StabilizabilityPackage S R) : Prop :=
  P.uncontrollableModesStable ∧ P.stabilizable

structure DetectabilityPackage {X U Y : Type} (S : SystemDynamics X U Y)
    (O : ObservabilityPackage S) where
  unobservableModesStable : Prop
  detectable : Prop

def detectableClosed {X U Y : Type} {S : SystemDynamics X U Y}
    {O : ObservabilityPackage S} (P : DetectabilityPackage S O) : Prop :=
  P.unobservableModesStable ∧ P.detectable

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse