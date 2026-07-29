import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure CognitiveLoadPackage where
  intrinsicLoad : Prop
  extraneousLoad : Prop
  germaneLoad : Prop
  totalLoadManaged : Prop

structure CognitiveLoadEvidence (L : CognitiveLoadPackage) where
  intrinsicLoadClosed : L.intrinsicLoad
  extraneousLoadClosed : L.extraneousLoad
  germaneLoadClosed : L.germaneLoad
  totalLoadManagedClosed : L.totalLoadManaged

def CognitiveLoadClosed (L : CognitiveLoadPackage) : Prop :=
  L.intrinsicLoad ∧ L.extraneousLoad ∧ L.germaneLoad ∧ L.totalLoadManaged

theorem cognitive_load_closed_from_evidence (L : CognitiveLoadPackage)
    (E : CognitiveLoadEvidence L) : CognitiveLoadClosed L := by
  exact And.intro E.intrinsicLoadClosed
    (And.intro E.extraneousLoadClosed
      (And.intro E.germaneLoadClosed E.totalLoadManagedClosed))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse