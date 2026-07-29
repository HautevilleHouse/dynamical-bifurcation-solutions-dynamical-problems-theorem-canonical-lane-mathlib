import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure PhasePortraitBifurcationPackage where
  vectorField : Type u
  parameterSpace : Type v
  equilibriumPoints : Prop
  bifurcationDiagram : Prop
  stabilityChange : Prop
  bifurcationValue : Prop
  genericCondition : Prop

structure PhasePortraitBifurcationEvidence (P : PhasePortraitBifurcationPackage) where
  equilibriumPointsClosed : P.equilibriumPoints
  bifurcationDiagramClosed : P.bifurcationDiagram
  stabilityChangeClosed : P.stabilityChange
  bifurcationValueClosed : P.bifurcationValue
  genericConditionClosed : P.genericCondition

def PhasePortraitBifurcationClosed (P : PhasePortraitBifurcationPackage) : Prop :=
  P.equilibriumPoints ∧ P.bifurcationDiagram ∧ P.stabilityChange ∧ P.bifurcationValue ∧ P.genericCondition

theorem phase_portrait_bifurcation_closed_from_evidence (P : PhasePortraitBifurcationPackage) (E : PhasePortraitBifurcationEvidence P) : PhasePortraitBifurcationClosed P := by
  exact And.intro E.equilibriumPointsClosed (And.intro E.bifurcationDiagramClosed (And.intro E.stabilityChangeClosed (And.intro E.bifurcationValueClosed E.genericConditionClosed)))

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse