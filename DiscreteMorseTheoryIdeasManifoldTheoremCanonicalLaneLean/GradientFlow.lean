import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure GradientFlowPackage (C : CellularComplexPackage) (M : MorseFunctionPackage C) where
  flowPath : C.cells -> C.cells -> Prop
  decreasingAlongFlow : ∀ c d : C.cells, flowPath c d → M.value c > M.value d
  gradientTrajectoryUnique : Prop
  flowCocompact : Prop
  gradientFlowClosed : Prop

end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean
end HautevilleHouse