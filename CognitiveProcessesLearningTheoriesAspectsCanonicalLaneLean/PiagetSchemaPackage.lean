import AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure PiagetSchemaPackage where
  assimilation : Prop
  accommodation : Prop
  equilibrium : Prop
  stageTransition : Prop

structure PiagetSchemaEvidence (P : PiagetSchemaPackage) where
  assimilationClosed : P.assimilation
  accommodationClosed : P.accommodation
  equilibriumClosed : P.equilibrium
  stageTransitionClosed : P.stageTransition

def PiagetSchemaClosed (P : PiagetSchemaPackage) : Prop :=
  P.assimilation ∧ P.accommodation ∧ P.equilibrium ∧ P.stageTransition

theorem piaget_schema_closed_from_evidence (P : PiagetSchemaPackage) (E : PiagetSchemaEvidence P) :
    PiagetSchemaClosed P := by
  exact And.intro E.assimilationClosed
    (And.intro E.accommodationClosed
      (And.intro E.equilibriumClosed E.stageTransitionClosed))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse