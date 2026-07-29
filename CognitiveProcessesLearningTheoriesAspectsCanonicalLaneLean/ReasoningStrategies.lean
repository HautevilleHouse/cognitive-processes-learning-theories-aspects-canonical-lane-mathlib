import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure ReasoningStrategyPackage where
  deductiveReasoning : Prop
  inductiveReasoning : Prop
  abductiveReasoning : Prop
  analogicalReasoning : Prop
  causalReasoning : Prop

structure ReasoningStrategyEvidence (R : ReasoningStrategyPackage) where
  deductiveReasoningClosed : R.deductiveReasoning
  inductiveReasoningClosed : R.inductiveReasoning
  abductiveReasoningClosed : R.abductiveReasoning
  analogicalReasoningClosed : R.analogicalReasoning
  causalReasoningClosed : R.causalReasoning

def ReasoningStrategyClosed (R : ReasoningStrategyPackage) : Prop :=
  R.deductiveReasoning ∧ R.inductiveReasoning ∧ R.abductiveReasoning ∧ R.analogicalReasoning ∧ R.causalReasoning

theorem reasoning_strategy_closed_from_evidence (R : ReasoningStrategyPackage) (E : ReasoningStrategyEvidence R) :
    ReasoningStrategyClosed R := by
  exact And.intro E.deductiveReasoningClosed
    (And.intro E.inductiveReasoningClosed
      (And.intro E.abductiveReasoningClosed
        (And.intro E.analogicalReasoningClosed E.causalReasoningClosed)))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse
