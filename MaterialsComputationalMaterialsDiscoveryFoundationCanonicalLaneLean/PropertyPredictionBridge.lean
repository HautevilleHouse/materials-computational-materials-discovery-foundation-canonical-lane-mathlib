import canonicalLaneMathlib.AdmissibleClass
import MaterialsComputationalMaterialsDiscoveryFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsComputationalMaterialsDiscoveryFoundationCanonicalLaneLean

def predictsFormationEnergy (proc : DiscoveryProcedure) (material : MaterialStructure) (energy : Float) : Prop :=
  (proc.propertyPredictor material).formationEnergy = energy

theorem formation_energy_prediction_bridge (proc : DiscoveryProcedure) (mat : MaterialStructure) :
  predictsFormationEnergy proc mat (proc.propertyPredictor mat).formationEnergy := by
  rfl

structure PredictionCertificate where
  material : MaterialStructure
  predicted : ComputationalMaterialProperty
  actual : ComputationalMaterialProperty
  deviation : Float

def predictionDeviation (cert : PredictionCertificate) : Float :=
  cert.deviation

end MaterialsComputationalMaterialsDiscoveryFoundationCanonicalLaneLean
end HautevilleHouse