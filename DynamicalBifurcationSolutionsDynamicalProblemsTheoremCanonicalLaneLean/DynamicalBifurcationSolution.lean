import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure DynamicalBifurcationPackage where
  parameterSpace : Type u
  stateSpace : Type v
  vectorField : parameterSpace → stateSpace → stateSpace
  equilibriumPoint : stateSpace
  bifurcationParameter : parameterSpace
  linearization : parameterSpace → Matrix (Fin n) (Fin n) ℝ
  crossingCondition : Prop
  nondegeneracyCondition : Prop
  bifurcationType : String

data BifurcationType
  | saddleNode
  | hopf
  | pitchfork
  | transcritical
  deriving Repr

structure DynamicalBifurcationEvidence (D : DynamicalBifurcationPackage) where
  crossingConditionClosed : D.crossingCondition
  nondegeneracyConditionClosed : D.nondegeneracyCondition

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse
