import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean.DiscreteMorseFunction

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure HandlebodyDecomposition (M : Type u) [TopologicalSpace M] (f : DiscreteMorseFunction M) where
  handlebodies : ℕ → Set M
  attachingMaps : (k : ℕ) → (S^k → M)
  decompositionCover : Prop
  indexMatched : ∀ p ∈ f.criticalPoints, f.index p = (Set.range (attachingMaps (f.index p))).length

structure HandlebodyDecompositionEvidence (M : Type u) [TopologicalSpace M] (f : DiscreteMorseFunction M) (H : HandlebodyDecomposition M f) where
  decompositionCoverClosed : H.decompositionCover
  indexMatchedClosed : H.indexMatched

def HandlebodyDecompositionClosed (M : Type u) [TopologicalSpace M] (f : DiscreteMorseFunction M) (H : HandlebodyDecomposition M f) : Prop :=
  H.decompositionCover ∧ H.indexMatched

theorem handlebody_decomposition_closed_from_evidence (M : Type u) [TopologicalSpace M] (f : DiscreteMorseFunction M) (H : HandlebodyDecomposition M f) (e : HandlebodyDecompositionEvidence M f H) : HandlebodyDecompositionClosed M f H := by
  exact And.intro e.decompositionCoverClosed e.indexMatchedClosed

end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean
end HautevilleHouse