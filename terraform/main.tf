module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws+dev01@projectcircle.co.il"
    AccountName               = "develop-01"
    ManagedOrganizationalUnit = "Development"
    SSOUserEmail              = "aws+dev01@projectcircle.co.il"
    SSOUserFirstName          = "develop-01"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
