import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean.MorseInequalities
import HautevilleHouse.DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean.HandlebodyDecomposition

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

def ConstrainedMorseTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_morse_theory_endgame (A : AdmissibleClass) :
    ConstrainedMorseTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean
end HautevilleHouse