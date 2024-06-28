
module "key" {
  source = "../key_pair"
  region_name = "us-east-1"
  key_name = "robert_key"
}