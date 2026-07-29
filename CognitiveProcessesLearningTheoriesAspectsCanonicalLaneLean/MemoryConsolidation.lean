import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure MemoryConsolidationPackage where
  encodingPhase : Prop
  consolidationPhase : Prop
  retrievalPhase : Prop
  forgettingCurve : Prop
  sleepDependence : Prop
  patternCompletion : Prop

structure MemoryConsolidationEvidence (M : MemoryConsolidationPackage) where
  encodingPhaseClosed : M.encodingPhase
  consolidationPhaseClosed : M.consolidationPhase
  retrievalPhaseClosed : M.retrievalPhase
  forgettingCurveClosed : M.forgettingCurve
  sleepDependenceClosed : M.sleepDependence
  patternCompletionClosed : M.patternCompletion

def MemoryConsolidationClosed (M : MemoryConsolidationPackage) : Prop :=
  M.encodingPhase ∧ M.consolidationPhase ∧ M.retrievalPhase ∧ M.forgettingCurve ∧ M.sleepDependence ∧ M.patternCompletion

theorem memory_consolidation_closed_from_evidence (M : MemoryConsolidationPackage) (E : MemoryConsolidationEvidence M) : MemoryConsolidationClosed M := by
  exact And.intro E.encodingPhaseClosed (And.intro E.consolidationPhaseClosed (And.intro E.retrievalPhaseClosed (And.intro E.forgettingCurveClosed (And.intro E.sleepDependenceClosed E.patternCompletionClosed))))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse