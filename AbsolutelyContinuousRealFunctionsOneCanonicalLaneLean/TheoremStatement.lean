import HautevilleHouse.AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceRepository : String := "absolutely-continuous-real-functions-one-canonical-lane"
def sourceDescription : String := "Absolutely Continuous Real Functions One"
def sourceTheoremBoundaryClaim : String := "Classical source boundary for absolutely continuous functions"
def baselineCertificateLane : String := "function_constrained"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := sourceTheoremBoundaryClaim,
    manifoldConstrainedStatement := "Function-constrained certificate for absolutely continuous functions",
    certificateLane := baselineCertificateLane,
    carriedRemainder := "Classical source boundary carried by theoremBoundaryOpen"
  }

theorem theorem_statement_source_key_checked : sourceTheoremStatement.sourceKey = sourceRepository := rfl

theorem theorem_statement_certificate_lane_checked : sourceTheoremStatement.certificateLane = baselineCertificateLane := rfl

end AbsolutelyContinuousRealFunctionsOneCanonicalLaneLean
end HautevilleHouse