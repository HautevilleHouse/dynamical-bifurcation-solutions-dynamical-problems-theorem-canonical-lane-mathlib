import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean.DynamicalBifurcationObjects

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure LinearStabilityPackage where
  linearizationDefined : Prop
  eigenvalueComputation : Prop
  stabilityCriterion : Prop
  bifurcationPointDetected : Prop

structure LinearStabilityEvidence (L : LinearStabilityPackage) where
  linearizationDefinedClosed : L.linearizationDefined
  eigenvalueComputationClosed : L.eigenvalueComputation
  stabilityCriterionClosed : L.stabilityCriterion
  bifurcationPointDetectedClosed : L.bifurcationPointDetected

def LinearStabilityClosed (L : LinearStabilityPackage) : Prop :=
  L.linearizationDefined ∧ L.eigenvalueComputation ∧
  L.stabilityCriterion ∧ L.bifurcationPointDetected

theorem linear_stability_closed_from_evidence (L : LinearStabilityPackage)
    (E : LinearStabilityEvidence L) : LinearStabilityClosed L := by
  exact And.intro E.linearizationDefinedClosed
    (And.intro E.eigenvalueComputationClosed
      (And.intro E.stabilityCriterionClosed E.bifurcationPointDetectedClosed))

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse