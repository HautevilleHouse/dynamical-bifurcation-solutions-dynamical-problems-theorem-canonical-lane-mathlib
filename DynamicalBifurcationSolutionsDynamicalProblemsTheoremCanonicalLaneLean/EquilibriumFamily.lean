import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean.BifurcationParameterSpace

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure EquilibriumFamily (P : BifurcationParameterSpace) where
  stateSpace : Type u
  stateTopology : TopologicalSpace stateSpace
  equilibriumCurve : P.parameterType → stateSpace
  smoothInParameter : Prop

structure EquilibriumFamilyEvidence {P : BifurcationParameterSpace} (E : EquilibriumFamily P) where
  equilibriumCurveSmooth : E.smoothInParameter

def EquilibriumFamilyClosed {P : BifurcationParameterSpace} (E : EquilibriumFamily P) : Prop :=
  E.smoothInParameter

theorem equilibrium_family_closed_from_evidence
    {P : BifurcationParameterSpace} (E : EquilibriumFamily P)
    (Ev : EquilibriumFamilyEvidence E) : EquilibriumFamilyClosed E :=
  Ev.equilibriumCurveSmooth

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse