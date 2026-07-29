import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure MemoryModelPackage where
  sensoryMemory : Prop
  shortTermMemory : Prop
  longTermMemory : Prop
  workingMemory : Prop
  encodingProcess : Prop

structure MemoryModelEvidence (M : MemoryModelPackage) where
  sensoryMemoryClosed : M.sensoryMemory
  shortTermMemoryClosed : M.shortTermMemory
  longTermMemoryClosed : M.longTermMemory
  workingMemoryClosed : M.workingMemory
  encodingProcessClosed : M.encodingProcess

def MemoryModelClosed (M : MemoryModelPackage) : Prop :=
  M.sensoryMemory ∧ M.shortTermMemory ∧ M.longTermMemory ∧ M.workingMemory ∧ M.encodingProcess

theorem memory_model_closed_from_evidence (M : MemoryModelPackage) (E : MemoryModelEvidence M) :
    MemoryModelClosed M := by
  exact And.intro E.sensoryMemoryClosed
    (And.intro E.shortTermMemoryClosed
      (And.intro E.longTermMemoryClosed
        (And.intro E.workingMemoryClosed E.encodingProcessClosed)))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse
