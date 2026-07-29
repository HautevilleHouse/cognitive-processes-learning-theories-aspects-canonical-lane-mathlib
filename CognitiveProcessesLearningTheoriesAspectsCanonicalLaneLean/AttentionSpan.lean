import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure AttentionSpanPackage where
  selectiveAttention : Prop
  dividedAttention : Prop
  sustainedAttention : Prop
  executiveControl : Prop
  distractionSusceptibility : Prop
  resourceCapacity : Prop

structure AttentionSpanEvidence (A : AttentionSpanPackage) where
  selectiveAttentionClosed : A.selectiveAttention
  dividedAttentionClosed : A.dividedAttention
  sustainedAttentionClosed : A.sustainedAttention
  executiveControlClosed : A.executiveControl
  distractionSusceptibilityClosed : A.distractionSusceptibility
  resourceCapacityClosed : A.resourceCapacity

def AttentionSpanClosed (A : AttentionSpanPackage) : Prop :=
  A.selectiveAttention ∧ A.dividedAttention ∧ A.sustainedAttention ∧ A.executiveControl ∧ A.distractionSusceptibility ∧ A.resourceCapacity

theorem attention_span_closed_from_evidence (A : AttentionSpanPackage) (E : AttentionSpanEvidence A) : AttentionSpanClosed A := by
  exact And.intro E.selectiveAttentionClosed (And.intro E.dividedAttentionClosed (And.intro E.sustainedAttentionClosed (And.intro E.executiveControlClosed (And.intro E.distractionSusceptibilityClosed E.resourceCapacityClosed))))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse