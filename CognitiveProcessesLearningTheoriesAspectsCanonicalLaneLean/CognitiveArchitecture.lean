import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure CognitiveArchitecturePackage where
  workingMemoryCapacity : Prop
  attentionalControl : Prop
  declarativeProceduralBalance : Prop
  chunkingMechanism : Prop

structure CognitiveArchitectureEvidence (C : CognitiveArchitecturePackage) where
  workingMemoryCapacityClosed : C.workingMemoryCapacity
  attentionalControlClosed : C.attentionalControl
  declarativeProceduralBalanceClosed : C.declarativeProceduralBalance
  chunkingMechanismClosed : C.chunkingMechanism

def CognitiveArchitectureClosed (C : CognitiveArchitecturePackage) : Prop :=
  C.workingMemoryCapacity ∧ C.attentionalControl ∧
  C.declarativeProceduralBalance ∧ C.chunkingMechanism

theorem cognitive_architecture_closed_from_evidence (C : CognitiveArchitecturePackage)
    (E : CognitiveArchitectureEvidence C) : CognitiveArchitectureClosed C := by
  exact And.intro E.workingMemoryCapacityClosed
    (And.intro E.attentionalControlClosed
      (And.intro E.declarativeProceduralBalanceClosed E.chunkingMechanismClosed))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse