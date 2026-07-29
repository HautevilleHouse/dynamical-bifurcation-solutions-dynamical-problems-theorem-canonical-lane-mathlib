import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure DynamicalBifurcationPackage where
  stateSpace : Type u
  parameterSpace : Type v
  vectorField : stateSpace × parameterSpace → stateSpace
  equilibriumSet : Set (stateSpace × parameterSpace)
  bifurcationPoint : parameterSpace
  bifurcationType : String

structure DynamicalBifurcationEvidence (D : DynamicalBifurcationPackage) where
  vectorFieldSmooth : Prop
  equilibriumSetClosed : D.equilibriumSet
  bifurcationPointParameter : D.bifurcationPoint ∈ D.parameterSpace
  bifurcationTypeIdentified : D.bifurcationType = "fold" ∨ D.bifurcationType = "hopf" ∨ D.bifurcationType = "pitchfork"

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse