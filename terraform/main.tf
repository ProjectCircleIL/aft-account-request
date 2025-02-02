module "develop-02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws+dev02@projectcircle.co.il"
    AccountName               = "develop-02"
    ManagedOrganizationalUnit = "Development"
    SSOUserEmail              = "aws+dev01@projectcircle.co.il"
    SSOUserFirstName          = "develop-02"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "AFT" = "develop-02"
  }

  change_management_parameters = {
    change_requested_by = "AFT Controller"
    change_reason       = "Vending Development Account 02"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "develop-02"
}
