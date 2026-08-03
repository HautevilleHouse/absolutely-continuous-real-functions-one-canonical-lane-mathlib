import canonicalLaneMathlib.AdmissibleClass
import AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean.AbsoluteContinuityPackage

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure BoundedVariationPackage (AC : AbsoluteContinuityPackage) where
  totalVariationFinite : Prop
  jordanDecomposition : Prop
  differentiabilityAlmostEverywhere : Prop
  variationCharacterization : Prop

structure BoundedVariationEvidence {AC : AbsoluteContinuityPackage}
    (BV : BoundedVariationPackage AC) where
  totalVariationFiniteClosed : BV.totalVariationFinite
  jordanDecompositionClosed : BV.jordanDecomposition
  differentiabilityClosed : BV.differentiabilityAlmostEverywhere
  variationCharacterizationClosed : BV.variationCharacterization

def BoundedVariationClosed {AC : AbsoluteContinuityPackage}
    (BV : BoundedVariationPackage AC) : Prop :=
  BV.totalVariationFinite ∧ BV.jordanDecomposition ∧
  BV.differentiabilityAlmostEverywhere ∧ BV.variationCharacterization

theorem bounded_variation_closed_from_evidence {AC : AbsoluteContinuityPackage}
    (BV : BoundedVariationPackage AC) (E : BoundedVariationEvidence BV) :
    BoundedVariationClosed BV := by
  exact And.intro E.totalVariationFiniteClosed
    (And.intro E.jordanDecompositionClosed
      (And.intro E.differentiabilityClosed E.variationCharacterizationClosed))

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse