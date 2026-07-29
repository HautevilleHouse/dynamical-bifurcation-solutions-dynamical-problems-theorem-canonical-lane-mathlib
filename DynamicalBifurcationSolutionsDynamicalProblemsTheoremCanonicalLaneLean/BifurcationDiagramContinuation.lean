import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure BifurcationDiagramContinuation where
  branchFamily : Type u
  continuationMethod : String
  solutionPath : Prop
  turningPoints : Prop
  pathEvidence : solutionPath
  turningPointEvidence : turningPoints

def BifurcationDiagramContinuationClosed (B : BifurcationDiagramContinuation) : Prop :=
  B.solutionPath ∧ B.turningPoints

theorem bifurcation_diagram_continuation_closed (B : BifurcationDiagramContinuation) :
    BifurcationDiagramContinuationClosed B := by
  exact And.intro B.pathEvidence B.turningPointEvidence

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse