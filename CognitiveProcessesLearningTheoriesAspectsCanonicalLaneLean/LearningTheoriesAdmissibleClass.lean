import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure LearningTheoriesAdmissibleObject where
  learnerModel : Type
  priorKnowledge : Prop
  learningRate : Prop
  generalizationBound : Prop
  conclusion : generalizationBound

structure AdmissibleClass where
  object : LearningTheoriesAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LearningTheoriesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse