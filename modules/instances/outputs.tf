# Output data that will be used by other submodules to build other parts of the
# stack to support defined architecture
output "console" {
  value       = try(google_compute_instance.server[0].network_interface[0].access_config[0].nat_ip, google_compute_instance.server[0].network_interface[0].network_ip, "")
  description = "This will be the external IP address assigned to the Puppet Enterprise console"
}
output "compilers" {
  value       = var.compiler_count == 0 ? google_compute_instance.server[*] : google_compute_instance.compiler[*] 
  description = "Depending on architecture, either the primary master or the group of compilers created by the module for use by other modules"
}