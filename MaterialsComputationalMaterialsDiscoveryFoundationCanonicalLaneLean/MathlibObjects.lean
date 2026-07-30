import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace MaterialsComputationalMaterialsDiscoveryFoundationCanonicalLaneLean

structure MaterialStructure where
  crystalSystem : String
  composition : String
  spaceGroup : Int
  bandGap : Float

structure ComputationalMaterialProperty where
  formationEnergy : Float
  bulkModulus : Float
  shearModulus : Float
  thermalConductivity : Float

structure DiscoveryProcedure where
  propertyPredictor : MaterialStructure → ComputationalMaterialProperty
  confidence : Float

structure AdmittedObject where
  material : MaterialStructure
  predictedProperty : ComputationalMaterialProperty
  procedure : DiscoveryProcedure
  projectedLanguage : Set String
  solver : DecisionProcedure

structure DecisionProcedure where
  accepts : String → Bool

end MaterialsComputationalMaterialsDiscoveryFoundationCanonicalLaneLean
end HautevilleHouse