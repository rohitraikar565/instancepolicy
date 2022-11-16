module "tfplan-functions" {
    source = "./tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "./tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "./tfconfig-functions.sentinel"
}

module "tfrun-functions" {
    source = "./tfrun-functions.sentinel"
}


policy "allowed-resources" {
    source = "./allowed-resources.sentinel"
    enforcement_level = "advisory"
}

policy "limit-cost-and-percentage-increase" {
    source = "./limit-cost-and-percentage-increase.sentinel"
    enforcement_level = "advisory"
}

policy "limit-cost-by-workspace-name" {
    source = "./limit-cost-by-workspace-name.sentinel"
    enforcement_level = "advisory"
}

policy "limit-proposed-monthly-cost" {
    source = "./limit-proposed-monthly-cost.sentinel"
    enforcement_level = "advisory"
}
policy "enforce-mandatory-labels" {
    source = "./enforce-mandatory-labels.sentinel"
    enforcement_level = "advisory"
}
