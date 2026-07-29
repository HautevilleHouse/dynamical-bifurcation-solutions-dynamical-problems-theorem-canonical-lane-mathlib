import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean.DynamicalBifurcationSolution

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure BifurcationSolutionExistencePackage {D : DynamicalBifurcationPackage} where
  localBranchParameterization : ℝ → D.stateSpace
  bifurcationPoint : ℝ
  branchEquation : Prop
  solutionRegularity : Prop
  transversalityCondition : Prop

structure BifurcationSolutionExistenceEvidence {D : DynamicalBifurcationPackage}
    (S : BifurcationSolutionExistencePackage D) where
  branchEquationClosed : S.branchEquation
  solutionRegularityClosed : S.solutionRegularity
  transversalityConditionClosed : S.transversalityCondition

def BifurcationSolutionExistenceClosed {D : DynamicalBifurcationPackage}
    (S : BifurcationSolutionExistencePackage D) : Prop :=
  S.branchEquation ∧ S.solutionRegularity ∧ S.transversalityCondition

theorem bifurcation_solution_existence_closed_from_evidence
    {D : DynamicalBifurcationPackage} (S : BifurcationSolutionExistencePackage D)
    (E : BifurcationSolutionExistenceEvidence S) :
    BifurcationSolutionExistenceClosed S := by
  exact And.intro E.branchEquationClosed
    (And.intro E.solutionRegularityClosed E.transversalityConditionClosed)

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse
