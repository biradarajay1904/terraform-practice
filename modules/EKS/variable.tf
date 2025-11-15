variable "cluster_name" {}
variable "cpu" {}
variable "memory" {}
variable "container_name" {}
variable "image_url" {}
variable "container_port" {}
variable "execution_role_arn" {}
variable "task_role_arn" {}
variable "desired_count" {}
variable "private_subnets" {
  type = list(string)
}
variable "security_group" {}
