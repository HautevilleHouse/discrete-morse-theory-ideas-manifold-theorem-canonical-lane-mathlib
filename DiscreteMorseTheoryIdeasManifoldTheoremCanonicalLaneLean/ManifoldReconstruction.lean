import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure ManifoldReconstructionPackage where
  manifoldType : Type u
  cellComplex : DiscreteMorseComplex
  handleAttachments : HandleAttachmentsPackage
  reconstruction : Prop
  cellComplexReconstructs : Prop
  handleAttachmentsCompatible : Prop
  reconstructionTerm : reconstruction
  cellComplexReconstructsTerm : cellComplexReconstructs
  handleAttachmentsCompatibleTerm : handleAttachmentsCompatible

structure ManifoldReconstructionEvidence (M : ManifoldReconstructionPackage) where
  reconstructionClosed : M.reconstruction
  cellComplexReconstructsClosed : M.cellComplexReconstructs
  handleAttachmentsCompatibleClosed : M.handleAttachmentsCompatible

def ManifoldReconstructionClosed (M : ManifoldReconstructionPackage) : Prop :=
  M.reconstruction ∧ M.cellComplexReconstructs ∧ M.handleAttachmentsCompatible

theorem manifold_reconstruction_closed_from_evidence (M : ManifoldReconstructionPackage) (E : ManifoldReconstructionEvidence M) : ManifoldReconstructionClosed M := by
  exact And.intro E.reconstructionClosed (And.intro E.cellComplexReconstructsClosed E.handleAttachmentsCompatibleClosed)

end HautevilleHouse
end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean