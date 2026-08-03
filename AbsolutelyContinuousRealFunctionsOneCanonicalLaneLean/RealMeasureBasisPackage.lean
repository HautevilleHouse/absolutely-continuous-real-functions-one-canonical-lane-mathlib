import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure RealMeasureBasisPackage where
  carrierSet : Type u
  sigmaAlgebra : Set (Set carrierSet)
  lebesgueMeasure : carrierSet → Type v
  sigmaFinite : Prop
  borelMeasurable : Prop

structure RealMeasureBasisEvidence (M : RealMeasureBasisPackage) where
  sigmaFiniteClosed : M.sigmaFinite
  borelMeasurableClosed : M.borelMeasurable

def RealMeasureBasisClosed (M : RealMeasureBasisPackage) : Prop :=
  M.sigmaFinite ∧ M.borelMeasurable

theorem real_measure_basis_closed_from_evidence
    (M : RealMeasureBasisPackage) (E : RealMeasureBasisEvidence M) :
    RealMeasureBasisClosed M := by
  exact And.intro E.sigmaFiniteClosed E.borelMeasurableClosed

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse