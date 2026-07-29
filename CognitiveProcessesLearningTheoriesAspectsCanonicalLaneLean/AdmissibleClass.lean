import CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure AdmissibleClass where
  object : CognitiveLearningAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CognitiveLearningWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse
