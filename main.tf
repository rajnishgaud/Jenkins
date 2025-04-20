provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_pod" "example" {
  metadata {
    name = "demo-pod"
    labels = {
      app = "demo"
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
