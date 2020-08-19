resource "aws_ecs_task_definition" "infotek" {
  family                = "infotek-poc"
  container_definitions = file("task-definitions/infotek.json")
  network_mode = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  memory = "512"
  cpu = "256"
  execution_role_arn = "arn:aws:iam::848704013560:role/ecsTaskExecutionRole"

  #volume {
    #name      = "service-storage"
    #host_path = "/ecs/service-storage"
  #}

  #placement_constraints {
    #type       = "memberOf"
    #expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
  #}
}
