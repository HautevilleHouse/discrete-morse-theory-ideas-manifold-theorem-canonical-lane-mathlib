import canonicalLaneMathlib.AdmissibleClass
import DiscreteMorseTheoryIdeasManifoldTheorem.HandleDecomposition

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheorem

structure CWComplexStructure where
  manifold : Type u
  topology : TopologicalSpace manifold
  cells : ℕ → Set manifold
  attachingMaps : ℕ → (𝕊 2 → manifold)
  closureFinite : Prop
  weakTopology : Prop
  cWDecomposition : Prop

structure CWComplexStructureEvidence (C : CWComplexStructure) where
  closureFiniteClosed : C.closureFinite
  weakTopologyClosed : C.weakTopology
  cWDecompositionClosed : C.cWDecomposition

def CWComplexStructureClosed (C : CWComplexStructure) : Prop :=
  C.closureFinite ∧ C.weakTopology ∧ C.cWDecomposition

theorem cw_complex_structure_closed_from_evidence
    (C : CWComplexStructure) (E : CWComplexStructureEvidence C) :
    CWComplexStructureClosed C := by
  exact And.intro E.closureFiniteClosed
    (And.intro E.weakTopologyClosed E.cWDecompositionClosed)

end DiscreteMorseTheoryIdeasManifoldTheorem
end HautevilleHouse