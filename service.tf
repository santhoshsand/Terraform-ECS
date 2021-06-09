resource "aws_ecs_service" "testserve" {
  name            = "testserve"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.testdef.id
  desired_count   = 2
}
