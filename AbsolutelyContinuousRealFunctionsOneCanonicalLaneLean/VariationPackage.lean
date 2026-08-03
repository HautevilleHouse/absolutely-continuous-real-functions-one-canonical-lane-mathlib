import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure VariationPackage where
  interval : ℝ × ℝ
  functionType : (ℝ → ℝ)
  totalVariationFinite : Prop
  decompositionIntoMonotoneFunctions : Prop
  variationCharacterization : Prop

structure VariationEvidence (V : VariationPackage) where
  totalVariationFiniteClosed : V.totalVariationFinite
  decompositionIntoMonotoneFunctionsClosed : V.decompositionIntoMonotoneFunctions
  variationCharacterizationClosed : V.variationCharacterization

def VariationClosed (V : VariationPackage) : Prop :=
  V.totalVariationFinite ∧ V.decompositionIntoMonotoneFunctions ∧ V.variationCharacterization

theorem variation_closed_from_evidence (V : VariationPackage) (E : VariationEvidence V) :
    VariationClosed V := by
  exact And.intro E.totalVariationFiniteClosed
    (And.intro E.decompositionIntoMonotoneFunctionsClosed E.variationCharacterizationClosed)

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse