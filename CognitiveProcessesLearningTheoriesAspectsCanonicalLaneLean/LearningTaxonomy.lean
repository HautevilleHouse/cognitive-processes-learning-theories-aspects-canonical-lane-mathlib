import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure LearningTaxonomyPackage where
  cognitiveLevels : Prop
  knowledgeDimensions : Prop
  learningObjectives : Prop
  assessmentAlignment : Prop

structure LearningTaxonomyEvidence (L : LearningTaxonomyPackage) where
  cognitiveLevelsClosed : L.cognitiveLevels
  knowledgeDimensionsClosed : L.knowledgeDimensions
  learningObjectivesClosed : L.learningObjectives
  assessmentAlignmentClosed : L.assessmentAlignment

def LearningTaxonomyClosed (L : LearningTaxonomyPackage) : Prop :=
  L.cognitiveLevels ∧ L.knowledgeDimensions ∧
  L.learningObjectives ∧ L.assessmentAlignment

theorem learning_taxonomy_closed_from_evidence (L : LearningTaxonomyPackage)
    (E : LearningTaxonomyEvidence L) : LearningTaxonomyClosed L := by
  exact And.intro E.cognitiveLevelsClosed
    (And.intro E.knowledgeDimensionsClosed
      (And.intro E.learningObjectivesClosed E.assessmentAlignmentClosed))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse