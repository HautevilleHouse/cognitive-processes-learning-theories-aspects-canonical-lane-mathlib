import AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure KolbExperientialPackage where
  concreteExperience : Prop
  reflectiveObservation : Prop
  abstractConceptualization : Prop
  activeExperimentation : Prop

structure KolbExperientialEvidence (K : KolbExperientialPackage) where
  concreteExperienceClosed : K.concreteExperience
  reflectiveObservationClosed : K.reflectiveObservation
  abstractConceptualizationClosed : K.abstractConceptualization
  activeExperimentationClosed : K.activeExperimentation

def KolbExperientialClosed (K : KolbExperientialPackage) : Prop :=
  K.concreteExperience ∧ K.reflectiveObservation ∧ K.abstractConceptualization ∧ K.activeExperimentation

theorem kolb_experiential_closed_from_evidence (K : KolbExperientialPackage) (E : KolbExperientialEvidence K) :
    KolbExperientialClosed K := by
  exact And.intro E.concreteExperienceClosed
    (And.intro E.reflectiveObservationClosed
      (And.intro E.abstractConceptualizationClosed E.activeExperimentationClosed))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse