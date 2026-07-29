import DiscreteTimeControlObservationSystemsCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  discreteControlConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "discrete-time-control-observation-systems-canonical-lane",
  theoremName := "discrete-time-control-observation-systems-canonical-lane",
  theoremObject := "Discrete Time Control Observation Systems",
  classicalBoundary := "open source boundary",
  discreteControlConstrainedStatement := "discrete-control-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "discrete_control_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse