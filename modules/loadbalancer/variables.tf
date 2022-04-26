# These are the variables required for the loadbalancer submodule to function
# properly and are duplicated highly from the main module but instead do not
# have any defaults set because this submodule should never by called from
# anything else expect the main module where values for all these variables will
# always be passed in
variable ports {
    description = "A list of ports that will be load balanced"
    type        = list(string)
}
variable "region" {
  description = "GCP region that'll be targeted for infrastructure deployment"
  type        = string
}
variable instances {
    description = "Instance resource objects that are to be added to the newly set up load balancers"
    type        = set(any)
}
variable "id" {
  description = "Randomly generated value used to produce unique names for everything to prevent collisions and visually link resources together"
  type        = string
}
variable "has_lb" {
  description = "A boolean that indicates if the deployment requires load balancer deployment"
  type        = bool
}
variable network    {
  description = "VPC network provisioned by the networking submodule"
  type        = string
}
variable subnetwork {
  description = "Regional subnetwork assigned to VPC network provisioned by the networking submodule"
  type        = string
}
variable "lb_ip_mode" {
  description = "Designate if a public or private IP address is assigned to load balancer"
  type        = string
}