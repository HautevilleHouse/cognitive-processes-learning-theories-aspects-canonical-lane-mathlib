import AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure CognitiveLoadPackage where
  intrinsicLoad : Prop
  extraneousLoad : Prop
  germaneLoad : Prop
  loadManagement : Prop

structure CognitiveLoadEvidence (C : CognitiveLoadPackage) where
  intrinsicLoadClosed : C.intrinsicLoad
  extraneousLoadClosed : C.extraneousLoad
  germaneLoadClosed : C.germaneLoad
  loadManagementClosed : C.loadManagement

def CognitiveLoadClosed (C : CognitiveLoadPackage) : Prop :=
  C.intrinsicLoad ∧ C.extraneousLoad ∧ C.germaneLoad ∧ C.loadManagement

theorem cognitive_load_closed_from_evidence (C : CognitiveLoadPackage) (E : CognitiveLoadEvidence C) :
    CognitiveLoadClosed C := by
  exact And.intro E.intrinsicLoadClosed
    (And.intro E.extraneousLoadClosed
      (And.intro E.germaneLoadClosed E.loadManagementClosed))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse