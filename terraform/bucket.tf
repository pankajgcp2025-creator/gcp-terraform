resource "google_storage_bucket" "backend-bucket" {
    name        = "backend-bucket-481001"
    location="us-central1"

    storage_class= "STANDARD"
    uniform_bucket_level_access = true
}