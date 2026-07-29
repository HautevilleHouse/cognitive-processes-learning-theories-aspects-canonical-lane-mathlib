import AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

structure VygotskyZPDPackage where
  actualDevelopment : Prop
  potentialDevelopment : Prop
  scaffolding : Prop
  zoneProximal : Prop

structure VygotskyZPDEvidence (V : VygotskyZPDPackage) where
  actualDevelopmentClosed : V.actualDevelopment
  potentialDevelopmentClosed : V.potentialDevelopment
  scaffoldingClosed : V.scaffolding
  zoneProximalClosed : V.zoneProximal

def VygotskyZPDClosed (V : VygotskyZPDPackage) : Prop :=
  V.actualDevelopment ∧ V.potentialDevelopment ∧ V.scaffolding ∧ V.zoneProximal

theorem vygotsky_zpd_closed_from_evidence (V : VygotskyZPDPackage) (E : VygotskyZPDEvidence V) :
    VygotskyZPDClosed V := by
  exact And.intro E.actualDevelopmentClosed
    (And.intro E.potentialDevelopmentClosed
      (And.intro E.scaffoldingClosed E.zoneProximalClosed))

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse