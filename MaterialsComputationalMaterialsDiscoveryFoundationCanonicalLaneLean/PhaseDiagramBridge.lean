import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsComputationalMaterialsDiscoveryFoundationCanonicalLaneLean

structure Phase where
  name : String
  composition : List Float
  temperature : Float
  pressure : Float

structure PhaseTransition where
  fromPhase : Phase
  toPhase : Phase
  enthalpy : Float
  entropy : Float

def freeEnergy (phase : Phase) : Float :=
  phase.composition.sum * phase.temperature - phase.pressure

def transitionTemperature (t : PhaseTransition) : Float :=
  t.enthalpy / t.entropy

structure PhaseDiagram where
  phases : List Phase
  transitions : List PhaseTransition
  criticalPoint : Option Phase

def diagramClosed (D : PhaseDiagram, A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end MaterialsComputationalMaterialsDiscoveryFoundationCanonicalLaneLean
end HautevilleHouse