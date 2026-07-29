import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure CWComplexPackage where
  attachingMaps : Type u
  cellsOfDimension : ℕ -> Type u
  characteristicMap : ℕ -> Type u
  weakTopology : Prop
  closureFinite : Prop
  cwComplexClosed : Prop

end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean
end HautevilleHouse