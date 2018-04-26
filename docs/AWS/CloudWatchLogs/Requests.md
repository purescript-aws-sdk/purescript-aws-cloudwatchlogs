## Module AWS.CloudWatchLogs.Requests

#### `associateKmsKey`

``` purescript
associateKmsKey :: forall eff. Service -> AssociateKmsKeyRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Associates the specified AWS Key Management Service (AWS KMS) customer master key (CMK) with the specified log group.</p> <p>Associating an AWS KMS CMK with a log group overrides any existing associations between the log group and a CMK. After a CMK is associated with a log group, all newly ingested data for the log group is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested.</p> <p>Note that it can take up to 5 minutes for this operation to take effect.</p> <p>If you attempt to associate a CMK with a log group but the CMK does not exist or the CMK is disabled, you will receive an <code>InvalidParameterException</code> error. </p>

#### `cancelExportTask`

``` purescript
cancelExportTask :: forall eff. Service -> CancelExportTaskRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Cancels the specified export task.</p> <p>The task must be in the <code>PENDING</code> or <code>RUNNING</code> state.</p>

#### `createExportTask`

``` purescript
createExportTask :: forall eff. Service -> CreateExportTaskRequest -> Aff (exception :: EXCEPTION | eff) CreateExportTaskResponse
```

<p>Creates an export task, which allows you to efficiently export data from a log group to an Amazon S3 bucket.</p> <p>This is an asynchronous call. If all the required information is provided, this operation initiates an export task and responds with the ID of the task. After the task has started, you can use <a>DescribeExportTasks</a> to get the status of the export task. Each account can only have one active (<code>RUNNING</code> or <code>PENDING</code>) export task at a time. To cancel an export task, use <a>CancelExportTask</a>.</p> <p>You can export logs from multiple log groups or multiple time ranges to the same S3 bucket. To separate out log data for each export task, you can specify a prefix to be used as the Amazon S3 key prefix for all exported objects.</p>

#### `createLogGroup`

``` purescript
createLogGroup :: forall eff. Service -> CreateLogGroupRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Creates a log group with the specified name.</p> <p>You can create up to 5000 log groups per account.</p> <p>You must use the following guidelines when naming a log group:</p> <ul> <li> <p>Log group names must be unique within a region for an AWS account.</p> </li> <li> <p>Log group names can be between 1 and 512 characters long.</p> </li> <li> <p>Log group names consist of the following characters: a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).</p> </li> </ul> <p>If you associate a AWS Key Management Service (AWS KMS) customer master key (CMK) with the log group, ingested data is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested.</p> <p>If you attempt to associate a CMK with the log group but the CMK does not exist or the CMK is disabled, you will receive an <code>InvalidParameterException</code> error. </p>

#### `createLogStream`

``` purescript
createLogStream :: forall eff. Service -> CreateLogStreamRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Creates a log stream for the specified log group.</p> <p>There is no limit on the number of log streams that you can create for a log group.</p> <p>You must use the following guidelines when naming a log stream:</p> <ul> <li> <p>Log stream names must be unique within the log group.</p> </li> <li> <p>Log stream names can be between 1 and 512 characters long.</p> </li> <li> <p>The ':' (colon) and '*' (asterisk) characters are not allowed.</p> </li> </ul>

#### `deleteDestination`

``` purescript
deleteDestination :: forall eff. Service -> DeleteDestinationRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Deletes the specified destination, and eventually disables all the subscription filters that publish to it. This operation does not delete the physical resource encapsulated by the destination.</p>

#### `deleteLogGroup`

``` purescript
deleteLogGroup :: forall eff. Service -> DeleteLogGroupRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Deletes the specified log group and permanently deletes all the archived log events associated with the log group.</p>

#### `deleteLogStream`

``` purescript
deleteLogStream :: forall eff. Service -> DeleteLogStreamRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream.</p>

#### `deleteMetricFilter`

``` purescript
deleteMetricFilter :: forall eff. Service -> DeleteMetricFilterRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Deletes the specified metric filter.</p>

#### `deleteResourcePolicy`

``` purescript
deleteResourcePolicy :: forall eff. Service -> DeleteResourcePolicyRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Deletes a resource policy from this account. This revokes the access of the identities in that policy to put log events to this account.</p>

#### `deleteRetentionPolicy`

``` purescript
deleteRetentionPolicy :: forall eff. Service -> DeleteRetentionPolicyRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Deletes the specified retention policy.</p> <p>Log events do not expire if they belong to log groups without a retention policy.</p>

#### `deleteSubscriptionFilter`

``` purescript
deleteSubscriptionFilter :: forall eff. Service -> DeleteSubscriptionFilterRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Deletes the specified subscription filter.</p>

#### `describeDestinations`

``` purescript
describeDestinations :: forall eff. Service -> DescribeDestinationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeDestinationsResponse
```

<p>Lists all your destinations. The results are ASCII-sorted by destination name.</p>

#### `describeExportTasks`

``` purescript
describeExportTasks :: forall eff. Service -> DescribeExportTasksRequest -> Aff (exception :: EXCEPTION | eff) DescribeExportTasksResponse
```

<p>Lists the specified export tasks. You can list all your export tasks or filter the results based on task ID or task status.</p>

#### `describeLogGroups`

``` purescript
describeLogGroups :: forall eff. Service -> DescribeLogGroupsRequest -> Aff (exception :: EXCEPTION | eff) DescribeLogGroupsResponse
```

<p>Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.</p>

#### `describeLogStreams`

``` purescript
describeLogStreams :: forall eff. Service -> DescribeLogStreamsRequest -> Aff (exception :: EXCEPTION | eff) DescribeLogStreamsResponse
```

<p>Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered.</p> <p>This operation has a limit of five transactions per second, after which transactions are throttled.</p>

#### `describeMetricFilters`

``` purescript
describeMetricFilters :: forall eff. Service -> DescribeMetricFiltersRequest -> Aff (exception :: EXCEPTION | eff) DescribeMetricFiltersResponse
```

<p>Lists the specified metric filters. You can list all the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.</p>

#### `describeResourcePolicies`

``` purescript
describeResourcePolicies :: forall eff. Service -> DescribeResourcePoliciesRequest -> Aff (exception :: EXCEPTION | eff) DescribeResourcePoliciesResponse
```

<p>Lists the resource policies in this account.</p>

#### `describeSubscriptionFilters`

``` purescript
describeSubscriptionFilters :: forall eff. Service -> DescribeSubscriptionFiltersRequest -> Aff (exception :: EXCEPTION | eff) DescribeSubscriptionFiltersResponse
```

<p>Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.</p>

#### `disassociateKmsKey`

``` purescript
disassociateKmsKey :: forall eff. Service -> DisassociateKmsKeyRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Disassociates the associated AWS Key Management Service (AWS KMS) customer master key (CMK) from the specified log group.</p> <p>After the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested.</p> <p>Note that it can take up to 5 minutes for this operation to take effect.</p>

#### `filterLogEvents`

``` purescript
filterLogEvents :: forall eff. Service -> FilterLogEventsRequest -> Aff (exception :: EXCEPTION | eff) FilterLogEventsResponse
```

<p>Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream.</p> <p>By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events), or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call.</p>

#### `getLogEvents`

``` purescript
getLogEvents :: forall eff. Service -> GetLogEventsRequest -> Aff (exception :: EXCEPTION | eff) GetLogEventsResponse
```

<p>Lists log events from the specified log stream. You can list all the log events or filter using a time range.</p> <p>By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). You can get additional log events by specifying one of the tokens in a subsequent call.</p>

#### `listTagsLogGroup`

``` purescript
listTagsLogGroup :: forall eff. Service -> ListTagsLogGroupRequest -> Aff (exception :: EXCEPTION | eff) ListTagsLogGroupResponse
```

<p>Lists the tags for the specified log group.</p>

#### `putDestination`

``` purescript
putDestination :: forall eff. Service -> PutDestinationRequest -> Aff (exception :: EXCEPTION | eff) PutDestinationResponse
```

<p>Creates or updates a destination. A destination encapsulates a physical resource (such as an Amazon Kinesis stream) and enables you to subscribe to a real-time stream of log events for a different account, ingested using <a>PutLogEvents</a>. Currently, the only supported physical resource is a Kinesis stream belonging to the same account as the destination.</p> <p>Through an access policy, a destination controls what is written to its Kinesis stream. By default, <code>PutDestination</code> does not set any access policy with the destination, which means a cross-account user cannot call <a>PutSubscriptionFilter</a> against this destination. To enable this, the destination owner must call <a>PutDestinationPolicy</a> after <code>PutDestination</code>.</p>

#### `putDestinationPolicy`

``` purescript
putDestinationPolicy :: forall eff. Service -> PutDestinationPolicyRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Creates or updates an access policy associated with an existing destination. An access policy is an <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html">IAM policy document</a> that is used to authorize claims to register a subscription filter against a given destination.</p>

#### `putLogEvents`

``` purescript
putLogEvents :: forall eff. Service -> PutLogEventsRequest -> Aff (exception :: EXCEPTION | eff) PutLogEventsResponse
```

<p>Uploads a batch of log events to the specified log stream.</p> <p>You must include the sequence token obtained from the response of the previous call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token using <a>DescribeLogStreams</a>. If you call <code>PutLogEvents</code> twice within a narrow time period using the same value for <code>sequenceToken</code>, both calls may be successful, or one may be rejected.</p> <p>The batch of events must satisfy the following constraints:</p> <ul> <li> <p>The maximum batch size is 1,048,576 bytes, and this size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.</p> </li> <li> <p>None of the log events in the batch can be more than 2 hours in the future.</p> </li> <li> <p>None of the log events in the batch can be older than 14 days or the retention period of the log group.</p> </li> <li> <p>The log events in the batch must be in chronological ordered by their time stamp (the time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC).</p> </li> <li> <p>The maximum number of log events in a batch is 10,000.</p> </li> <li> <p>A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.</p> </li> </ul>

#### `putMetricFilter`

``` purescript
putMetricFilter :: forall eff. Service -> PutMetricFilterRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Creates or updates a metric filter and associates it with the specified log group. Metric filters allow you to configure rules to extract metric data from log events ingested through <a>PutLogEvents</a>.</p> <p>The maximum number of metric filters that can be associated with a log group is 100.</p>

#### `putResourcePolicy`

``` purescript
putResourcePolicy :: forall eff. Service -> PutResourcePolicyRequest -> Aff (exception :: EXCEPTION | eff) PutResourcePolicyResponse
```

<p>Creates or updates a resource policy allowing other AWS services to put log events to this account, such as Amazon Route 53. An account can have up to 50 resource policies per region.</p>

#### `putRetentionPolicy`

``` purescript
putRetentionPolicy :: forall eff. Service -> PutRetentionPolicyRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Sets the retention of the specified log group. A retention policy allows you to configure the number of days for which to retain log events in the specified log group.</p>

#### `putSubscriptionFilter`

``` purescript
putSubscriptionFilter :: forall eff. Service -> PutSubscriptionFilterRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Creates or updates a subscription filter and associates it with the specified log group. Subscription filters allow you to subscribe to a real-time stream of log events ingested through <a>PutLogEvents</a> and have them delivered to a specific destination. Currently, the supported destinations are:</p> <ul> <li> <p>An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.</p> </li> <li> <p>A logical destination that belongs to a different account, for cross-account delivery.</p> </li> <li> <p>An Amazon Kinesis Firehose delivery stream that belongs to the same account as the subscription filter, for same-account delivery.</p> </li> <li> <p>An AWS Lambda function that belongs to the same account as the subscription filter, for same-account delivery.</p> </li> </ul> <p>There can only be one subscription filter associated with a log group. If you are updating an existing filter, you must specify the correct name in <code>filterName</code>. Otherwise, the call fails because you cannot associate a second filter with a log group.</p>

#### `tagLogGroup`

``` purescript
tagLogGroup :: forall eff. Service -> TagLogGroupRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Adds or updates the specified tags for the specified log group.</p> <p>To list the tags for a log group, use <a>ListTagsLogGroup</a>. To remove tags, use <a>UntagLogGroup</a>.</p> <p>For more information about tags, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/log-group-tagging.html">Tag Log Groups in Amazon CloudWatch Logs</a> in the <i>Amazon CloudWatch Logs User Guide</i>.</p>

#### `testMetricFilter`

``` purescript
testMetricFilter :: forall eff. Service -> TestMetricFilterRequest -> Aff (exception :: EXCEPTION | eff) TestMetricFilterResponse
```

<p>Tests the filter pattern of a metric filter against a sample of log event messages. You can use this operation to validate the correctness of a metric filter pattern.</p>

#### `untagLogGroup`

``` purescript
untagLogGroup :: forall eff. Service -> UntagLogGroupRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Removes the specified tags from the specified log group.</p> <p>To list the tags for a log group, use <a>ListTagsLogGroup</a>. To add tags, use <a>UntagLogGroup</a>.</p>


