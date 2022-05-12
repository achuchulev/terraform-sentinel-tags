module "tfplan-functions" {
  source = "../../terraform-sentinel-policies/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../../terraform-sentinel-policies/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../../terraform-sentinel-policies/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "workspace-functions" {
  source = "./tfe-functions/workspace-functions.sentinel"
}

module "tfe-functions" {
  source = "./tfe-functions/tfe-functions.sentinel"
}

module "common-functions" {
  source = "../common-functions/common-functions.sentinel"
}

policy "enforce-mandatory-tags-hard" {
  source = "./enforce-mandatory-tags-hard.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "enforce-mandatory-tags-soft" {
  source = "./enforce-mandatory-tags-soft.sentinel"
  enforcement_level = "soft-mandatory"
}
