
variable "drop_invalid_header_fields" {
  description = "(Optional)Indicates whether invalid header fields are dropped in application load balancers. Defaults to false."
  type        = bool
  default     = false
}

variable "enable_deletion_protection" {
  description = " (Optional)If true, deletion of the load balancer will be disabled via the AWS API. This will prevent Terraform from deleting the load balancer. Defaults to false."
  type        = bool
  default     = false
}

variable "enable_http2" {
  description = " (Optional)Indicates whether HTTP/2 is enabled in application load balancers."
  type        = bool
  default     = true
}

variable "enable_cross_zone_load_balancing" {
  description = " (Optional)Indicates whether cross zone load balancing should be enabled in application load balancers."
  type        = bool
  default     = false
}


variable "idle_timeout" {
  description = " (Optional)The time in seconds that the connection is allowed to be idle."
  type        = number
  default     = 60
}

variable "ip_address_type" {
  description = " (Optional)The type of IP addresses used by the subnets for your load balancer. The possible values are ipv4 and dualstack."
  type        = string
  default     = "ipv4"
}


variable "internal" {
  description = " (Optional)Boolean determining if the load balancer is internal or externally facing."
  type        = bool
}


variable "name" {
  description = "The resource name and Name tag of the load balancer."
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "The resource name prefix and Name tag of the load balancer. Cannot be longer than 6 characters"
  type        = string
  default     = null
}

variable "load_balancer_type" {
  description = "The type of load balancer to create. Possible values are application or network."
  type        = string
  default     = "application"
}


variable "access_logs" {
  description = " (Optional)Map containing access logging configuration for load balancer."
  type        = map(string)
  default     = {}
}

variable "subnets" {
  description = "A list of subnets to associate with the load balancer. e.g. ['subnet-1a2b3c4d','subnet-1a2b3c4e','subnet-1a2b3c4f']"
  type        = list(string)
  default     = null
}

variable "subnet_mapping" {
  description = "A list of subnet mapping blocks describing subnets to attach to network load balancer"
  type        = list(map(string))
  default     = []
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "security_groups" {
  description = " (Optional)The security groups to attach to the load balancer. e.g. [\"sg-edcd9784\",\"sg-edcd9785\"]"
  type        = list(string)
  default     = []
}

variable "customer_owned_ipv4" {
  description = "(Optional)The ID of the customer owned ipv4 pool to use for this load balancer."
  type        = string
  default     = null
}

variable "timeouts" {
  description = "(Optional) Allows configurable timeouts for create, update and delete operations"
  type        = map(string)
  default     = {}

}
