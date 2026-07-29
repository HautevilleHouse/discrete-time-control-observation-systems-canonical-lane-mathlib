import DiscreteTimeControlObservationSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiscreteTimeControlWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscreteTimeControlObservationSystemsCanonicalLaneLean
end HautevilleHouse
