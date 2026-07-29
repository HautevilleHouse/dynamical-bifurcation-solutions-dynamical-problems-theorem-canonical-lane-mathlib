import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure StabilityBifurcationLink where
  stabilityChange : Prop
  bifurcationPoint : Prop
  exchangeOfStability : Prop
  stabilityEvidence : stabilityChange
  bifurcationEvidence : bifurcationPoint
  exchangeEvidence : exchangeOfStability

def StabilityBifurcationLinkClosed (S : StabilityBifurcationLink) : Prop :=
  S.stabilityChange ∧ S.bifurcationPoint ∧ S.exchangeOfStability

theorem stability_bifurcation_link_closed (S : StabilityBifurcationLink) :
    StabilityBifurcationLinkClosed S := by
  exact And.intro S.stabilityEvidence (And.intro S.bifurcationEvidence S.exchangeEvidence)

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse