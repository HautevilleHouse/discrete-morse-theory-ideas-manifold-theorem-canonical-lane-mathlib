import canonicalLaneMathlib.AdmissibleClass
import DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean.MorseComplex

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure MorseInequalities (M : Type u) [TopologicalSpace M] (f : DiscreteMorseFunction M) where
  bettiNumbers : ℕ → ℕ
  criticalCounts : ℕ → ℕ
  weakMorseInequality : ∀ n : ℕ, criticalCounts n ≥ bettiNumbers n
  strongMorseInequality : Prop

structure MorseInequalitiesEvidence (M : Type u) [TopologicalSpace M] (f : DiscreteMorseFunction M) (I : MorseInequalities M f) where
  weakMorseInequalityClosed : I.weakMorseInequality
  strongMorseInequalityClosed : I.strongMorseInequality

def MorseInequalitiesClosed (M : Type u) [TopologicalSpace M] (f : DiscreteMorseFunction M) (I : MorseInequalities M f) : Prop :=
  I.weakMorseInequality ∧ I.strongMorseInequality

theorem morse_inequalities_closed_from_evidence (M : Type u) [TopologicalSpace M] (f : DiscreteMorseFunction M)
    (I : MorseInequalities M f) (E : MorseInequalitiesEvidence M f I) : MorseInequalitiesClosed M f I := by
  exact And.intro E.weakMorseInequalityClosed E.strongMorseInequalityClosed

end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean
end HautevilleHouse
