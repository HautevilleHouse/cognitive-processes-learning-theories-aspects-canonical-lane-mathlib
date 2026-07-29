import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure CognitiveLoadTheoryPackage where
  intrinsicLoad : Prop
  extraneousLoad : Prop
  germaneLoad : Prop
  elementInteractivity : Prop
  schemaAcquisition : Prop
  instructionalDesign : Prop

structure CognitiveLoadTheoryEvidence (C : CognitiveLoadTheoryPackage) where
  intrinsicLoadClosed : C.intrinsicLoad
  extraneousLoadClosed : C.extraneousLoad
  germaneLoadClosed : C.germaneLoad
  elementInteractivityClosed : C.elementInteractivity
  schemaAcquisitionClosed : C.schemaAcquisition
  instructionalDesignClosed : C.instructionalDesign

def CognitiveLoadTheoryClosed (C : CognitiveLoadTheoryPackage) : Prop :=
  C.intrinsicLoad ∧ C.extraneousLoad ∧ C.germaneLoad ∧ C.elementInteractivity ∧ C.schemaAcquisition ∧ C.instructionalDesign

theorem cognitive_load_theory_closed_from_evidence (C : CognitiveLoadTheoryPackage) (E : CognitiveLoadTheoryEvidence C) : CognitiveLoadTheoryClosed C := by
  exact And.intro E.intrinsicLoadClosed (And.intro E.extraneousLoadClosed (And.intro E.germaneLoadClosed (And.intro E.elementInteractivityClosed (And.intro E.schemaAcquisitionClosed E.instructionalDesignClosed))))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse