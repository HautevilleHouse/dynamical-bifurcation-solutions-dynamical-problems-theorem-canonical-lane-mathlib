import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean.DynamicalBifurcationObjects

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure BifurcationDiagramPackage where
  bifurcationSetIdentified : Prop
  phasePortraitSketched : Prop
  hysteresisDetected : Prop
  criticalTransitionCharacterized : Prop

structure BifurcationDiagramEvidence (B : BifurcationDiagramPackage) where
  bifurcationSetIdentifiedClosed : B.bifurcationSetIdentified
  phasePortraitSketchedClosed : B.phasePortraitSketched
  hysteresisDetectedClosed : B.hysteresisDetected
  criticalTransitionCharacterizedClosed : B.criticalTransitionCharacterized

def BifurcationDiagramClosed (B : BifurcationDiagramPackage) : Prop :=
  B.bifurcationSetIdentified ∧ B.phasePortraitSketched ∧
  B.hysteresisDetected ∧ B.criticalTransitionCharacterized

theorem bifurcation_diagram_closed_from_evidence (B : BifurcationDiagramPackage)
    (E : BifurcationDiagramEvidence B) : BifurcationDiagramClosed B := by
  exact And.intro E.bifurcationSetIdentifiedClosed
    (And.intro E.phasePortraitSketchedClosed
      (And.intro E.hysteresisDetectedClosed E.criticalTransitionCharacterizedClosed))

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse