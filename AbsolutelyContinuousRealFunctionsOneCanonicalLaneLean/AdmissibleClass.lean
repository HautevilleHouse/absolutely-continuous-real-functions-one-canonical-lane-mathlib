import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure RealFunctionSpace where
  carrier : Type
  isRealValued : Prop
  measurable : Prop
  integrable : Prop

structure AdmittedObject where
  space : RealFunctionSpace
  isAbsolutelyContinuous : Prop
  derivativeExistsAlmostEverywhere : Prop
  conclusion : isAbsolutelyContinuous ∧ derivativeExistsAlmostEverywhere

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.isAbsolutelyContinuous ∧ A.object.derivativeExistsAlmostEverywhere) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse