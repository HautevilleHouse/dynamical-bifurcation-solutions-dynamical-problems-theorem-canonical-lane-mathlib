import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure BifurcationSolverPackage {D : DynamicalBifurcationPackage} {A : BifurcationAnalysisPackage D} {C : BifurcationClassificationPackage A} {Ctrl : BifurcationControlPackage C} where
  continuationMethod : Prop
  branchSwitchingAlgorithm : Prop
  solutionCurves : Type u
  stabilityMargins : Prop

structure BifurcationSolverEvidence {D : DynamicalBifurcationPackage} {A : BifurcationAnalysisPackage D} {C : BifurcationClassificationPackage A} {Ctrl : BifurcationControlPackage C} (S : BifurcationSolverPackage Ctrl) where
  continuationMethodImplemented : S.continuationMethod
  branchSwitchingAlgorithmImplemented : S.branchSwitchingAlgorithm
  solutionCurvesComputed : S.solutionCurves
  stabilityMarginsComputed : S.stabilityMargins

def BifurcationSolverClosed {D : DynamicalBifurcationPackage} {A : BifurcationAnalysisPackage D} {C : BifurcationClassificationPackage A} {Ctrl : BifurcationControlPackage C} (S : BifurcationSolverPackage Ctrl) : Prop :=
  S.continuationMethod ∧ S.branchSwitchingAlgorithm ∧ S.solutionCurves ∧ S.stabilityMargins

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse