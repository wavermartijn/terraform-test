terraform {}

provider "aws" {

}

resource "aws_elb" "elbname" {
    access_logs {
      bucket = "irefact-access-logs"
    }
  
}