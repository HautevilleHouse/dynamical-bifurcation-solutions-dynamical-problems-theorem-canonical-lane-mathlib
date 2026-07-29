import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean.EquilibriumFamily

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure LyapunovSchmidtReduction (P : BifurcationParameterSpace) (E : EquilibriumFamily P) where
  fredholmOperator : Prop
  kernelDimension : ℕ
  reductionEquation : Prop
  bifurcationEquationDerived : Prop

structure LyapunovSchmidtEvidence {P : BifurcationParameterSpace} {E : EquilibriumFamily P}
    (L : LyapunovSchmidtReduction P E) where
  fredholmPropertyHolds : L.fredholmOperator
  kernelDimensionCorrect : L.kernelDimension = 1
  reductionEquationDerived : L.reductionEquation
  bifurcationEquationDerived : L.bifurcationEquationDerived

def LyapunovSchmidtClosed {P : BifurcationParameterSpace} {E : EquilibriumFamily P}
    (L : LyapunovSchmidtReduction P E) : Prop :=
  L.fredholmOperator ∧ (L.kernelDimension = 1) ∧ L.reductionEquation ∧ L.bifurcationEquationDerived

theorem lyapunov_schmidt_closed_from_evidence
    {P : BifurcationParameterSpace} {E : EquilibriumFamily P}
    (L : LyapunovSchmidtReduction P E) (Ev : LyapunovSchmidtEvidence L) :
    LyapunovSchmidtClosed L :=
  And.intro Ev.fredholmPropertyHolds (And.intro Ev.kernelDimensionCorrect
    (And.intro Ev.reductionEquationDerived Ev.bifurcationEquationDerived))

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse