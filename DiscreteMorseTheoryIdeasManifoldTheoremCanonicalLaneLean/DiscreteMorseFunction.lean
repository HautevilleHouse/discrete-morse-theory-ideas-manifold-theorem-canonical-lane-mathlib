import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure DiscreteMorseFunction (M : Type u) [TopologicalSpace M] where
  criticalPoints : Set M
  index : M → ℕ
  discreteGradient : M → M → Prop
  gradientFlow : M → M → Prop
  criticalPointCondition : ∀ x : M, (discreteGradient x x) → x ∈ criticalPoints
  indexConsistent : ∀ x y : M, gradientFlow x y → index x = index y

structure DiscreteMorseFunctionEvidence (M : Type u) [TopologicalSpace M] (f : DiscreteMorseFunction M) where
  criticalPointConditionClosed : f.criticalPointCondition
  indexConsistentClosed : f.indexConsistent

def DiscreteMorseFunctionClosed (M : Type u) [TopologicalSpace M] (f : DiscreteMorseFunction M) : Prop :=
  f.criticalPointCondition ∧ f.indexConsistent

theorem discrete_morse_function_closed_from_evidence (M : Type u) [TopologicalSpace M]
    (f : DiscreteMorseFunction M) (E : DiscreteMorseFunctionEvidence M f) : DiscreteMorseFunctionClosed M f := by
  exact And.intro E.criticalPointConditionClosed E.indexConsistentClosed

end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean
end HautevilleHouse
