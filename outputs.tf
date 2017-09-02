output "api_ip" {
  value = "${lookup(packet_device.controller.0.network[0], "address")}"
}

output "api_hostname" {
  value = "${packet_device.controller.0.hostname}"
}

output "node_public_ipv4" {
  value = "${join("\n",null_resource.net.*.triggers.public_ipv4)}"
}

output "kubeconfig_path" {
  value = "${path.module}/${var.asset_dir}/auth/kubeconfig"
}

output "kube_version_minor" {
  value = "${null_resource.kubernetes_facts.triggers.kubernetes_v_minor}"
}

output "kube_version_patch" {
  value = "${null_resource.kubernetes_facts.triggers.kubernetes_v_patch}"
}

output "hosts_file_entries" {
  value = "${join("\n",null_resource.hosts.*.triggers.entries)}"
}
