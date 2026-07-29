import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

structure GradientFlowAnalysisPackage where
  flowCategory : Type u
  flowMap : Type v
  flowExistence : Prop
  flowUniqueness : Prop
  flowContinuity : Prop
  flowExistenceTerm : flowExistence
  flowUniquenessTerm : flowUniqueness
  flowContinuityTerm : flowContinuity

structure GradientFlowAnalysisEvidence (G : GradientFlowAnalysisPackage) where
  flowExistenceClosed : G.flowExistence
  flowUniquenessClosed : G.flowUniqueness
  flowContinuityClosed : G.flowContinuity

def GradientFlowAnalysisClosed (G : GradientFlowAnalysisPackage) : Prop :=
  G.flowExistence ∧ G.flowUniqueness ∧ G.flowContinuity

theorem gradient_flow_analysis_closed_from_evidence (G : GradientFlowAnalysisPackage) (E : GradientFlowAnalysisEvidence G) : GradientFlowAnalysisClosed G := by
  exact And.intro E.flowExistenceClosed (And.intro E.flowUniquenessClosed E.flowContinuityClosed)

end HautevilleHouse
end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean