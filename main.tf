resource "aws_cognito_user_pool" "pool-1" {
  name                          = var.name
  username_attributes           = var.username_attributes
  auto_verified_attributes      = var.auto_verified_attributes
  device_configuration          {
    challenge_required_on_new_device = var.challenge_required_on_new_device
    device_only_remembered_on_user_prompt = var.device_only_remembered_on_user_prompt
  }
  email_configuration           {
    reply_to_email_address      = var.reply_to_email_address
    source_arn                  = var.source_arn
  }
  email_verification_subject    = var.email_verification_subject
  email_verification_message    = var.email_verification_message
  sms_verification_message      = var.sms_verification_message
  lambda_config                 {
    create_auth_challenge           = var.create_auth_challenge
    custom_message                  = var.custom_message
    define_auth_challenge           = var.define_auth_challenge
    post_authentication             = var.post_authentication
    post_confirmation               = var.post_confirmation
    pre_authentication              = var.pre_authentication
    pre_sign_up                     = var.pre_sign_up
    pre_token_generation            = var.pre_token_generation
    user_migration                  = var.user_migration
    verify_auth_challenge_response  = var.verify_auth_challenge_response
  }
  password_policy                {
    require_uppercase                = var.require_uppercase
    require_lowercase                = var.require_lowercase
    require_numbers                  = var.require_numbers
    require_symbols                  = var.require_symbols
    minimum_length                   = var.minimum_length
  }
  schema                       {
    attribute_data_type          = var.attribute_data_type
    name                         = var.name
    developer_only_attribute     = var.developer_only_attribute
    mutable                      = var.mutable
    number_attribute_constraints {
      max_value                  = var.max_value
      min_value                  = var.min_value
    }
    required                     = var.required
    string_attribute_constraints {
      max_length                 = var.max_length
      min_length                 = var.min_length
    }
  }
  mfa_configuration             = var.mfa_configuration
  sms_configuration              {
    sns_caller_arn              = var.sns_caller_arn
    external_id                 = var.external_id
  }
  sms_authentication_message    = var.sms_authentication_message
  user_pool_add_ons             {
    advanced_security_mode      = var.advanced_security_mode
  }
  #verification_message_template { 
  #}                         #######verification_message_template configuration############
  
  tags                          = var.tags
  admin_create_user_config  {
    allow_admin_create_user_only = var.allow_admin_create_user_only
    #invite_message_template      {
    #  email_subject              = var.email_subject
    #  sms_message                = var.sms_message
    #}
    unused_account_validity_days = var.unused_account_validity_days
 }
}