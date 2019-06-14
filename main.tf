resource "aws_cognito_user_pool" "pool-1" {
  name                          = "${var.name}"
  username_attributes           = "${var.username_attributes}"
  auto_verified_attributes      = "${var.auto_verified_attributes}"
  admin_create_user_config      = "${var.admin_create_user_config}"
  device_configuration          = "${var.device_configuration}"
  email_configuration           = "${var.email_configuration}"
  email_verification_subject
  email_verification_message
  sms_verification_message
  lambda_config                 = "${var.lambda_config}"
  password_policy               = "${var.password_policy}"
  schema                        = "${var.schema}"
  mfa_configuration             = "${var.mfa_configuration}"
  sms_configuration             = "${var.sms_configuration}"
  sms_authentication_message    = "${var.sms_authentication_message}"
  user_pool_add_ons             = "${var.user_pool_add_ons}"
  verification_message_template = "${var.verification_message_template}"
  tags                          = "${var.tags}"
}


