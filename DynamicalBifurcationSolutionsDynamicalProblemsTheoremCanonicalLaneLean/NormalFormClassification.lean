import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean.DynamicalBifurcationSolution

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure NormalFormClassificationPackage {D : DynamicalBifurcationPackage} where
  normalFormPolynomial : Polynomial (Fin d) ℝ
  unfoldingParameters : ℝ → ℝ
  classificationTheorem : Prop
  versalDeformation : Prop
  topologicalEquivalence : Prop

structure NormalFormClassificationEvidence {D : DynamicalBifurcationPackage}
    (N : NormalFormClassificationPackage D) where
  classificationTheoremClosed : N.classificationTheorem
  versalDeformationClosed : N.versalDeformation
  topologicalEquivalenceClosed : N.topologicalEquivalence

def NormalFormClassificationClosed {D : DynamicalBifurcationPackage}
    (N : NormalFormClassificationPackage D) : Prop :=
  N.classificationTheorem ∧ N.versalDeformation ∧ N.topologicalEquivalence

theorem normal_form_classification_closed_from_evidence
    {D : DynamicalBifurcationPackage} (N : NormalFormClassificationPackage D)
    (E : NormalFormClassificationEvidence N) :
    NormalFormClassificationClosed N := by
  exact And.intro E.classificationTheoremClosed
    (And.intro E.versalDeformationClosed E.topologicalEquivalenceClosed)

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse
