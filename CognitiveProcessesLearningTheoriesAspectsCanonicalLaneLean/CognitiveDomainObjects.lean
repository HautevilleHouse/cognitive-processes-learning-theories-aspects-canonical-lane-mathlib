import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure CognitiveAgent where
  carrier : Type
  knowledgeState : Type
  learningRate : Prop
  memoryCapacity : Prop

structure CognitiveAdmittedObject where
  agent : CognitiveAgent
  encodesLearningTheory : Prop
  bridgeCondition : Prop
  gateCondition : Prop
  conclusion : bridgeCondition ∧ gateCondition

structure CognitiveEndgameState where
  object : CognitiveAdmittedObject

def CognitiveWitnessClosed (O : CognitiveAdmittedObject) : Prop :=
  O.bridgeCondition ∧ O.gateCondition

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse