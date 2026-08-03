import canonicalLaneMathlib.AdmissibleClass
import AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean.AbsoluteContinuityPackage

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure IntegralCharacterizationPackage (AC : AbsoluteContinuityPackage) where
  integrableDerivative : Prop
  integralOfDerivative : Prop
  barrowRule : Prop
  integrableOnDomain : Prop

structure IntegralCharacterizationEvidence {AC : AbsoluteContinuityPackage}
    (IC : IntegralCharacterizationPackage AC) where
  integrableDerivativeClosed : IC.integrableDerivative
  integralOfDerivativeClosed : IC.integralOfDerivative
  barrowRuleClosed : IC.barrowRule
  integrableOnDomainClosed : IC.integrableOnDomain

def IntegralCharacterizationClosed {AC : AbsoluteContinuityPackage}
    (IC : IntegralCharacterizationPackage AC) : Prop :=
  IC.integrableDerivative ∧ IC.integralOfDerivative ∧ IC.barrowRule ∧ IC.integrableOnDomain

theorem integral_characterization_closed_from_evidence {AC : AbsoluteContinuityPackage}
    (IC : IntegralCharacterizationPackage AC) (E : IntegralCharacterizationEvidence IC) :
    IntegralCharacterizationClosed IC := by
  exact And.intro E.integrableDerivativeClosed
    (And.intro E.integralOfDerivativeClosed
      (And.intro E.barrowRuleClosed E.integrableOnDomainClosed))

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse