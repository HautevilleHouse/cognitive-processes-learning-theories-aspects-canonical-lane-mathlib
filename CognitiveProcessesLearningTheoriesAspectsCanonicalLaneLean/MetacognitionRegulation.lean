import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure MetacognitionRegulationPackage where
  selfMonitoring : Prop
  selfEvaluation : Prop
  strategyAdaptation : Prop
  resourceAllocation : Prop

structure MetacognitionRegulationEvidence (M : MetacognitionRegulationPackage) where
  selfMonitoringClosed : M.selfMonitoring
  selfEvaluationClosed : M.selfEvaluation
  strategyAdaptationClosed : M.strategyAdaptation
  resourceAllocationClosed : M.resourceAllocation

def MetacognitionRegulationClosed (M : MetacognitionRegulationPackage) : Prop :=
  M.selfMonitoring ∧ M.selfEvaluation ∧
  M.strategyAdaptation ∧ M.resourceAllocation

theorem metacognition_regulation_closed_from_evidence (M : MetacognitionRegulationPackage)
    (E : MetacognitionRegulationEvidence M) : MetacognitionRegulationClosed M := by
  exact And.intro E.selfMonitoringClosed
    (And.intro E.selfEvaluationClosed
      (And.intro E.strategyAdaptationClosed E.resourceAllocationClosed))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse