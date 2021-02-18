resource "null_resource" "script" {
    triggers = {
        always_run = timestamp()
    }
    provisioner "remote-exec" {
        inline  = [
            "sudo yum install httpd -y",
            "sudo systemctl start httpd",
            "sudo yum install telnet -y",
            "sudo yum install elinks -y"
        ]
    }
    connection {
        type     = "ssh"
        user     = "centos"
        private_key = file("~/.ssh/id_rsa")
        host     = aws_instance.web.public_ip
    }
}