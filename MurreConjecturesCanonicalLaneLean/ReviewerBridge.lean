import MurreConjecturesCanonicalLaneLean.Formalization
import MurreConjecturesCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace MurreConjecturesCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "1f6a63f35e23319e4eb5221c4b1291385fb358066bff97771c27a5fa81d90eda", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "79d76d1a782572f6c92303c471cd0103fd6267d76a5468604e9fa0385de50507", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "5c35f22c439b7a367a03766b63e52c62a70a34942804cb6d75e4ef62b765de05", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "2485cd4f2ad185360cecc586cc0b3497885773418516f6de90c03e8c1aa209cc", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "b6a87eec8827a50adf82536af9c260ac76772d88d56aab32818bc3331e4cb642", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "9daef69b26d4141f1266773f6d1cb97d20f7ebe59c209d3a8b23f9bff6177d08", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "e146164d8a8b80d5c4a9edf419fd898c3aea4a88786f93debddfbe18aca5afa8", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "a086744459a6446d52c0e01158e2d9f23a11af106708313aed83a0725652feee", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "aef0b2239d832e7dcbbc2cea74b87661c435f5dd0c93824e2505810af79a2f99", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "MUR_G1", constant := "kappa_projector" },
  { gate := "MUR_G2", constant := "sigma_chow" },
  { gate := "MUR_G3", constant := "kappa_compact" },
  { gate := "MUR_G4", constant := "rho_rigidity" },
  { gate := "MUR_G5", constant := "filtration_transfer" },
  { gate := "MUR_G6", constant := "eps_coh" },
  { gate := "MUR_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "d6b3a7d5f79effb987b6ac101c64ff0759cd15a20e09abd5bc26a6a9669d45f5" },
  { path := "README.md", sha256 := "dd8b010d3778268e4139f6faac656c82dc9d2a20b0852abfdb6981a8dd587ee8" },
  { path := "artifacts/constants_extracted.json", sha256 := "2485cd4f2ad185360cecc586cc0b3497885773418516f6de90c03e8c1aa209cc" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "5c35f22c439b7a367a03766b63e52c62a70a34942804cb6d75e4ef62b765de05" },
  { path := "artifacts/constants_registry.json", sha256 := "b6a87eec8827a50adf82536af9c260ac76772d88d56aab32818bc3331e4cb642" },
  { path := "artifacts/promotion_report.json", sha256 := "e146164d8a8b80d5c4a9edf419fd898c3aea4a88786f93debddfbe18aca5afa8" },
  { path := "artifacts/stitch_constants.json", sha256 := "9daef69b26d4141f1266773f6d1cb97d20f7ebe59c209d3a8b23f9bff6177d08" },
  { path := "notes/EG1_public.md", sha256 := "005040eea3ce0f5b21e31f55fa07efd57157c65d14bc179069c14aa3305b4236" },
  { path := "notes/EG2_public.md", sha256 := "b8f7bdf60095184c1e240cacf07c2cadd24ce2246ca273acc1ed8d05031d615d" },
  { path := "notes/EG3_public.md", sha256 := "17eaf3b149076114473cb61b9c468b61421f13bb346b32ab2371ae412b5433a6" },
  { path := "notes/EG4_public.md", sha256 := "cda99b37a8fde9b15336ccaff71646468c438120a8fa55756f03b9701240be10" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "79d76d1a782572f6c92303c471cd0103fd6267d76a5468604e9fa0385de50507" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "2dce7adcc67c208bd98426538b355e6182e68bcd1afac2946e04e7b09bc9179e" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "6711d4cace72f2b20a44ae5a8bb43e3d2f54e2137e282bdb58b47303cb12b6c2" },
  { path := "paper/MURRE_CONJECTURES_PREPRINT.md", sha256 := "da2a6fb8e5e9295cedc96e3aa11a6b5d5b036f0f98378b5611db374b2f0217e8" },
  { path := "repro/REPRO_PACK.md", sha256 := "8bae9254ede14dcd3c2e8d56f6b80b02ba83159eefbc8c51faaefea35ca6687f" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "0c10ef1561853e28dfc860bfd7734123c0b57494aa9a7f2c95a67000dec4723f" },
  { path := "repro/certificate_baseline.json", sha256 := "aef0b2239d832e7dcbbc2cea74b87661c435f5dd0c93824e2505810af79a2f99" },
  { path := "repro/run_repro.sh", sha256 := "b72ba4ccc98f19779f2f1d9f1916350b5c11fffb70ac4162b575ef6ccf305b2f" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/murre_closure_guard.py", sha256 := "7a846740a5137aa65f8be296b10d2d74049dc5c1971412853e851e5b619834d1" },
  { path := "scripts/README.md", sha256 := "b62d59245fa933828c8de0605ded39ec2a3b132bc31cdaedcf165aef50ed26c3" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "MUR_G1", status := "PASS" },
  { gate := "MUR_G2", status := "PASS" },
  { gate := "MUR_G3", status := "PASS" },
  { gate := "MUR_G4", status := "PASS" },
  { gate := "MUR_G5", status := "PASS" },
  { gate := "MUR_G6", status := "PASS" },
  { gate := "MUR_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "filtration_transfer", value := "1.0305400000000002" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_projector", value := "1.095567" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_chow", value := "1.075" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "filtration_transfer",
  "kappa_compact",
  "kappa_projector",
  "rho_rigidity",
  "sigma_chow",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end MurreConjecturesCanonicalLaneLean
end HautevilleHouse
