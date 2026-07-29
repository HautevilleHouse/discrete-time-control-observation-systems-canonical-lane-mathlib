import HautevilleHouse.DiscreteTimeControlObservationSystemsCanonicalLaneLean.SystemDynamics

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure KalmanFilterPackage {X U Y : Type} (S : SystemDynamics X U Y) where
  initialEstimate : X
  initialCovariance : Matrix X X
  processNoiseCovariance : Matrix X X
  observationNoiseCovariance : Matrix Y Y
  predictionStep : Prop
  updateStep : Prop
  gainOptimal : Prop

def KalmanFilterClosed (K : KalmanFilterPackage S) : Prop :=
  K.predictionStep ∧ K.updateStep ∧ K.gainOptimal

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse