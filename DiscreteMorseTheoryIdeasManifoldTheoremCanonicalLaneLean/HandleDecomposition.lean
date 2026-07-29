import canonicalLaneMathlib.AdmissibleClass
import DiscreteMorseTheoryIdeasManifoldTheorem.MorseHomology

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheorem

structure HandleDecomposition where
  manifold : Type u
  topology : TopologicalSpace manifold
  morseFunction : DiscreteMorseFunction
  handleAttachments : List (ℕ × Set manifold)
  decompositionInducesDiffeomorphism : Prop
  handlebodyDecomposition : Prop
  cancellingHandles : Prop

structure HandleDecompositionEvidence (D : HandleDecomposition) where
  decompositionInducesDiffeomorphismClosed : D.decompositionInducesDiffeomorphism
  handlebodyDecompositionClosed : D.handlebodyDecomposition
  cancellingHandlesClosed : D.cancellingHandles

def HandleDecompositionClosed (D : HandleDecomposition) : Prop :=
  D.decompositionInducesDiffeomorphism ∧ D.handlebodyDecomposition ∧ D.cancellingHandles

theorem handle_decomposition_closed_from_evidence
    (D : HandleDecomposition) (E : HandleDecompositionEvidence D) :
    HandleDecompositionClosed D := by
  exact And.intro E.decompositionInducesDiffeomorphismClosed
    (And.intro E.handlebodyDecompositionClosed E.cancellingHandlesClosed)

end DiscreteMorseTheoryIdeasManifoldTheorem
end HautevilleHouse