##############################################################################
# Variables File
# 
# Here is where we store the default values for all the variables used in our
# Terraform code. If you create a variable with no default, the user will be
# prompted to enter it (or define it via config file or command line flags.)

variable "resource_group" {
  description = "The name of your Azure Resource Group."
  default     = "tlh-hpcc-cluster-westus-rg"
}

variable "prefix_cluster_name" {
  description = "This cluster name prefix will be included in the name of some resources."
  default     = "hpcc"
}

variable "hostname" {
  description = "Virtual machine hostname. Used for local hostname, DNS, and storage-related names."
  default     = "hpcc"
}

variable "platform" {
  description = "hpcc platform to install"
  default     = "https://d2wulyp08c6njk.cloudfront.net/releases/CE-Candidate-7.6.36/bin/platform/hpccsystems-platform-community_7.6.36-1xenial_amd64.deb"
}

variable "location" {
  description = "The region where the virtual network is created."
  default     = "westus"
}

variable "virtual_network_name" {
  description = "The name for your virtual network."
  default     = "vnet"
}

variable "address_space" {
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "10.0.0.0/16"
}

variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}

variable "storage_account_tier" {
  description = "Defines the storage tier. Valid options are Standard and Premium."
  default     = "Standard"
}

variable "storage_replication_type" {
  description = "Defines the replication type to use for this storage account. Valid options include LRS, GRS etc."
  default     = "LRS"
}

variable "vm_size" {
  description = "Specifies the size of the virtual machine."
  default     = "Standard_D2"
}

variable "disksize" {
  description = "Specifies the size of the system disk (in GB)."
  default     = "30"
}

variable "image_publisher" {
  description = "Name of the publisher of the image (az vm image list)"
  default     = "openLogic"
}

variable "image_offer" {
  description = "Name of the offer (az vm image list)"
  default     = "CentOS"
}

variable "image_sku" {
  description = "Image SKU to apply (az vm image list)"
  default     = "7.3"
}

variable "image_version" {
  description = "Version of the image to apply (az vm image list)"
  default     = "latest"
}

variable "admin_username" {
  description = "Administrator user name"
  default     = "adminuser"
}

variable "admin_password" {
  description = "Administrator password"
  default     = "Adminpassword123!"
}

variable "source_network" {
  description = "Allow access from this network prefix. Defaults to '*'."
  default     = "*"
}
