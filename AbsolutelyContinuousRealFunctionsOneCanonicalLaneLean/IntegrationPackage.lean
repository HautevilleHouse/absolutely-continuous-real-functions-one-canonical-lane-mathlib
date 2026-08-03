import HautevilleHouse.AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean.AbsoluteContinuityPackage

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure IntegrationPackage (P : AbsoluteContinuityPackage) where
  integralDefined : Prop
  linearity : Prop
  monotoneConvergence : Prop
  dominatedConvergence : Prop

structure IntegrationEvidence {P : AbsoluteContinuityPackage} (I : IntegrationPackage P) where
  integralDefinedClosed : I.integralDefined
  linearityClosed : I.linearity
  monotoneConvergenceClosed : I.monotoneConvergence
  dominatedConvergenceClosed : I.dominatedConvergence

def IntegrationClosed {P : AbsoluteContinuityPackage} (I : IntegrationPackage P) : Prop :=
  I.integralDefined ∧ I.linearity ∧ I.monotoneConvergence ∧ I.dominatedConvergence

theorem integration_closed_from_evidence {P : AbsoluteContinuityPackage} (I : IntegrationPackage P) (E : IntegrationEvidence I) :
  IntegrationClosed I := by
  exact And.intro E.integralDefinedClosed
    (And.intro E.linearityClosed
      (And.intro E.monotoneConvergenceClosed E.dominatedConvergenceClosed))

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse