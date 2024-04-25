resource "null_resource" "name" {

  depends_on = [aws_instance.ec2-public-mumbai]

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./nwtfmc.pem")
    host        = aws_instance.ec2-public-mumbai.public_ip

  }
  provisioner "file" {
    source      = "./nwtfmc.pem"
    destination = "/home/ec2-user/nwtfmc.pem"


  }
  provisioner "remote-exec" {
    inline = [
      "sudo chmod 400 /home/ec2-user/nwtfmc.pem"
    ]
  }
}