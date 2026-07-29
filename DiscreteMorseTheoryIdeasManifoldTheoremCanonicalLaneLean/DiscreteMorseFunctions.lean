import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure DiscreteMorseFunction (M : Type*) [TopologicalSpace M] where
  criticalPoints : Set M
  index : M → ℕ
  gradientLikeFlow : Prop
  discreteGradient : Prop

structure DiscreteMorseEvidence (M : Type*) [TopologicalSpace M] (f : DiscreteMorseFunction M) where
  criticalPointsFinite : Set.Finite f.criticalPoints
  indexWellDefined : ∀ x ∈ f.criticalPoints, f.index x < FiniteDimensional.finrank ℝ (TangentSpace M x)
  gradientLikeFlowClosed : f.gradientLikeFlow
  discreteGradientClosed : f.discreteGradient

def DiscreteMorseClosed (M : Type*) [TopologicalSpace M] (f : DiscreteMorseFunction M) : Prop :=
  Set.Finite f.criticalPoints ∧
  (∀ x ∈ f.criticalPoints, f.index x < FiniteDimensional.finrank ℝ (TangentSpace M x)) ∧
  f.gradientLikeFlow ∧ f.discreteGradient

theorem discrete_morse_closed_from_evidence (M : Type*) [TopologicalSpace M] (f : DiscreteMorseFunction M)
    (e : DiscreteMorseEvidence M f) : DiscreteMorseClosed M f :=
  And.intro e.criticalPointsFinite (And.intro e.indexWellDefined (And.intro e.gradientLikeFlowClosed e.discreteGradientClosed))

end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean
end HautevilleHouse