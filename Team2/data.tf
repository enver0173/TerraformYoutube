data "terraform_remote_state" "main" {
  backend = "s3"
  config = {
    bucket = "backend-class-enver0101731"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
output "full_list" {
  value = data.terraform_remote_state.main.outputs.*
}