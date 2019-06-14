## Usage

```hcl

module "CognitoUserPool" {
  source                     = "./modules/tf-aws-cognito-user-pool-mod"
  name                       = "CognitoUserPool"
  username_attributes        = ["{var.username_attributes}"]
  schema                     = "${var.schema}"
  sms_verification_message   = "example-1234{####}"
  email_verification_message = "cognito-example1234{####}"
  email_verification_subject = "cognito-example1234{####}"
  message_template_sms_message   = "example-1234{####}"
  message_template_email_message = "example-1234{####}"
  default_email_option           = "CONFIRM_WITH_CODE" 
  mfa_configuration          = "OPTIONAL"
  sms_authentication_message = "example-1234{####}"
  external_id    = "arn:aws:iam::123456789:role/service-role/Example-SMS-Rolea"
  sns_caller_arn = "bfbf9a9c-99a9-9999-bae9-f9f99fda9f9b"
  minimum_length    = "${var.minimum_length}"
  require_lowercase = "${var.require_lowercase}"
  require_numbers   = "${var.require_numbers}"
  require_symbols   = "${var.require_symbols}"
  require_uppercase = "${var.require_uppercase}"
  allow_admin_create_user_only = "${var.allow_admin_create_user_only}"
  unused_account_validity_days = "$var.unused_account_validity_days{}"
}
```
