resource "aws_lambda_function" "multi_lambda" {
 # s3_bucket     = "export-logs-2020"
  filename      = "firehose_delivery_records_to_multiple_targets.zip"
  function_name = "firehose_delivery_records_to_multiple_targets"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "main.handler"
  runtime       = "python3.7"
  depends_on    = [aws_iam_role_policy_attachment.lambda_logs, aws_cloudwatch_log_group.cloudwatch_logging_group]
}
