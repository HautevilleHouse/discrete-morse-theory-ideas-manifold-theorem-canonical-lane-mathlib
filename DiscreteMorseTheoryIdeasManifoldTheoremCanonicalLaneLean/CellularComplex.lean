import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure CellularComplexPackage where
  cells : Type u
  boundary : cells -> cells -> Prop
  dimension : cells -> Nat
  faceRelation : cells -> cells -> Prop
  incidenceNumber : cells -> cells -> ℤ
  finiteComplex : Prop
  weakTopology : Prop
  dimensionConsistent : Prop
  boundarySquareZero : Prop

def cellularComplexClosed (C : CellularComplexPackage) : Prop :=
  C.finiteComplex ∧ C.weakTopology ∧ C.dimensionConsistent ∧ C.boundarySquareZero

end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean
end HautevilleHouse