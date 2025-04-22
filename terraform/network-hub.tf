# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "networkhub_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "mosesye+smenetworkhub@amazon.com"
    AccountName  = "AFT Sandbox"
    ManagedOrganizationalUnit = "Root"
    SSOUserEmail     = "mosesye+smenetworkhub@amazon.com"
    SSOUserFirstName = "SME"
    SSOUserLastName  = "AdmiAccountn"
  }

  account_tags = {
    "ABC:Owner"       = "mosesye+smenetworkhub@amazon.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Moses Yehoshua"
    change_reason       = "Creating sme test account Account in Root"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sme-networkhub-customizations"
}