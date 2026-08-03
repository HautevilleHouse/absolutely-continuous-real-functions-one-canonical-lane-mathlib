import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean.AbsoluteContinuityPackage

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure VitaliCoveringPackage {P : AbsoluteContinuityPackage} where
  coveringByIntervals : Prop
  approximationOfDerivative : Prop
  differentiationTheorem : Prop

structure VitaliCoveringEvidence {P : AbsoluteContinuityPackage}
    (V : VitaliCoveringPackage P) where
  coveringByIntervalsClosed : V.coveringByIntervals
  approximationOfDerivativeClosed : V.approximationOfDerivative
  differentiationTheoremClosed : V.differentiationTheorem

def VitaliCoveringClosed {P : AbsoluteContinuityPackage}
    (V : VitaliCoveringPackage P) : Prop :=
  V.coveringByIntervals ∧ V.approximationOfDerivative ∧ V.differentiationTheorem

theorem vitali_covering_closed_from_evidence {P : AbsoluteContinuityPackage}
    (V : VitaliCoveringPackage P) (E : VitaliCoveringEvidence V) :
    VitaliCoveringClosed V := by
  exact And.intro E.coveringByIntervalsClosed
    (And.intro E.approximationOfDerivativeClosed E.differentiationTheoremClosed)

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse