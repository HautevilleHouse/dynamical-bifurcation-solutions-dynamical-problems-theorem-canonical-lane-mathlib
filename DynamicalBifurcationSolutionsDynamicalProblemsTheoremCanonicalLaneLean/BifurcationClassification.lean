import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure BifurcationClassificationPackage {D : DynamicalBifurcationPackage} {A : BifurcationAnalysisPackage D} where
  bifurcationDiagram : Type u
  stabilityChange : Prop
  amplitudeEquation : Prop
  bifurcationTypeFinal : String

structure BifurcationClassificationEvidence {D : DynamicalBifurcationPackage} {A : BifurcationAnalysisPackage D} (C : BifurcationClassificationPackage A) where
  bifurcationDiagramConstructed : C.bifurcationDiagram
  stabilityChangeIdentified : C.stabilityChange
  amplitudeEquationDerived : C.amplitudeEquation
  bifurcationTypeFinalIdentified : C.bifurcationTypeFinal = "fold" ∨ C.bifurcationTypeFinal = "hopf" ∨ C.bifurcationTypeFinal = "pitchfork"

def BifurcationClassificationClosed {D : DynamicalBifurcationPackage} {A : BifurcationAnalysisPackage D} (C : BifurcationClassificationPackage A) : Prop :=
  C.bifurcationDiagram ∧ C.stabilityChange ∧ C.amplitudeEquation ∧ (C.bifurcationTypeFinal = "fold" ∨ C.bifurcationTypeFinal = "hopf" ∨ C.bifurcationTypeFinal = "pitchfork")

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse