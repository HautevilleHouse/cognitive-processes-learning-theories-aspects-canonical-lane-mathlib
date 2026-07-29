import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure CognitiveAdmittedObject where
  learnerModel : Type
  priorKnowledge : Prop
  currentState : Prop
  conceptLearned : Prop
  conclusion : conceptLearned

structure AdmissibleClass where
  object : CognitiveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse