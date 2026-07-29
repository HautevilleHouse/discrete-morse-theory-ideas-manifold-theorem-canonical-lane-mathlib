import canonicalLaneMathlib.AdmissibleClass
import DiscreteMorseTheoryIdeasManifoldTheorem.CWComplexStructure

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheorem

structure DMTManifoldTheorem where
  manifold : Type u
  topology : TopologicalSpace manifold
  cwComplex : CWComplexStructure
  poincareConjectureCase : Prop
  smoothStructureExists : Prop
  sphereDetection : Prop
  discreteMorseProof : Prop

structure DMTManifoldTheoremEvidence (T : DMTManifoldTheorem) where
  poincareConjectureCaseClosed : T.poincareConjectureCase
  smoothStructureExistsClosed : T.smoothStructureExists
  sphereDetectionClosed : T.sphereDetection
  discreteMorseProofClosed : T.discreteMorseProof

def DMTManifoldTheoremClosed (T : DMTManifoldTheorem) : Prop :=
  T.poincareConjectureCase ∧ T.smoothStructureExists ∧ T.sphereDetection ∧ T.discreteMorseProof

theorem dmt_manifold_theorem_closed_from_evidence
    (T : DMTManifoldTheorem) (E : DMTManifoldTheoremEvidence T) :
    DMTManifoldTheoremClosed T := by
  exact And.intro E.poincareConjectureCaseClosed
    (And.intro E.smoothStructureExistsClosed
      (And.intro E.sphereDetectionClosed E.discreteMorseProofClosed))

end DiscreteMorseTheoryIdeasManifoldTheorem
end HautevilleHouse