import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure HandleAttachmentsPackage where
  desc : Type u
  handleDecomposition : Prop
  indexAttached : Prop
  gluingMaps : Prop
  handleDecompositionTerm : handleDecomposition
  indexAttachedTerm : indexAttached
  gluingMapsTerm : gluingMaps

structure HandleAttachmentsEvidence (H : HandleAttachmentsPackage) where
  handleDecompositionClosed : H.handleDecomposition
  indexAttachedClosed : H.indexAttached
  gluingMapsClosed : H.gluingMaps

def HandleAttachmentsClosed (H : HandleAttachmentsPackage) : Prop :=
  H.handleDecomposition ∧ H.indexAttached ∧ H.gluingMaps

theorem handle_attachments_closed_from_evidence (H : HandleAttachmentsPackage) (E : HandleAttachmentsEvidence H) : HandleAttachmentsClosed H := by
  exact And.intro E.handleDecompositionClosed (And.intro E.indexAttachedClosed E.gluingMapsClosed)

end HautevilleHouse
end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean