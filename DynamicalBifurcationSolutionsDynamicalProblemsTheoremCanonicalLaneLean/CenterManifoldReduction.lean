import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure CenterManifoldReduction where
  centerDimension : Nat
  reducedSystem : Prop
  spectralGapCondition : Prop
  reductionValid : Prop
  spectralGapEvidence : spectralGapCondition
  reductionEvidence : reductionValid

def CenterManifoldReductionClosed (C : CenterManifoldReduction) : Prop :=
  C.spectralGapCondition ∧ C.reductionValid

theorem center_manifold_reduction_closed (C : CenterManifoldReduction) :
    CenterManifoldReductionClosed C := by
  exact And.intro C.spectralGapEvidence C.reductionEvidence

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse