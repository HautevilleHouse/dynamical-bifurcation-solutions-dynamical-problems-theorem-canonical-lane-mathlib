import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure BifurcationParameterSpace where
  parameterType : Type u
  topology : TopologicalSpace parameterType
  connected : Prop
  containsCriticalValue : Prop
  parameterSpaceEvidence : containsCriticalValue

def BifurcationParameterSpaceClosed (P : BifurcationParameterSpace) : Prop :=
  P.connected ∧ P.containsCriticalValue

theorem bifurcation_parameter_space_closed (P : BifurcationParameterSpace) (E : P.connected) (F : P.containsCriticalValue) :
    BifurcationParameterSpaceClosed P := by
  exact And.intro E F

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse