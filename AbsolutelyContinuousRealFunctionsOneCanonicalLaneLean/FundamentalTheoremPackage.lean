import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure FundamentalTheoremPackage where
  interval : ℝ × ℝ
  functionType : (ℝ → ℝ)
  absolutelyContinuous : Prop
  derivativeIntegralRepresentsFunction : Prop
  fundamentalTheoremHolds : Prop

structure FundamentalTheoremEvidence (F : FundamentalTheoremPackage) where
  absolutelyContinuousClosed : F.absolutelyContinuous
  derivativeIntegralRepresentsFunctionClosed : F.derivativeIntegralRepresentsFunction
  fundamentalTheoremHoldsClosed : F.fundamentalTheoremHolds

def FundamentalTheoremClosed (F : FundamentalTheoremPackage) : Prop :=
  F.absolutelyContinuous ∧ F.derivativeIntegralRepresentsFunction ∧ F.fundamentalTheoremHolds

theorem fundamental_theorem_closed_from_evidence (F : FundamentalTheoremPackage) (E : FundamentalTheoremEvidence F) :
    FundamentalTheoremClosed F := by
  exact And.intro E.absolutelyContinuousClosed
    (And.intro E.derivativeIntegralRepresentsFunctionClosed E.fundamentalTheoremHoldsClosed)

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse