import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure DiscreteMorseComplex where
  cellComplex : Type u
  discreteGradientField : Type v
  gradientFlowLines : Type w
  criticalCells : Nat
  cellDecomposition : Prop
  gradientCompatibility : Prop
  flowLineWellDefined : Prop
  criticalCellsFinite : Prop
  cellDecompositionTerm : cellDecomposition
  gradientCompatibilityTerm : gradientCompatibility
  flowLineWellDefinedTerm : flowLineWellDefined
  criticalCellsFiniteTerm : criticalCellsFinite

structure DiscreteMorseComplexEvidence (D : DiscreteMorseComplex) where
  cellDecompositionClosed : D.cellDecomposition
  gradientCompatibilityClosed : D.gradientCompatibility
  flowLineWellDefinedClosed : D.flowLineWellDefined
  criticalCellsFiniteClosed : D.criticalCellsFinite

def DiscreteMorseComplexClosed (D : DiscreteMorseComplex) : Prop :=
  D.cellDecomposition ∧ D.gradientCompatibility ∧ D.flowLineWellDefined ∧ D.criticalCellsFinite

theorem discrete_morse_complex_closed_from_evidence (D : DiscreteMorseComplex) (E : DiscreteMorseComplexEvidence D) : DiscreteMorseComplexClosed D := by
  exact And.intro E.cellDecompositionClosed (And.intro E.gradientCompatibilityClosed (And.intro E.flowLineWellDefinedClosed E.criticalCellsFiniteClosed))

end HautevilleHouse
end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean