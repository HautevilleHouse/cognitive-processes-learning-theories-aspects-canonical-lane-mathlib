import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CognitiveWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  have h := A.object.conclusion
  exact And.left h

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse