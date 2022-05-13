module "tfplan-functions" {
  source = "../../../../terraform-sentinel-policies/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../../../../terraform-sentinel-policies/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../../../../terraform-sentinel-policies/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "workspace-functions" {
  source = "../../tfe-functions/workspace-functions.sentinel"
}

module "tfe-functions" {
  source = "../../tfe-functions/tfe-functions.sentinel"
}

module "common-functions" {
  source = "../../../common-functions/common-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "./mock-tfplan-v2-fail.sentinel"
  }
}

test {
  rules = {
    main          = false
  }
}
