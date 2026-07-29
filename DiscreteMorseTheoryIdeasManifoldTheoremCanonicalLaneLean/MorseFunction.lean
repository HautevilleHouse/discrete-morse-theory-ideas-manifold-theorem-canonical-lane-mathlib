import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure MorseFunctionPackage (C : CellularComplexPackage) where
  value : C.cells -> ℕ
  strictlyIncreasingOnBdry : ∀ c d : C.cells, C.boundary c d → value c < value d
  gradientLike : Prop
  finitelyManyCriticalCells : Prop
  discreteMorseInequalities : Prop

end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean
end HautevilleHouse