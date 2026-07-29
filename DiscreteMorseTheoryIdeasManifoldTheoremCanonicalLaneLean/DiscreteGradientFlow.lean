import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure DiscreteGradientFlow (M : Type*) [TopologicalSpace M] [Manifold M] where
  vertices : Set M
  edges : M → M → Prop
  gradientCondition : Prop
  flowLines : Prop
  noClosedLoops : Prop

structure DiscreteGradientFlowEvidence (M : Type*) [TopologicalSpace M] [Manifold M] (g : DiscreteGradientFlow M) where
  verticesNonempty : g.vertices.Nonempty
  edgesSymmetric : Symmetric g.edges
  gradientConditionClosed : g.gradientCondition
  flowLinesClosed : g.flowLines
  noClosedLoopsClosed : g.noClosedLoops

def DiscreteGradientFlowClosed (M : Type*) [TopologicalSpace M] [Manifold M] (g : DiscreteGradientFlow M) : Prop :=
  g.vertices.Nonempty ∧ Symmetric g.edges ∧ g.gradientCondition ∧ g.flowLines ∧ g.noClosedLoops

theorem discrete_gradient_flow_closed_from_evidence (M : Type*) [TopologicalSpace M] [Manifold M]
    (g : DiscreteGradientFlow M) (e : DiscreteGradientFlowEvidence M g) : DiscreteGradientFlowClosed M g :=
  And.intro e.verticesNonempty (And.intro e.edgesSymmetric (And.intro e.gradientConditionClosed (And.intro e.flowLinesClosed e.noClosedLoopsClosed)))

end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean
end HautevilleHouse