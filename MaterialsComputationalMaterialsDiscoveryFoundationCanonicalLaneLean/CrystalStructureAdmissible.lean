import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsComputationalMaterialsDiscoveryFoundationCanonicalLaneLean

structure CrystalLattice where
  a : Float
  b : Float
  c : Float
  alpha : Float
  beta : Float
  gamma : Float

def symmetryGroup (L : CrystalLattice) : String :=
  if L.a = L.b ∧ L.b = L.c ∧ L.alpha = 90 ∧ L.beta = 90 ∧ L.gamma = 90 then "cubic"
  else if L.a = L.b ∧ L.b ≠ L.c ∧ L.alpha = 90 ∧ L.beta = 90 ∧ L.gamma = 90 then "tetragonal"
  else "other"

structure MaterialProperty where
  bandGap : Float
  formationEnergy : Float
  elasticModulus : Float

def bandGapClass (p : MaterialProperty) : String :=
  if p.bandGap > 0 then "semiconductor" else "metal"

structure AdmissibleMaterial where
  lattice : CrystalLattice
  property : MaterialProperty
  stability : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.solverDecidesProjectedLanguage

end MaterialsComputationalMaterialsDiscoveryFoundationCanonicalLaneLean
end HautevilleHouse