import canonicalLaneMathlib.FinalTheorem

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean

def ConstrainedLearningTheoriesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_learning_theories_endgame (A : AdmissibleClass) :
    ConstrainedLearningTheoriesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CognitiveProcessesLearningTheoriesAspectsCanonicalLaneLean
end HautevilleHouse