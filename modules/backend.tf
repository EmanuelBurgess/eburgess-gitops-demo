terraform {
  backend "gcs" {
    bucket = "burgesstestbucket100"
    prefix = "terraform/"
    #credentials = "modules/project_creds.json"
  }
}