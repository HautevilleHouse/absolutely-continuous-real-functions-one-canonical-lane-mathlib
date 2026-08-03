import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean.RealMeasureBasisPackage

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure LebesgueDifferentiationPackage (M : RealMeasureBasisPackage) where
  lebegueDifferentiationTheorem : Prop
  densityPointsExist : Prop
  coveringLemma : Prop

structure LebesgueDifferentiationEvidence {M : RealMeasureBasisPackage}
    (D : LebesgueDifferentiationPackage M) where
  lebegueDifferentiationTheoremClosed : D.lebegueDifferentiationTheorem
  densityPointsExistClosed : D.densityPointsExist
  coveringLemmaClosed : D.coveringLemma

def LebesgueDifferentiationClosed {M : RealMeasureBasisPackage}
    (D : LebesgueDifferentiationPackage M) : Prop :=
  D.lebegueDifferentiationTheorem ∧ D.densityPointsExist ∧ D.coveringLemma

theorem lebesgue_differentiation_closed_from_evidence
    {M : RealMeasureBasisPackage} (D : LebesgueDifferentiationPackage M)
    (E : LebesgueDifferentiationEvidence D) : LebesgueDifferentiationClosed D := by
  exact And.intro E.lebegueDifferentiationTheoremClosed
    (And.intro E.densityPointsExistClosed E.coveringLemmaClosed)

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse