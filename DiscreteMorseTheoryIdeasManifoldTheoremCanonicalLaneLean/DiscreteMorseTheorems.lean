import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure DiscreteMorseTheoremsPackage (C : CellularComplexPackage) (M : MorseFunctionPackage C) where
  morseInequalities : Prop
  discreteMorseComplex : Prop
  homologyEquiv : Prop
  manifoldEndpoint : Prop
  morseTheoryClosed : Prop

theorem discrete_morse_theorems_admissible (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean
end HautevilleHouse