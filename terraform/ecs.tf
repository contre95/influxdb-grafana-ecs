resource "aws_ecs_cluster" "infotek" {
  name = "infotek-cluster"
}

resource "aws_ecs_service" "infotek-ecs-service" {
  name            = "infotek-ecs-service"
  cluster         = aws_ecs_cluster.infotek.id
  task_definition = aws_ecs_task_definition.infotek.arn
  desired_count   = 1
  #iam_role        = aws_iam_role.foo.arn
  #depends_on      = [aws_iam_role_policy.foo]
  network_configuration {
    subnets = var.subnets
    security_groups = [aws_security_group.infotek-sg.id]
    assign_public_ip = true

  }
  launch_type = "FARGATE"

  #tags = var.tags
  #load_balancer {
    #target_group_arn = aws_lb_target_group.foo.arn
    #container_name   = "mongo"
    #container_port   = 8080
  #}

  #placement_constraints {
    #type       = "memberOf"
    #expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
  #}
}
