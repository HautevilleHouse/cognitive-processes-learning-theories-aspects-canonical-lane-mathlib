import canonicalLaneMathlib.AdmissibleClass
import CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean.CognitiveArchitecture
import CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean.LearningTaxonomy
import CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean.MetacognitionRegulation

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure IntegrationModelPackage where
  architecture : CognitiveArchitecturePackage
  taxonomy : LearningTaxonomyPackage
  metacognition : MetacognitionRegulationPackage

structure IntegrationModelEvidence (I : IntegrationModelPackage) where
  architectureClosed : CognitiveArchitectureClosed I.architecture
  taxonomyClosed : LearningTaxonomyClosed I.taxonomy
  metacognitionClosed : MetacognitionRegulationClosed I.metacognition

def IntegrationModelClosed (I : IntegrationModelPackage) : Prop :=
  CognitiveArchitectureClosed I.architecture ∧
  LearningTaxonomyClosed I.taxonomy ∧
  MetacognitionRegulationClosed I.metacognition

theorem integration_model_closed_from_evidence (I : IntegrationModelPackage)
    (E : IntegrationModelEvidence I) : IntegrationModelClosed I := by
  exact And.intro E.architectureClosed
    (And.intro E.taxonomyClosed E.metacognitionClosed)

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse