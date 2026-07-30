import canonicalLaneMathlib.AdmissibleClass
import MaterialsComputationalMaterialsDiscoveryFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsComputationalMaterialsDiscoveryFoundationCanonicalLaneLean

inductive StructureType where
  | Rocksalt
  | Perovskite
  | Spinel
  | Zincblende
  | Wurtzite

def bandGapCategory (bg : Float) : String :=
  if bg > 2.0 then "WideBandGap"
  else if bg > 0.0 then "NarrowBandGap"
  else "ZeroBandGap"

structure MaterialPropertyData where
  structure : MaterialStructure
  property : ComputationalMaterialProperty
  bridgeClosed : Bool
  gateClosed : Bool

theorem material_closure (m : MaterialPropertyData) : bridgeClosed m.structure := by
  sorry

structure StructureDatabaseEntry where
  entryId : Nat
  material : MaterialStructure
  propertyPredictor : DiscoveryProcedure

end MaterialsComputationalMaterialsDiscoveryFoundationCanonicalLaneLean
end HautevilleHouse