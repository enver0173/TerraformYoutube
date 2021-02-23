output "IP" {
  value = aws_instance.web.public_ip

}


#output "name" {
#  value = Enver
#
#}


output "Arn" {
  value = aws_instance.web.arn

}
