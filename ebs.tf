# resource "aws_elastic_beanstalk_application" "task_list_app" {
#   name        = "stephen-task-listing-app"
#   description = "Task listing application"
# }

# resource "aws_elastic_beanstalk_environment" "task_list_env" {
#   name                = "stephen-task-listing-app-environment"
#   application         = aws_elastic_beanstalk_application.task_list_app.name
#   solution_stack_name = "64bit Amazon Linux 2 v3.4.5 running Docker"

#   setting {
#     namespace = "aws:autoscaling:launchconfiguration"
#     name      = "IamInstanceProfile"
#     value     = aws_iam_instance_profile.example_app_ec2_instance_profile.name
#   }

#   setting {
#     namespace = "aws:autoscaling:launchconfiguration"
#     name      = "EC2KeyName"
#     value     = "your-ec2-key-pair-name"
#   }
# }
