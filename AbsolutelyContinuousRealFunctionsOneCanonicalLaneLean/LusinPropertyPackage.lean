import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean.AbsoluteContinuityPackage

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure LusinPropertyPackage (P : AbsoluteContinuityPackage) where
  nullSetPreservation : Prop
  measurableImage : Prop
  propertyNEquivalence : Prop

structure LusinPropertyEvidence {P : AbsoluteContinuityPackage}
    (L : LusinPropertyPackage P) where
  nullSetPreservationClosed : L.nullSetPreservation
  measurableImageClosed : L.measurableImage
  propertyNEquivalenceClosed : L.propertyNEquivalence

def LusinPropertyClosed {P : AbsoluteContinuityPackage}
    (L : LusinPropertyPackage P) : Prop :=
  L.nullSetPreservation ∧ L.measurableImage ∧ L.propertyNEquivalence

theorem lusin_property_closed_from_evidence {P : AbsoluteContinuityPackage}
    (L : LusinPropertyPackage P) (E : LusinPropertyEvidence L) :
    LusinPropertyClosed L := by
  exact And.intro E.nullSetPreservationClosed
    (And.intro E.measurableImageClosed E.propertyNEquivalenceClosed)

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse