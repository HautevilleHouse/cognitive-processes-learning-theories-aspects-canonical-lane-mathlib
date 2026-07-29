import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure DevelopmentalStagePackage where
  sensorimotor : Prop
  preoperational : Prop
  concreteOperational : Prop
  formalOperational : Prop
  postFormalThought : Prop

structure DevelopmentalStageEvidence (D : DevelopmentalStagePackage) where
  sensorimotorClosed : D.sensorimotor
  preoperationalClosed : D.preoperational
  concreteOperationalClosed : D.concreteOperational
  formalOperationalClosed : D.formalOperational
  postFormalThoughtClosed : D.postFormalThought

def DevelopmentalStageClosed (D : DevelopmentalStagePackage) : Prop :=
  D.sensorimotor ∧ D.preoperational ∧ D.concreteOperational ∧ D.formalOperational ∧ D.postFormalThought

theorem developmental_stage_closed_from_evidence (D : DevelopmentalStagePackage) (E : DevelopmentalStageEvidence D) :
    DevelopmentalStageClosed D := by
  exact And.intro E.sensorimotorClosed
    (And.intro E.preoperationalClosed
      (And.intro E.concreteOperationalClosed
        (And.intro E.formalOperationalClosed E.postFormalThoughtClosed)))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse
