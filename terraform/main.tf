provider "kubernetes" { 
  config_path = "~/.kube/config" 
} 
resource "kubernetes_deployment_v1" "proyectoactividaddos" { 
  metadata { 
    name = "proyectoactividaddos" 
    labels = { 
      app = "proyectoactividaddos" 
    } 
  } 
  spec { 
    replicas = 3 
    selector { 
      match_labels = { 
        app = "proyectoactividaddos" 
      } 
    } 
    template { 
      metadata { 
        labels = { 
          app = "proyectoactividaddos" 
        } 
      } 
      spec { 
        container { 
          image = "alejocruzutb/proyectoactividaddos:latest" 
          name  = "proyectoactividaddos" 
          port { 
            container_port = 8500 
          } 
        } 
      } 
    } 
  } 
} 