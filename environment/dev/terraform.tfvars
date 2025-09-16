rgs_details = {
  rg1 = {
    rg_name     = "devloha23"
    rg_location = "centralindia"
    tags = {
      Environment = "dev"
    }
  }
}

stgs_details = {

  stg1 = {
    sa_name  = "devlohastg23"
    rg_name  = "devloha23"
    location = "centralindia"
    sa_tags = {
      Environment = "dev"
    }

  }
}
vnets_details = {
  vnet1 = {
    vnet_name     = "dev-vnet"
    rg_name       = "devloha23"
    location      = "centralindia"
    address_space = ["10.0.0.0/16"]
    va_tags = {
      Environment = "dev"
    }

  }
}
subs_details = {
  sub1 = {
    sub_name         = "dev_sub"
    rg_name          = "devloha23"
    vnet_name        = "dev-vnet"
    address_prefixes = ["10.0.1.0/24"]
  }
}

vm_details = {
  vm1 = {
    sub_name  = "dev_sub"
    vnet_name = "dev-vnet"
    rg_name   = "devloha23"
    nic_name  = "devnic1"
    location  = "centralindia"
    vm_name   = "devvm1"

  }
  vm2 = {
    sub_name  = "dev_sub"
    vnet_name = "dev-vnet"
    rg_name   = "devloha23"
    nic_name  = "devnic2"
    location  = "centralindia"
    vm_name   = "devvm2"
  }
}
pip_details = {
  pip1={
    pip_name= "dev_pip"
    rg_name="devloha23"
    location= "centralindia"
    pip_tags= {
      Environment = "dev"
    }
  }
}