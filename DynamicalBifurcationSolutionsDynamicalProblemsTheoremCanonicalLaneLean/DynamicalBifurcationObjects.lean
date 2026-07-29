import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure BifurcationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PhysicalParameter where
  param : Type
  topology : TopologicalSpace param
  dimension : Nat
  parameterValues : Set param

structure BifurcationProblem where
  space : BifurcationSpace
  paramSpace : PhysicalParameter
  vectorField : BifurcationSpace → BifurcationSpace
  paramDependence : paramSpace.param → BifurcationSpace → BifurcationSpace
  criticalSet : Set BifurcationSpace
  bifurcationCondition : Prop

structure BifurcationAdmittedObject where
  problem : BifurcationProblem
  solutionFamily : BifurcationSpace → Prop
  stabilityResult : Prop
  conclusion : BifurcationAdmittedObject → Prop

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse