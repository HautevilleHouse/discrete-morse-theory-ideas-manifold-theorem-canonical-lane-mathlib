import canonicalLaneMathlib.AdmissibleClass
import DiscreteMorseTheoryIdeasManifoldTheorem.DiscreteMorseFunction

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheorem

structure MorseHomology where
  morseFunction : DiscreteMorseFunction
  chainComplex : Type u
  homologyGroups : ℕ → Type v
  morseInequalities : Prop
  boundaryMapDefined : Prop
  homologyComputed : Prop

structure MorseHomologyEvidence (H : MorseHomology) where
  morseInequalitiesClosed : H.morseInequalities
  boundaryMapDefinedClosed : H.boundaryMapDefined
  homologyComputedClosed : H.homologyComputed

def MorseHomologyClosed (H : MorseHomology) : Prop :=
  H.morseInequalities ∧ H.boundaryMapDefined ∧ H.homologyComputed

theorem morse_homology_closed_from_evidence
    (H : MorseHomology) (E : MorseHomologyEvidence H) :
    MorseHomologyClosed H := by
  exact And.intro E.morseInequalitiesClosed
    (And.intro E.boundaryMapDefinedClosed E.homologyComputedClosed)

end DiscreteMorseTheoryIdeasManifoldTheorem
end HautevilleHouse