import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure CentreManifoldReductionPackage {D : DynamicalBifurcationPackage} where
  centreEigenspace : Submodule ℝ (Fin n → ℝ)
  spectralSplitting : Prop
  centreManifoldDimension : ℕ
  reductionNormalForm : D.stateSpace → D.stateSpace
  invarianceCondition : Prop
  reductionError : Prop

structure CentreManifoldReductionEvidence {D : DynamicalBifurcationPackage}
    (C : CentreManifoldReductionPackage D) where
  spectralSplittingClosed : C.spectralSplitting
  invarianceConditionClosed : C.invarianceCondition
  reductionErrorClosed : C.reductionError

def CentreManifoldReductionClosed {D : DynamicalBifurcationPackage}
    (C : CentreManifoldReductionPackage D) : Prop :=
  C.spectralSplitting ∧ C.invarianceCondition ∧ C.reductionError

theorem centre_manifold_reduction_closed_from_evidence
    {D : DynamicalBifurcationPackage} (C : CentreManifoldReductionPackage D)
    (E : CentreManifoldReductionEvidence C) :
    CentreManifoldReductionClosed C := by
  exact And.intro E.spectralSplittingClosed
    (And.intro E.invarianceConditionClosed E.reductionErrorClosed)

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse
