import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean.AbsoluteContinuityPackage

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure LusinApproximationPackage {P : AbsoluteContinuityPackage} where
  continuousApproximation : Prop
  measureSmallException : Prop
  approximationProperty : Prop

structure LusinApproximationEvidence {P : AbsoluteContinuityPackage}
    (L : LusinApproximationPackage P) where
  continuousApproximationClosed : L.continuousApproximation
  measureSmallExceptionClosed : L.measureSmallException
  approximationPropertyClosed : L.approximationProperty

def LusinApproximationClosed {P : AbsoluteContinuityPackage}
    (L : LusinApproximationPackage P) : Prop :=
  L.continuousApproximation ∧ L.measureSmallException ∧ L.approximationProperty

theorem lusin_approximation_closed_from_evidence {P : AbsoluteContinuityPackage}
    (L : LusinApproximationPackage P) (E : LusinApproximationEvidence L) :
    LusinApproximationClosed L := by
  exact And.intro E.continuousApproximationClosed
    (And.intro E.measureSmallExceptionClosed E.approximationPropertyClosed)

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse