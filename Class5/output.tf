output "cluster_id" {
  value = module.my-cluster.cluster_id
}
output "cluster_arn" {
  value = module.my-cluster.cluster_arn
}
output "cluster_version" {
  value = module.my-cluster.cluster_version
}
output "cluster_security_group_id" {
  value = module.my-cluster.cluster_security_group_id
}
output "workers_asg_names" {
  value = module.my-cluster.workers_asg_names
}