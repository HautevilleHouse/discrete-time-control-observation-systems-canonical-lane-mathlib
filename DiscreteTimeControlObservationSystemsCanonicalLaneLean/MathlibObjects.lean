import DiscreteTimeControlObservationSystemsCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

structure DiscreteTimeControlSpace where
  stateSpace : Type
  stateTopology : TopologicalSpace stateSpace
  observationSpace : Type
  observationTopology : TopologicalSpace observationSpace
  controlSpace : Type
  controlTopology : TopologicalSpace controlSpace

structure DiscreteTimeControlAdmittedObject where
  space : DiscreteTimeControlSpace
  dynamicsControlled : Prop
  observationOutputs : Prop
  controllabilityAchieved : Prop
  conclusion : controllabilityAchieved

structure DiscreteTimeControlEndgameState where
  object : DiscreteTimeControlAdmittedObject

def DiscreteTimeControlWitnessClosed (O : DiscreteTimeControlAdmittedObject) : Prop :=
  O.controllabilityAchieved

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse
