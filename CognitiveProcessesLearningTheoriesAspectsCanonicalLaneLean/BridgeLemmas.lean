import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LearningTheoriesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse