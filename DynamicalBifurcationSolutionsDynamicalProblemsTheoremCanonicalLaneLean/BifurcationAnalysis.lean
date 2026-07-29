import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure BifurcationAnalysisPackage (D : DynamicalBifurcationPackage) where
  linearizationAtEquilibrium : Prop
  eigenvalueCrossing : Prop
  centerManifoldReduction : Prop
  normalFormComputed : Prop

structure BifurcationAnalysisEvidence {D : DynamicalBifurcationPackage} (A : BifurcationAnalysisPackage D) where
  linearizationAtEquilibriumClosed : A.linearizationAtEquilibrium
  eigenvalueCrossingClosed : A.eigenvalueCrossing
  centerManifoldReductionClosed : A.centerManifoldReduction
  normalFormComputedClosed : A.normalFormComputed

def BifurcationAnalysisClosed {D : DynamicalBifurcationPackage} (A : BifurcationAnalysisPackage D) : Prop :=
  A.linearizationAtEquilibrium ∧ A.eigenvalueCrossing ∧ A.centerManifoldReduction ∧ A.normalFormComputed

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse