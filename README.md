# Azure.ImmutableArmAks

Simply execute deploy.sh script, but make sure you login first / select subscription (az login etc.):

`./deploy.sh <<cluster_name>> <<service_principal_app_id>> <<service_principal_secret>>`

Afterwards, you can change parts of the ARM template to test idempotency features of this template
