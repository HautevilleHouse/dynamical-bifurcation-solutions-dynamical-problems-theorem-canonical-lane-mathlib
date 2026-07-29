import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure BifurcationControlPackage {D : DynamicalBifurcationPackage} {A : BifurcationAnalysisPackage D} {C : BifurcationClassificationPackage A} where
  controlInput : Type u
  feedbackLaw : Type v
  closedLoopStability : Prop
  bifurcationSuppression : Prop

structure BifurcationControlEvidence {D : DynamicalBifurcationPackage} {A : BifurcationAnalysisPackage D} {C : BifurcationClassificationPackage A} (Ctrl : BifurcationControlPackage C) where
  controlInputAvailable : Ctrl.controlInput
  feedbackLawConstructed : Ctrl.feedbackLaw
  closedLoopStabilityHolds : Ctrl.closedLoopStability
  bifurcationSuppressionAchieved : Ctrl.bifurcationSuppression

def BifurcationControlClosed {D : DynamicalBifurcationPackage} {A : BifurcationAnalysisPackage D} {C : BifurcationClassificationPackage A} (Ctrl : BifurcationControlPackage C) : Prop :=
  Ctrl.controlInput ∧ Ctrl.feedbackLaw ∧ Ctrl.closedLoopStability ∧ Ctrl.bifurcationSuppression

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse