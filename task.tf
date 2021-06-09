resource "aws_ecs_task_definition" "testdef" {
  family = "testdef"
  container_definitions = jsonencode([
    {
      name      = "firstdef"
      image     = "ngnix"
      cpu       = 1
      memory    = 350
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
 ])
volume {
    name      = "service-storage"
    host_path = "/ecs/service-storage"
  }
}

