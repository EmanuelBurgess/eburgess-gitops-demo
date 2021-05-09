resource "google_monitoring_alert_policy" "alert_policy" {
  display_name = "Manny Website demo dashboard"
  combiner     = "OR"
  conditions {
    display_name = "montior apache webserver"
    condition_threshold {
      filter          = "metric.type=\"compute.googleapis.com/instance/cpu/utilization\" AND resource.type=\"gce_instance\""
      duration        = "60s"
      comparison      = "COMPARISON_GT"
      threshold_value = 1
      aggregations {
        alignment_period = "60s"
      }
    }
  }

  user_labels = {
    name = "webserver_demo"
  }
}

resource "google_monitoring_notification_channel" "slack" {
  display_name = "Test Slack Channel"
  type         = "slack"
  labels = {
    "channel_name" = "#tf-gitops-channel"
  }
  sensitive_labels {
    auth_token = "present.txt"
  }
}

resource "google_monitoring_notification_channel" "email" {
  display_name = "Test Notification Channel"
  type         = "email"
  labels = {
    email_address = "emanuelburgess@gmail.com"
  }
}