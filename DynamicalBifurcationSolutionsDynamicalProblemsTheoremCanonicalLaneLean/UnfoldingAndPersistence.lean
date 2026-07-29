import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean.GenericBifurcationClassification

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure UnfoldingAndPersistence (P : BifurcationParameterSpace)
    (E : EquilibriumFamily P) (C : CenterManifoldReduction P E)
    (G : GenericBifurcationClassification P E C) where
  versalUnfoldingExists : Prop
  persistentUnderPerturbation : Prop
  bifurcationDiagramDescribed : Prop

structure UnfoldingEvidence {P : BifurcationParameterSpace}
    {E : EquilibriumFamily P} {C : CenterManifoldReduction P E}
    {G : GenericBifurcationClassification P E C}
    (U : UnfoldingAndPersistence P E C G) where
  versalUnfoldingConstructed : U.versalUnfoldingExists
  persistentUnderPerturbationVerified : U.persistentUnderPerturbation
  bifurcationDiagramDescribed : U.bifurcationDiagramDescribed

def UnfoldingClosed {P : BifurcationParameterSpace}
    {E : EquilibriumFamily P} {C : CenterManifoldReduction P E}
    {G : GenericBifurcationClassification P E C}
    (U : UnfoldingAndPersistence P E C G) : Prop :=
  U.versalUnfoldingExists ∧ U.persistentUnderPerturbation ∧ U.bifurcationDiagramDescribed

theorem unfolding_closed_from_evidence
    {P : BifurcationParameterSpace} {E : EquilibriumFamily P}
    {C : CenterManifoldReduction P E} {G : GenericBifurcationClassification P E C}
    (U : UnfoldingAndPersistence P E C G) (Ev : UnfoldingEvidence U) :
    UnfoldingClosed U :=
  And.intro Ev.versalUnfoldingConstructed (And.intro Ev.persistentUnderPerturbationVerified Ev.bifurcationDiagramDescribed)

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse