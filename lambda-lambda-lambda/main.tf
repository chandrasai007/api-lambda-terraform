provider "aws" {
   region = "us-east-1"
}


module "lambda-api" {
   source         = "./modules/lambda-api"
   path_part      = "Proxy"
   parent_id      = "root_resource_id"
   rest_api_id    = "apilambda"
   function_name  = "firstfunction"
   authorization  = "NONE"
   http_method    = "ANY"
}

