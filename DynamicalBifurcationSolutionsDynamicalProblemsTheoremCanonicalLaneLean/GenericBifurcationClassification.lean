import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean.CenterManifoldReduction

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

inductive BifurcationType where
  | saddleNode
  | hopf
  | pitchfork
  | transcritical

def BifurcationType.normalForm : BifurcationType → String
  | .saddleNode => "ẋ = β ± x²"
  | .hopf => "ż = (β + iω)z ± |z|²z"
  | .pitchfork => "ẋ = βx ∓ x³"
  | .transcritical => "ẋ = βx ∓ x²"

structure GenericBifurcationClassification (P : BifurcationParameterSpace)
    (E : EquilibriumFamily P) (C : CenterManifoldReduction P E) where
  bifurcationPoint : P.parameterType
  bifurcationType : BifurcationType
  nondegeneracyConditions : Prop
  normalFormMatch : Prop

structure GenericBifurcationEvidence {P : BifurcationParameterSpace}
    {E : EquilibriumFamily P} {C : CenterManifoldReduction P E}
    (G : GenericBifurcationClassification P E C) where
  nondegeneracyVerified : G.nondegeneracyConditions
  normalFormVerified : G.normalFormMatch

def GenericBifurcationClosed {P : BifurcationParameterSpace}
    {E : EquilibriumFamily P} {C : CenterManifoldReduction P E}
    (G : GenericBifurcationClassification P E C) : Prop :=
  G.nondegeneracyConditions ∧ G.normalFormMatch

theorem generic_bifurcation_closed_from_evidence
    {P : BifurcationParameterSpace} {E : EquilibriumFamily P}
    {C : CenterManifoldReduction P E} (G : GenericBifurcationClassification P E C)
    (Ev : GenericBifurcationEvidence G) : GenericBifurcationClosed G :=
  And.intro Ev.nondegeneracyVerified Ev.normalFormVerified

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse