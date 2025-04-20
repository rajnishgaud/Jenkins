# main.tf
provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_pod" "nginx" {
  metadata {
    name = "nginx-example"
    labels = {
      app = "nginx"
    }
  }

  spec {
    container {
      image = "nginx"
      name  = "nginx"
      port {
        container_port = 80
      }
    }
  }
}
