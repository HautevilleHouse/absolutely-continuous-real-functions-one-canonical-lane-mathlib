import canonicalLaneMathlib.AdmissibleClass
import AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean.AbsoluteContinuityPackage

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AbsoluteContinuityClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.closureProof

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse