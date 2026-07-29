import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure CenterManifoldPackage where
  underlyingSystem : Type u
  linearizationAtBifurcation : Type v
  invariantManifold : Prop
  tangentSpace : Prop
  reducedDynamics : Prop
  spectralCondition : Prop
  smoothness : Prop

structure CenterManifoldEvidence (C : CenterManifoldPackage) where
  invariantManifoldClosed : C.invariantManifold
  tangentSpaceClosed : C.tangentSpace
  reducedDynamicsClosed : C.reducedDynamics
  spectralConditionClosed : C.spectralCondition
  smoothnessClosed : C.smoothness

def CenterManifoldClosed (C : CenterManifoldPackage) : Prop :=
  C.invariantManifold ∧ C.tangentSpace ∧ C.reducedDynamics ∧ C.spectralCondition ∧ C.smoothness

theorem center_manifold_closed_from_evidence (C : CenterManifoldPackage) (E : CenterManifoldEvidence C) : CenterManifoldClosed C := by
  exact And.intro E.invariantManifoldClosed (And.intro E.tangentSpaceClosed (And.intro E.reducedDynamicsClosed (And.intro E.spectralConditionClosed E.smoothnessClosed)))

end DynamicalBifurcationSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse