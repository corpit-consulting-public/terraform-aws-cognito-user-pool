output "id" {
  description = "The id of the user pool"
  value       = "${aws_cognito_user_pool.pool-1.id}"
}

output "arn" {
  description = "The ARN of the user pool."
  value       = "${aws_cognito_user_pool.pool-1.arn}"
}

output "endpoint" {
  description = "The endpoint name of the user pool. Example format: cognito-idp.REGION.amazonaws.com/xxxx_yyyyy"
  value       = "${aws_cognito_user_pool.pool-1.endpoint}"
}

