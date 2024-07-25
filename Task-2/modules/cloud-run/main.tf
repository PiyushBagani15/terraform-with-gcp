
resource "google_project_service" "run" {
  for_each = toset([
    "run.googleapis.com",
    "cloudbuild.googleapis.com",
    "artifactregistry.googleapis.com"
  ])
  project = var.project_id
  service = each.key
}



resource "google_cloud_run_service" "hello_world" {
  name     = var.name
  location = var.region

  template {
    spec {
      containers {
        image = var.image
      }
    }
  }

  traffic {
    percent         = var.percent
    latest_revision = var.latest_revision
  }

  autogenerate_revision_name = true
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location = google_cloud_run_service.hello_world.location
  project  = var.project_id
  service  = google_cloud_run_service.hello_world.name

  policy_data = <<EOF
{
  "bindings": [
    {
      "role": "roles/run.invoker",
      "members": [
        "allUsers"
      ]
    }
  ]
}
EOF
}
