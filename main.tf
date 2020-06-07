resource "aws_cognito_user_pool" "pool-1" {
  name                     = var.name
  username_attributes      = var.username_attributes
  auto_verified_attributes = var.auto_verified_attributes
  dynamic "device_configuration" {
    for_each = var.device_configuration
    content {
      # TF-UPGRADE-TODO: The automatic upgrade tool can't predict
      # which keys might be set in maps assigned here, so it has
      # produced a comprehensive set here. Consider simplifying
      # this after confirming which keys can be set in practice.

      challenge_required_on_new_device      = lookup(device_configuration.value, "challenge_required_on_new_device", null)
      device_only_remembered_on_user_prompt = lookup(device_configuration.value, "device_only_remembered_on_user_prompt", null)
    }
  }
  dynamic "email_configuration" {
    for_each = var.email_configuration
    content {
      # TF-UPGRADE-TODO: The automatic upgrade tool can't predict
      # which keys might be set in maps assigned here, so it has
      # produced a comprehensive set here. Consider simplifying
      # this after confirming which keys can be set in practice.

      email_sending_account  = lookup(email_configuration.value, "email_sending_account", null)
      from_email_address     = lookup(email_configuration.value, "from_email_address", null)
      reply_to_email_address = lookup(email_configuration.value, "reply_to_email_address", null)
      source_arn             = lookup(email_configuration.value, "source_arn", null)
    }
  }
  email_verification_subject = var.email_verification_subject
  email_verification_message = var.email_verification_message
  sms_verification_message   = var.sms_verification_message
  lambda_config {
    create_auth_challenge          = var.create_auth_challenge
    custom_message                 = var.custom_message
    define_auth_challenge          = var.define_auth_challenge
    post_authentication            = var.post_authentication
    post_confirmation              = var.post_confirmation
    pre_authentication             = var.pre_authentication
    pre_sign_up                    = var.pre_sign_up
    pre_token_generation           = var.pre_token_generation
    user_migration                 = var.user_migration
    verify_auth_challenge_response = var.verify_auth_challenge_response
  }
  password_policy {
    require_uppercase                = var.require_uppercase
    require_lowercase                = var.require_lowercase
    require_numbers                  = var.require_numbers
    require_symbols                  = var.require_symbols
    minimum_length                   = var.minimum_length
    temporary_password_validity_days = var.temporary_password_validity_days
  }
   # schema
  dynamic "schema" {
    for_each = var.schemas == null ? [] : var.schemas
    content {
      attribute_data_type      = lookup(schema.value, "attribute_data_type")
      developer_only_attribute = lookup(schema.value, "developer_only_attribute")
      mutable                  = lookup(schema.value, "mutable")
      name                     = lookup(schema.value, "name")
      required                 = lookup(schema.value, "required")
    }
  }

  # schema (String)
  dynamic "schema" {
    for_each = var.string_schemas == null ? [] : var.string_schemas
    content {
      attribute_data_type      = lookup(schema.value, "attribute_data_type")
      developer_only_attribute = lookup(schema.value, "developer_only_attribute")
      mutable                  = lookup(schema.value, "mutable")
      name                     = lookup(schema.value, "name")
      required                 = lookup(schema.value, "required")

      # string_attribute_constraints  
      dynamic "string_attribute_constraints" {
        for_each = length(lookup(schema.value, "string_attribute_constraints")) == 0 ? [] : [lookup(schema.value, "string_attribute_constraints", {})]
        content {
          min_length = lookup(string_attribute_constraints.value, "min_length", 0)
          max_length = lookup(string_attribute_constraints.value, "max_length", 0)
        }
      }
    }
  }

  # schema (Number)
  dynamic "schema" {
    for_each = var.number_schemas == null ? [] : var.number_schemas
    content {
      attribute_data_type      = lookup(schema.value, "attribute_data_type")
      developer_only_attribute = lookup(schema.value, "developer_only_attribute")
      mutable                  = lookup(schema.value, "mutable")
      name                     = lookup(schema.value, "name")
      required                 = lookup(schema.value, "required")

      # number_attribute_constraints
      dynamic "number_attribute_constraints" {
        for_each = length(lookup(schema.value, "number_attribute_constraints")) == 0 ? [] : [lookup(schema.value, "number_attribute_constraints", {})]
        content {
          min_value = lookup(number_attribute_constraints.value, "min_value", 0)
          max_value = lookup(number_attribute_constraints.value, "max_value", 0)
        }
      }
    }
  }
  mfa_configuration = var.mfa_configuration
  sms_configuration {
    sns_caller_arn = var.sns_caller_arn
    external_id    = var.external_id
  }
  sms_authentication_message = var.sms_authentication_message
  dynamic "user_pool_add_ons" {
    for_each = var.user_pool_add_ons
    content {
      # TF-UPGRADE-TODO: The automatic upgrade tool can't predict
      # which keys might be set in maps assigned here, so it has
      # produced a comprehensive set here. Consider simplifying
      # this after confirming which keys can be set in practice.

      advanced_security_mode = user_pool_add_ons.value.advanced_security_mode
    }
  }

  #verification_message_template = "${var.verification_message_template}"
  tags = var.tags
  admin_create_user_config {
    allow_admin_create_user_only = var.allow_admin_create_user_only
    dynamic "invite_message_template" {
      for_each = var.invite_message_template
      content {
        # TF-UPGRADE-TODO: The automatic upgrade tool can't predict
        # which keys might be set in maps assigned here, so it has
        # produced a comprehensive set here. Consider simplifying
        # this after confirming which keys can be set in practice.

        email_message = lookup(invite_message_template.value, "email_message", null)
        email_subject = lookup(invite_message_template.value, "email_subject", null)
        sms_message   = lookup(invite_message_template.value, "sms_message", null)
      }
    }
    #    unused_account_validity_days = "${var.unused_account_validity_days}"
  }
  lifecycle {
    ignore_changes = [
   #   temporary_password_validity_days,
   #   unused_account_validity_days,
    ]
  }
}

