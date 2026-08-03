import canonicalLaneMathlib.AdmissibleClass
import AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean.AbsoluteContinuityPackage

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure FTCCharacterizationPackage (AC : AbsoluteContinuityPackage) where
  derivativeExistsAE : Prop
  derivativeIntegrable : Prop
  FTCIdentity : Prop
  indefiniteIntegralCharacterization : Prop

structure FTCCharacterizationEvidence {AC : AbsoluteContinuityPackage}
    (FTC : FTCCharacterizationPackage AC) where
  derivativeExistsAEClosed : FTC.derivativeExistsAE
  derivativeIntegrableClosed : FTC.derivativeIntegrable
  FTCIdentityClosed : FTC.FTCIdentity
  indefiniteIntegralClosed : FTC.indefiniteIntegralCharacterization

def FTCCharacterizationClosed {AC : AbsoluteContinuityPackage}
    (FTC : FTCCharacterizationPackage AC) : Prop :=
  FTC.derivativeExistsAE ∧ FTC.derivativeIntegrable ∧ FTC.FTCIdentity ∧
  FTC.indefiniteIntegralCharacterization

theorem ftc_characterization_closed_from_evidence {AC : AbsoluteContinuityPackage}
    (FTC : FTCCharacterizationPackage AC) (E : FTCCharacterizationEvidence FTC) :
    FTCCharacterizationClosed FTC := by
  exact And.intro E.derivativeExistsAEClosed
    (And.intro E.derivativeIntegrableClosed
      (And.intro E.FTCIdentityClosed E.indefiniteIntegralClosed))

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse