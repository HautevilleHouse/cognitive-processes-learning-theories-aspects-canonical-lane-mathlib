import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure LearningTheoryPackage where
  behaviorism : Prop
  cognitivism : Prop
  constructivism : Prop
  connectivism : Prop
  experientialLearning : Prop

structure LearningTheoryEvidence (L : LearningTheoryPackage) where
  behaviorismClosed : L.behaviorism
  cognitivismClosed : L.cognitivism
  constructivismClosed : L.constructivism
  connectivismClosed : L.connectivism
  experientialLearningClosed : L.experientialLearning

def LearningTheoryClosed (L : LearningTheoryPackage) : Prop :=
  L.behaviorism ∧ L.cognitivism ∧ L.constructivism ∧ L.connectivism ∧ L.experientialLearning

theorem learning_theory_closed_from_evidence (L : LearningTheoryPackage) (E : LearningTheoryEvidence L) :
    LearningTheoryClosed L := by
  exact And.intro E.behaviorismClosed
    (And.intro E.cognitivismClosed
      (And.intro E.constructivismClosed
        (And.intro E.connectivismClosed E.experientialLearningClosed)))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse
