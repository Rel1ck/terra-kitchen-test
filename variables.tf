variable "environment" {
   description = "variable to configure the environment where the resources will be deployed"
}
variable "owner" {
   description = "Variable to define the owner of the resource"
}
variable "files_names" {
   type        = list(string)
}
