import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure AbsoluteContinuityPackage where
  interval : ℝ × ℝ
  functionType : (ℝ → ℝ)
  epsilonDeltaCondition : Prop
  finiteVariationOnInterval : Prop
  derivativeAlmostEverywhere : Prop

structure AbsoluteContinuityEvidence (P : AbsoluteContinuityPackage) where
  epsilonDeltaConditionClosed : P.epsilonDeltaCondition
  finiteVariationOnIntervalClosed : P.finiteVariationOnInterval
  derivativeAlmostEverywhereClosed : P.derivativeAlmostEverywhere

def AbsoluteContinuityClosed (P : AbsoluteContinuityPackage) : Prop :=
  P.epsilonDeltaCondition ∧ P.finiteVariationOnInterval ∧ P.derivativeAlmostEverywhere

theorem absolute_continuity_closed_from_evidence (P : AbsoluteContinuityPackage) (E : AbsoluteContinuityEvidence P) :
    AbsoluteContinuityClosed P := by
  exact And.intro E.epsilonDeltaConditionClosed
    (And.intro E.finiteVariationOnIntervalClosed E.derivativeAlmostEverywhereClosed)

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse