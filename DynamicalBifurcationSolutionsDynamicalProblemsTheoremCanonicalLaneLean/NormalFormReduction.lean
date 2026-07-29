import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure NormalFormReductionPackage where
  centerManifold : Type u
  reducedSystem : Type v
  normalForm : Prop
  coordinateChange : Prop
  truncationOrder : Prop
  hypernormalization : Prop

structure NormalFormReductionEvidence (N : NormalFormReductionPackage) where
  centerManifoldClosed : N.centerManifold
  reducedSystemClosed : N.reducedSystem
  normalFormClosed : N.normalForm
  coordinateChangeClosed : N.coordinateChange
  truncationOrderClosed : N.truncationOrder
  hypernormalizationClosed : N.hypernormalization

def NormalFormReductionClosed (N : NormalFormReductionPackage) : Prop :=
  N.centerManifold ∧ N.reducedSystem ∧ N.normalForm ∧ N.coordinateChange ∧ N.truncationOrder ∧ N.hypernormalization

theorem normal_form_reduction_closed_from_evidence (N : NormalFormReductionPackage) (E : NormalFormReductionEvidence N) : NormalFormReductionClosed N := by
  exact And.intro E.centerManifoldClosed (And.intro E.reducedSystemClosed (And.intro E.normalFormClosed (And.intro E.coordinateChangeClosed (And.intro E.truncationOrderClosed E.hypernormalizationClosed))))

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse