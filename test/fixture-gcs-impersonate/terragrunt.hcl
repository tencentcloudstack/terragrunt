# Configure Terragrunt to automatically store tfstate files in a GCS bucket


remote_state {
  backend = "gcs"

  config = {
    project  = "__FILL_IN_PROJECT__"
    location = "__FILL_IN_LOCATION__"
    bucket   = "__FILL_IN_BUCKET_NAME__"
    impersonate_service_account = "terragrunt2052@tg-tests-12345.iam.gserviceaccount.com"
    prefix   = "terraform.tfstate"

    gcs_bucket_labels = {
      owner = "terragrunt_test"
      name  = "terraform_state_storage"
    }
  }
}
