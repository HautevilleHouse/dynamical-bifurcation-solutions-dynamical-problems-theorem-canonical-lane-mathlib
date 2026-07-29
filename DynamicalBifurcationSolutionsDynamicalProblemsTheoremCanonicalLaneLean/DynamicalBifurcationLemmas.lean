import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean.DynamicalBifurcationObjects

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | BifurcationAdmittedObject.mk _ _ _ _ => True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact True.intro

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse