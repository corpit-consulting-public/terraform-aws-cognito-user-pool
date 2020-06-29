
# tf-aws-cognito-user-pool

Terraform module that creates Cognito User Pool resources in AWS
  
  A user pool is a user directory in Amazon Cognito. With a user pool, your users can sign in to your web or mobile app through Amazon Cognito. Your users can also sign in through social identity providers like Facebook or Amazon, and through SAML identity providers. Whether your users sign in directly or through a third party, all members of the user pool have a directory profile that you can access through an SDK.

User pools provide:

 * Sign-up and sign-in services.

 * A built-in, customizable web UI to sign in users.

 * Social sign-in with Facebook, Google, and Login with Amazon, as well as sign-in with SAML identity providers from your user pool.

 * User directory management and user profiles.

 * Security features such as multi-factor authentication (MFA), checks for compromised credentials, account takeover protection, and phone and email verification.

 * Customized workflows and user migration through AWS Lambda triggers.

 * After successfully authenticating a user, Amazon Cognito issues JSON web tokens (JWT) that you can use to secure and authorize access to your own APIs, or exchange for AWS credentials.

## Terraform Version

Terraform 0.12. Pin module version to `~> v2.0`. Submit pull-requests to `teraform012` branch.

Terraform 0.11. Pin module version to `~> v1.0`. Submit pull-requests to `terraform11` branch.
## Usage

```hcl

module "CognitoUserPool" {
  source                     = "./modules/tf-aws-cognito-user-pool-mod"
  name                       = "CognitoUserPool"
  username_attributes        = [var.username_attributes]
  schema                     = var.schema
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
  require_lowercase = var.require_lowercase
  require_numbers   = var.require_numbers
  require_symbols   = var.require_symbols
  require_uppercase = var.require_uppercase
  allow_admin_create_user_only = var.allow_admin_create_user_only
  unused_account_validity_days = var.unused_account_validity_days
}
```
## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
