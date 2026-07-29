import DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiscreteMorseWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscreteMorseTheoryIdeasManifoldTheoremCanonicalLaneLean
end HautevilleHouse