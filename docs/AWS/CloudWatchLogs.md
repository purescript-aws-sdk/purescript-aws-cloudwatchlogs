## Module AWS.CloudWatchLogs

<p>You can use Amazon CloudWatch Logs to monitor, store, and access your log files from Amazon EC2 instances, AWS CloudTrail, or other sources. You can then retrieve the associated log data from CloudWatch Logs using the CloudWatch console, CloudWatch Logs commands in the AWS CLI, CloudWatch Logs API, or CloudWatch Logs SDK.</p> <p>You can use CloudWatch Logs to:</p> <ul> <li> <p> <b>Monitor logs from EC2 instances in real-time</b>: You can use CloudWatch Logs to monitor applications and systems using log data. For example, CloudWatch Logs can track the number of errors that occur in your application logs and send you a notification whenever the rate of errors exceeds a threshold that you specify. CloudWatch Logs uses your log data for monitoring; so, no code changes are required. For example, you can monitor application logs for specific literal terms (such as "NullReferenceException") or count the number of occurrences of a literal term at a particular position in log data (such as "404" status codes in an Apache access log). When the term you are searching for is found, CloudWatch Logs reports the data to a CloudWatch metric that you specify.</p> </li> <li> <p> <b>Monitor AWS CloudTrail logged events</b>: You can create alarms in CloudWatch and receive notifications of particular API activity as captured by CloudTrail and use the notification to perform troubleshooting.</p> </li> <li> <p> <b>Archive log data</b>: You can use CloudWatch Logs to store your log data in highly durable storage. You can change the log retention setting so that any log events older than this setting are automatically deleted. The CloudWatch Logs agent makes it easy to quickly send both rotated and non-rotated log data off of a host and into the log service. You can then access the raw log data when you need it.</p> </li> </ul>

#### `associateKmsKey`

``` purescript
associateKmsKey :: forall eff. AssociateKmsKeyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Associates the specified AWS Key Management Service (AWS KMS) customer master key (CMK) with the specified log group.</p> <p>Associating an AWS KMS CMK with a log group overrides any existing associations between the log group and a CMK. After a CMK is associated with a log group, all newly ingested data for the log group is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested.</p> <p>Note that it can take up to 5 minutes for this operation to take effect.</p> <p>If you attempt to associate a CMK with a log group but the CMK does not exist or the CMK is disabled, you will receive an <code>InvalidParameterException</code> error. </p>

#### `cancelExportTask`

``` purescript
cancelExportTask :: forall eff. CancelExportTaskRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Cancels the specified export task.</p> <p>The task must be in the <code>PENDING</code> or <code>RUNNING</code> state.</p>

#### `createExportTask`

``` purescript
createExportTask :: forall eff. CreateExportTaskRequest -> Aff (exception :: EXCEPTION | eff) CreateExportTaskResponse
```

<p>Creates an export task, which allows you to efficiently export data from a log group to an Amazon S3 bucket.</p> <p>This is an asynchronous call. If all the required information is provided, this operation initiates an export task and responds with the ID of the task. After the task has started, you can use <a>DescribeExportTasks</a> to get the status of the export task. Each account can only have one active (<code>RUNNING</code> or <code>PENDING</code>) export task at a time. To cancel an export task, use <a>CancelExportTask</a>.</p> <p>You can export logs from multiple log groups or multiple time ranges to the same S3 bucket. To separate out log data for each export task, you can specify a prefix to be used as the Amazon S3 key prefix for all exported objects.</p>

#### `createLogGroup`

``` purescript
createLogGroup :: forall eff. CreateLogGroupRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Creates a log group with the specified name.</p> <p>You can create up to 5000 log groups per account.</p> <p>You must use the following guidelines when naming a log group:</p> <ul> <li> <p>Log group names must be unique within a region for an AWS account.</p> </li> <li> <p>Log group names can be between 1 and 512 characters long.</p> </li> <li> <p>Log group names consist of the following characters: a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).</p> </li> </ul> <p>If you associate a AWS Key Management Service (AWS KMS) customer master key (CMK) with the log group, ingested data is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested.</p> <p>If you attempt to associate a CMK with the log group but the CMK does not exist or the CMK is disabled, you will receive an <code>InvalidParameterException</code> error. </p>

#### `createLogStream`

``` purescript
createLogStream :: forall eff. CreateLogStreamRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Creates a log stream for the specified log group.</p> <p>There is no limit on the number of log streams that you can create for a log group.</p> <p>You must use the following guidelines when naming a log stream:</p> <ul> <li> <p>Log stream names must be unique within the log group.</p> </li> <li> <p>Log stream names can be between 1 and 512 characters long.</p> </li> <li> <p>The ':' (colon) and '*' (asterisk) characters are not allowed.</p> </li> </ul>

#### `deleteDestination`

``` purescript
deleteDestination :: forall eff. DeleteDestinationRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified destination, and eventually disables all the subscription filters that publish to it. This operation does not delete the physical resource encapsulated by the destination.</p>

#### `deleteLogGroup`

``` purescript
deleteLogGroup :: forall eff. DeleteLogGroupRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified log group and permanently deletes all the archived log events associated with the log group.</p>

#### `deleteLogStream`

``` purescript
deleteLogStream :: forall eff. DeleteLogStreamRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream.</p>

#### `deleteMetricFilter`

``` purescript
deleteMetricFilter :: forall eff. DeleteMetricFilterRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified metric filter.</p>

#### `deleteResourcePolicy`

``` purescript
deleteResourcePolicy :: forall eff. DeleteResourcePolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a resource policy from this account. This revokes the access of the identities in that policy to put log events to this account.</p>

#### `deleteRetentionPolicy`

``` purescript
deleteRetentionPolicy :: forall eff. DeleteRetentionPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified retention policy.</p> <p>Log events do not expire if they belong to log groups without a retention policy.</p>

#### `deleteSubscriptionFilter`

``` purescript
deleteSubscriptionFilter :: forall eff. DeleteSubscriptionFilterRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified subscription filter.</p>

#### `describeDestinations`

``` purescript
describeDestinations :: forall eff. DescribeDestinationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeDestinationsResponse
```

<p>Lists all your destinations. The results are ASCII-sorted by destination name.</p>

#### `describeExportTasks`

``` purescript
describeExportTasks :: forall eff. DescribeExportTasksRequest -> Aff (exception :: EXCEPTION | eff) DescribeExportTasksResponse
```

<p>Lists the specified export tasks. You can list all your export tasks or filter the results based on task ID or task status.</p>

#### `describeLogGroups`

``` purescript
describeLogGroups :: forall eff. DescribeLogGroupsRequest -> Aff (exception :: EXCEPTION | eff) DescribeLogGroupsResponse
```

<p>Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.</p>

#### `describeLogStreams`

``` purescript
describeLogStreams :: forall eff. DescribeLogStreamsRequest -> Aff (exception :: EXCEPTION | eff) DescribeLogStreamsResponse
```

<p>Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered.</p> <p>This operation has a limit of five transactions per second, after which transactions are throttled.</p>

#### `describeMetricFilters`

``` purescript
describeMetricFilters :: forall eff. DescribeMetricFiltersRequest -> Aff (exception :: EXCEPTION | eff) DescribeMetricFiltersResponse
```

<p>Lists the specified metric filters. You can list all the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.</p>

#### `describeResourcePolicies`

``` purescript
describeResourcePolicies :: forall eff. DescribeResourcePoliciesRequest -> Aff (exception :: EXCEPTION | eff) DescribeResourcePoliciesResponse
```

<p>Lists the resource policies in this account.</p>

#### `describeSubscriptionFilters`

``` purescript
describeSubscriptionFilters :: forall eff. DescribeSubscriptionFiltersRequest -> Aff (exception :: EXCEPTION | eff) DescribeSubscriptionFiltersResponse
```

<p>Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.</p>

#### `disassociateKmsKey`

``` purescript
disassociateKmsKey :: forall eff. DisassociateKmsKeyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Disassociates the associated AWS Key Management Service (AWS KMS) customer master key (CMK) from the specified log group.</p> <p>After the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested.</p> <p>Note that it can take up to 5 minutes for this operation to take effect.</p>

#### `filterLogEvents`

``` purescript
filterLogEvents :: forall eff. FilterLogEventsRequest -> Aff (exception :: EXCEPTION | eff) FilterLogEventsResponse
```

<p>Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream.</p> <p>By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events), or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call.</p>

#### `getLogEvents`

``` purescript
getLogEvents :: forall eff. GetLogEventsRequest -> Aff (exception :: EXCEPTION | eff) GetLogEventsResponse
```

<p>Lists log events from the specified log stream. You can list all the log events or filter using a time range.</p> <p>By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). You can get additional log events by specifying one of the tokens in a subsequent call.</p>

#### `listTagsLogGroup`

``` purescript
listTagsLogGroup :: forall eff. ListTagsLogGroupRequest -> Aff (exception :: EXCEPTION | eff) ListTagsLogGroupResponse
```

<p>Lists the tags for the specified log group.</p>

#### `putDestination`

``` purescript
putDestination :: forall eff. PutDestinationRequest -> Aff (exception :: EXCEPTION | eff) PutDestinationResponse
```

<p>Creates or updates a destination. A destination encapsulates a physical resource (such as an Amazon Kinesis stream) and enables you to subscribe to a real-time stream of log events for a different account, ingested using <a>PutLogEvents</a>. Currently, the only supported physical resource is a Kinesis stream belonging to the same account as the destination.</p> <p>Through an access policy, a destination controls what is written to its Kinesis stream. By default, <code>PutDestination</code> does not set any access policy with the destination, which means a cross-account user cannot call <a>PutSubscriptionFilter</a> against this destination. To enable this, the destination owner must call <a>PutDestinationPolicy</a> after <code>PutDestination</code>.</p>

#### `putDestinationPolicy`

``` purescript
putDestinationPolicy :: forall eff. PutDestinationPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Creates or updates an access policy associated with an existing destination. An access policy is an <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html">IAM policy document</a> that is used to authorize claims to register a subscription filter against a given destination.</p>

#### `putLogEvents`

``` purescript
putLogEvents :: forall eff. PutLogEventsRequest -> Aff (exception :: EXCEPTION | eff) PutLogEventsResponse
```

<p>Uploads a batch of log events to the specified log stream.</p> <p>You must include the sequence token obtained from the response of the previous call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token using <a>DescribeLogStreams</a>. If you call <code>PutLogEvents</code> twice within a narrow time period using the same value for <code>sequenceToken</code>, both calls may be successful, or one may be rejected.</p> <p>The batch of events must satisfy the following constraints:</p> <ul> <li> <p>The maximum batch size is 1,048,576 bytes, and this size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.</p> </li> <li> <p>None of the log events in the batch can be more than 2 hours in the future.</p> </li> <li> <p>None of the log events in the batch can be older than 14 days or the retention period of the log group.</p> </li> <li> <p>The log events in the batch must be in chronological ordered by their time stamp (the time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC).</p> </li> <li> <p>The maximum number of log events in a batch is 10,000.</p> </li> <li> <p>A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.</p> </li> </ul>

#### `putMetricFilter`

``` purescript
putMetricFilter :: forall eff. PutMetricFilterRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Creates or updates a metric filter and associates it with the specified log group. Metric filters allow you to configure rules to extract metric data from log events ingested through <a>PutLogEvents</a>.</p> <p>The maximum number of metric filters that can be associated with a log group is 100.</p>

#### `putResourcePolicy`

``` purescript
putResourcePolicy :: forall eff. PutResourcePolicyRequest -> Aff (exception :: EXCEPTION | eff) PutResourcePolicyResponse
```

<p>Creates or updates a resource policy allowing other AWS services to put log events to this account, such as Amazon Route 53. An account can have up to 50 resource policies per region.</p>

#### `putRetentionPolicy`

``` purescript
putRetentionPolicy :: forall eff. PutRetentionPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the retention of the specified log group. A retention policy allows you to configure the number of days for which to retain log events in the specified log group.</p>

#### `putSubscriptionFilter`

``` purescript
putSubscriptionFilter :: forall eff. PutSubscriptionFilterRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Creates or updates a subscription filter and associates it with the specified log group. Subscription filters allow you to subscribe to a real-time stream of log events ingested through <a>PutLogEvents</a> and have them delivered to a specific destination. Currently, the supported destinations are:</p> <ul> <li> <p>An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.</p> </li> <li> <p>A logical destination that belongs to a different account, for cross-account delivery.</p> </li> <li> <p>An Amazon Kinesis Firehose delivery stream that belongs to the same account as the subscription filter, for same-account delivery.</p> </li> <li> <p>An AWS Lambda function that belongs to the same account as the subscription filter, for same-account delivery.</p> </li> </ul> <p>There can only be one subscription filter associated with a log group. If you are updating an existing filter, you must specify the correct name in <code>filterName</code>. Otherwise, the call fails because you cannot associate a second filter with a log group.</p>

#### `tagLogGroup`

``` purescript
tagLogGroup :: forall eff. TagLogGroupRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Adds or updates the specified tags for the specified log group.</p> <p>To list the tags for a log group, use <a>ListTagsLogGroup</a>. To remove tags, use <a>UntagLogGroup</a>.</p> <p>For more information about tags, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/log-group-tagging.html">Tag Log Groups in Amazon CloudWatch Logs</a> in the <i>Amazon CloudWatch Logs User Guide</i>.</p>

#### `testMetricFilter`

``` purescript
testMetricFilter :: forall eff. TestMetricFilterRequest -> Aff (exception :: EXCEPTION | eff) TestMetricFilterResponse
```

<p>Tests the filter pattern of a metric filter against a sample of log event messages. You can use this operation to validate the correctness of a metric filter pattern.</p>

#### `untagLogGroup`

``` purescript
untagLogGroup :: forall eff. UntagLogGroupRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Removes the specified tags from the specified log group.</p> <p>To list the tags for a log group, use <a>ListTagsLogGroup</a>. To add tags, use <a>UntagLogGroup</a>.</p>

#### `AccessPolicy`

``` purescript
newtype AccessPolicy
  = AccessPolicy String
```

##### Instances
``` purescript
Newtype AccessPolicy _
Generic AccessPolicy _
Show AccessPolicy
Decode AccessPolicy
Encode AccessPolicy
```

#### `Arn`

``` purescript
newtype Arn
  = Arn String
```

##### Instances
``` purescript
Newtype Arn _
Generic Arn _
Show Arn
Decode Arn
Encode Arn
```

#### `AssociateKmsKeyRequest`

``` purescript
newtype AssociateKmsKeyRequest
  = AssociateKmsKeyRequest { logGroupName :: LogGroupName, kmsKeyId :: KmsKeyId }
```

##### Instances
``` purescript
Newtype AssociateKmsKeyRequest _
Generic AssociateKmsKeyRequest _
Show AssociateKmsKeyRequest
Decode AssociateKmsKeyRequest
Encode AssociateKmsKeyRequest
```

#### `newAssociateKmsKeyRequest`

``` purescript
newAssociateKmsKeyRequest :: KmsKeyId -> LogGroupName -> AssociateKmsKeyRequest
```

Constructs AssociateKmsKeyRequest from required parameters

#### `newAssociateKmsKeyRequest'`

``` purescript
newAssociateKmsKeyRequest' :: KmsKeyId -> LogGroupName -> ({ logGroupName :: LogGroupName, kmsKeyId :: KmsKeyId } -> { logGroupName :: LogGroupName, kmsKeyId :: KmsKeyId }) -> AssociateKmsKeyRequest
```

Constructs AssociateKmsKeyRequest's fields from required parameters

#### `CancelExportTaskRequest`

``` purescript
newtype CancelExportTaskRequest
  = CancelExportTaskRequest { taskId :: ExportTaskId }
```

##### Instances
``` purescript
Newtype CancelExportTaskRequest _
Generic CancelExportTaskRequest _
Show CancelExportTaskRequest
Decode CancelExportTaskRequest
Encode CancelExportTaskRequest
```

#### `newCancelExportTaskRequest`

``` purescript
newCancelExportTaskRequest :: ExportTaskId -> CancelExportTaskRequest
```

Constructs CancelExportTaskRequest from required parameters

#### `newCancelExportTaskRequest'`

``` purescript
newCancelExportTaskRequest' :: ExportTaskId -> ({ taskId :: ExportTaskId } -> { taskId :: ExportTaskId }) -> CancelExportTaskRequest
```

Constructs CancelExportTaskRequest's fields from required parameters

#### `CreateExportTaskRequest`

``` purescript
newtype CreateExportTaskRequest
  = CreateExportTaskRequest { taskName :: NullOrUndefined (ExportTaskName), logGroupName :: LogGroupName, logStreamNamePrefix :: NullOrUndefined (LogStreamName), from :: Timestamp, to :: Timestamp, destination :: ExportDestinationBucket, destinationPrefix :: NullOrUndefined (ExportDestinationPrefix) }
```

##### Instances
``` purescript
Newtype CreateExportTaskRequest _
Generic CreateExportTaskRequest _
Show CreateExportTaskRequest
Decode CreateExportTaskRequest
Encode CreateExportTaskRequest
```

#### `newCreateExportTaskRequest`

``` purescript
newCreateExportTaskRequest :: ExportDestinationBucket -> Timestamp -> LogGroupName -> Timestamp -> CreateExportTaskRequest
```

Constructs CreateExportTaskRequest from required parameters

#### `newCreateExportTaskRequest'`

``` purescript
newCreateExportTaskRequest' :: ExportDestinationBucket -> Timestamp -> LogGroupName -> Timestamp -> ({ taskName :: NullOrUndefined (ExportTaskName), logGroupName :: LogGroupName, logStreamNamePrefix :: NullOrUndefined (LogStreamName), from :: Timestamp, to :: Timestamp, destination :: ExportDestinationBucket, destinationPrefix :: NullOrUndefined (ExportDestinationPrefix) } -> { taskName :: NullOrUndefined (ExportTaskName), logGroupName :: LogGroupName, logStreamNamePrefix :: NullOrUndefined (LogStreamName), from :: Timestamp, to :: Timestamp, destination :: ExportDestinationBucket, destinationPrefix :: NullOrUndefined (ExportDestinationPrefix) }) -> CreateExportTaskRequest
```

Constructs CreateExportTaskRequest's fields from required parameters

#### `CreateExportTaskResponse`

``` purescript
newtype CreateExportTaskResponse
  = CreateExportTaskResponse { taskId :: NullOrUndefined (ExportTaskId) }
```

##### Instances
``` purescript
Newtype CreateExportTaskResponse _
Generic CreateExportTaskResponse _
Show CreateExportTaskResponse
Decode CreateExportTaskResponse
Encode CreateExportTaskResponse
```

#### `newCreateExportTaskResponse`

``` purescript
newCreateExportTaskResponse :: CreateExportTaskResponse
```

Constructs CreateExportTaskResponse from required parameters

#### `newCreateExportTaskResponse'`

``` purescript
newCreateExportTaskResponse' :: ({ taskId :: NullOrUndefined (ExportTaskId) } -> { taskId :: NullOrUndefined (ExportTaskId) }) -> CreateExportTaskResponse
```

Constructs CreateExportTaskResponse's fields from required parameters

#### `CreateLogGroupRequest`

``` purescript
newtype CreateLogGroupRequest
  = CreateLogGroupRequest { logGroupName :: LogGroupName, kmsKeyId :: NullOrUndefined (KmsKeyId), tags :: NullOrUndefined (Tags) }
```

##### Instances
``` purescript
Newtype CreateLogGroupRequest _
Generic CreateLogGroupRequest _
Show CreateLogGroupRequest
Decode CreateLogGroupRequest
Encode CreateLogGroupRequest
```

#### `newCreateLogGroupRequest`

``` purescript
newCreateLogGroupRequest :: LogGroupName -> CreateLogGroupRequest
```

Constructs CreateLogGroupRequest from required parameters

#### `newCreateLogGroupRequest'`

``` purescript
newCreateLogGroupRequest' :: LogGroupName -> ({ logGroupName :: LogGroupName, kmsKeyId :: NullOrUndefined (KmsKeyId), tags :: NullOrUndefined (Tags) } -> { logGroupName :: LogGroupName, kmsKeyId :: NullOrUndefined (KmsKeyId), tags :: NullOrUndefined (Tags) }) -> CreateLogGroupRequest
```

Constructs CreateLogGroupRequest's fields from required parameters

#### `CreateLogStreamRequest`

``` purescript
newtype CreateLogStreamRequest
  = CreateLogStreamRequest { logGroupName :: LogGroupName, logStreamName :: LogStreamName }
```

##### Instances
``` purescript
Newtype CreateLogStreamRequest _
Generic CreateLogStreamRequest _
Show CreateLogStreamRequest
Decode CreateLogStreamRequest
Encode CreateLogStreamRequest
```

#### `newCreateLogStreamRequest`

``` purescript
newCreateLogStreamRequest :: LogGroupName -> LogStreamName -> CreateLogStreamRequest
```

Constructs CreateLogStreamRequest from required parameters

#### `newCreateLogStreamRequest'`

``` purescript
newCreateLogStreamRequest' :: LogGroupName -> LogStreamName -> ({ logGroupName :: LogGroupName, logStreamName :: LogStreamName } -> { logGroupName :: LogGroupName, logStreamName :: LogStreamName }) -> CreateLogStreamRequest
```

Constructs CreateLogStreamRequest's fields from required parameters

#### `DataAlreadyAcceptedException`

``` purescript
newtype DataAlreadyAcceptedException
  = DataAlreadyAcceptedException { expectedSequenceToken :: NullOrUndefined (SequenceToken) }
```

<p>The event was already logged.</p>

##### Instances
``` purescript
Newtype DataAlreadyAcceptedException _
Generic DataAlreadyAcceptedException _
Show DataAlreadyAcceptedException
Decode DataAlreadyAcceptedException
Encode DataAlreadyAcceptedException
```

#### `newDataAlreadyAcceptedException`

``` purescript
newDataAlreadyAcceptedException :: DataAlreadyAcceptedException
```

Constructs DataAlreadyAcceptedException from required parameters

#### `newDataAlreadyAcceptedException'`

``` purescript
newDataAlreadyAcceptedException' :: ({ expectedSequenceToken :: NullOrUndefined (SequenceToken) } -> { expectedSequenceToken :: NullOrUndefined (SequenceToken) }) -> DataAlreadyAcceptedException
```

Constructs DataAlreadyAcceptedException's fields from required parameters

#### `Days`

``` purescript
newtype Days
  = Days Int
```

<p>The number of days to retain the log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, and 3653.</p>

##### Instances
``` purescript
Newtype Days _
Generic Days _
Show Days
Decode Days
Encode Days
```

#### `DefaultValue`

``` purescript
newtype DefaultValue
  = DefaultValue Number
```

##### Instances
``` purescript
Newtype DefaultValue _
Generic DefaultValue _
Show DefaultValue
Decode DefaultValue
Encode DefaultValue
```

#### `DeleteDestinationRequest`

``` purescript
newtype DeleteDestinationRequest
  = DeleteDestinationRequest { destinationName :: DestinationName }
```

##### Instances
``` purescript
Newtype DeleteDestinationRequest _
Generic DeleteDestinationRequest _
Show DeleteDestinationRequest
Decode DeleteDestinationRequest
Encode DeleteDestinationRequest
```

#### `newDeleteDestinationRequest`

``` purescript
newDeleteDestinationRequest :: DestinationName -> DeleteDestinationRequest
```

Constructs DeleteDestinationRequest from required parameters

#### `newDeleteDestinationRequest'`

``` purescript
newDeleteDestinationRequest' :: DestinationName -> ({ destinationName :: DestinationName } -> { destinationName :: DestinationName }) -> DeleteDestinationRequest
```

Constructs DeleteDestinationRequest's fields from required parameters

#### `DeleteLogGroupRequest`

``` purescript
newtype DeleteLogGroupRequest
  = DeleteLogGroupRequest { logGroupName :: LogGroupName }
```

##### Instances
``` purescript
Newtype DeleteLogGroupRequest _
Generic DeleteLogGroupRequest _
Show DeleteLogGroupRequest
Decode DeleteLogGroupRequest
Encode DeleteLogGroupRequest
```

#### `newDeleteLogGroupRequest`

``` purescript
newDeleteLogGroupRequest :: LogGroupName -> DeleteLogGroupRequest
```

Constructs DeleteLogGroupRequest from required parameters

#### `newDeleteLogGroupRequest'`

``` purescript
newDeleteLogGroupRequest' :: LogGroupName -> ({ logGroupName :: LogGroupName } -> { logGroupName :: LogGroupName }) -> DeleteLogGroupRequest
```

Constructs DeleteLogGroupRequest's fields from required parameters

#### `DeleteLogStreamRequest`

``` purescript
newtype DeleteLogStreamRequest
  = DeleteLogStreamRequest { logGroupName :: LogGroupName, logStreamName :: LogStreamName }
```

##### Instances
``` purescript
Newtype DeleteLogStreamRequest _
Generic DeleteLogStreamRequest _
Show DeleteLogStreamRequest
Decode DeleteLogStreamRequest
Encode DeleteLogStreamRequest
```

#### `newDeleteLogStreamRequest`

``` purescript
newDeleteLogStreamRequest :: LogGroupName -> LogStreamName -> DeleteLogStreamRequest
```

Constructs DeleteLogStreamRequest from required parameters

#### `newDeleteLogStreamRequest'`

``` purescript
newDeleteLogStreamRequest' :: LogGroupName -> LogStreamName -> ({ logGroupName :: LogGroupName, logStreamName :: LogStreamName } -> { logGroupName :: LogGroupName, logStreamName :: LogStreamName }) -> DeleteLogStreamRequest
```

Constructs DeleteLogStreamRequest's fields from required parameters

#### `DeleteMetricFilterRequest`

``` purescript
newtype DeleteMetricFilterRequest
  = DeleteMetricFilterRequest { logGroupName :: LogGroupName, filterName :: FilterName }
```

##### Instances
``` purescript
Newtype DeleteMetricFilterRequest _
Generic DeleteMetricFilterRequest _
Show DeleteMetricFilterRequest
Decode DeleteMetricFilterRequest
Encode DeleteMetricFilterRequest
```

#### `newDeleteMetricFilterRequest`

``` purescript
newDeleteMetricFilterRequest :: FilterName -> LogGroupName -> DeleteMetricFilterRequest
```

Constructs DeleteMetricFilterRequest from required parameters

#### `newDeleteMetricFilterRequest'`

``` purescript
newDeleteMetricFilterRequest' :: FilterName -> LogGroupName -> ({ logGroupName :: LogGroupName, filterName :: FilterName } -> { logGroupName :: LogGroupName, filterName :: FilterName }) -> DeleteMetricFilterRequest
```

Constructs DeleteMetricFilterRequest's fields from required parameters

#### `DeleteResourcePolicyRequest`

``` purescript
newtype DeleteResourcePolicyRequest
  = DeleteResourcePolicyRequest { policyName :: NullOrUndefined (PolicyName) }
```

##### Instances
``` purescript
Newtype DeleteResourcePolicyRequest _
Generic DeleteResourcePolicyRequest _
Show DeleteResourcePolicyRequest
Decode DeleteResourcePolicyRequest
Encode DeleteResourcePolicyRequest
```

#### `newDeleteResourcePolicyRequest`

``` purescript
newDeleteResourcePolicyRequest :: DeleteResourcePolicyRequest
```

Constructs DeleteResourcePolicyRequest from required parameters

#### `newDeleteResourcePolicyRequest'`

``` purescript
newDeleteResourcePolicyRequest' :: ({ policyName :: NullOrUndefined (PolicyName) } -> { policyName :: NullOrUndefined (PolicyName) }) -> DeleteResourcePolicyRequest
```

Constructs DeleteResourcePolicyRequest's fields from required parameters

#### `DeleteRetentionPolicyRequest`

``` purescript
newtype DeleteRetentionPolicyRequest
  = DeleteRetentionPolicyRequest { logGroupName :: LogGroupName }
```

##### Instances
``` purescript
Newtype DeleteRetentionPolicyRequest _
Generic DeleteRetentionPolicyRequest _
Show DeleteRetentionPolicyRequest
Decode DeleteRetentionPolicyRequest
Encode DeleteRetentionPolicyRequest
```

#### `newDeleteRetentionPolicyRequest`

``` purescript
newDeleteRetentionPolicyRequest :: LogGroupName -> DeleteRetentionPolicyRequest
```

Constructs DeleteRetentionPolicyRequest from required parameters

#### `newDeleteRetentionPolicyRequest'`

``` purescript
newDeleteRetentionPolicyRequest' :: LogGroupName -> ({ logGroupName :: LogGroupName } -> { logGroupName :: LogGroupName }) -> DeleteRetentionPolicyRequest
```

Constructs DeleteRetentionPolicyRequest's fields from required parameters

#### `DeleteSubscriptionFilterRequest`

``` purescript
newtype DeleteSubscriptionFilterRequest
  = DeleteSubscriptionFilterRequest { logGroupName :: LogGroupName, filterName :: FilterName }
```

##### Instances
``` purescript
Newtype DeleteSubscriptionFilterRequest _
Generic DeleteSubscriptionFilterRequest _
Show DeleteSubscriptionFilterRequest
Decode DeleteSubscriptionFilterRequest
Encode DeleteSubscriptionFilterRequest
```

#### `newDeleteSubscriptionFilterRequest`

``` purescript
newDeleteSubscriptionFilterRequest :: FilterName -> LogGroupName -> DeleteSubscriptionFilterRequest
```

Constructs DeleteSubscriptionFilterRequest from required parameters

#### `newDeleteSubscriptionFilterRequest'`

``` purescript
newDeleteSubscriptionFilterRequest' :: FilterName -> LogGroupName -> ({ logGroupName :: LogGroupName, filterName :: FilterName } -> { logGroupName :: LogGroupName, filterName :: FilterName }) -> DeleteSubscriptionFilterRequest
```

Constructs DeleteSubscriptionFilterRequest's fields from required parameters

#### `Descending`

``` purescript
newtype Descending
  = Descending Boolean
```

##### Instances
``` purescript
Newtype Descending _
Generic Descending _
Show Descending
Decode Descending
Encode Descending
```

#### `DescribeDestinationsRequest`

``` purescript
newtype DescribeDestinationsRequest
  = DescribeDestinationsRequest { "DestinationNamePrefix" :: NullOrUndefined (DestinationName), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) }
```

##### Instances
``` purescript
Newtype DescribeDestinationsRequest _
Generic DescribeDestinationsRequest _
Show DescribeDestinationsRequest
Decode DescribeDestinationsRequest
Encode DescribeDestinationsRequest
```

#### `newDescribeDestinationsRequest`

``` purescript
newDescribeDestinationsRequest :: DescribeDestinationsRequest
```

Constructs DescribeDestinationsRequest from required parameters

#### `newDescribeDestinationsRequest'`

``` purescript
newDescribeDestinationsRequest' :: ({ "DestinationNamePrefix" :: NullOrUndefined (DestinationName), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) } -> { "DestinationNamePrefix" :: NullOrUndefined (DestinationName), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) }) -> DescribeDestinationsRequest
```

Constructs DescribeDestinationsRequest's fields from required parameters

#### `DescribeDestinationsResponse`

``` purescript
newtype DescribeDestinationsResponse
  = DescribeDestinationsResponse { destinations :: NullOrUndefined (Destinations), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeDestinationsResponse _
Generic DescribeDestinationsResponse _
Show DescribeDestinationsResponse
Decode DescribeDestinationsResponse
Encode DescribeDestinationsResponse
```

#### `newDescribeDestinationsResponse`

``` purescript
newDescribeDestinationsResponse :: DescribeDestinationsResponse
```

Constructs DescribeDestinationsResponse from required parameters

#### `newDescribeDestinationsResponse'`

``` purescript
newDescribeDestinationsResponse' :: ({ destinations :: NullOrUndefined (Destinations), nextToken :: NullOrUndefined (NextToken) } -> { destinations :: NullOrUndefined (Destinations), nextToken :: NullOrUndefined (NextToken) }) -> DescribeDestinationsResponse
```

Constructs DescribeDestinationsResponse's fields from required parameters

#### `DescribeExportTasksRequest`

``` purescript
newtype DescribeExportTasksRequest
  = DescribeExportTasksRequest { taskId :: NullOrUndefined (ExportTaskId), statusCode :: NullOrUndefined (ExportTaskStatusCode), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) }
```

##### Instances
``` purescript
Newtype DescribeExportTasksRequest _
Generic DescribeExportTasksRequest _
Show DescribeExportTasksRequest
Decode DescribeExportTasksRequest
Encode DescribeExportTasksRequest
```

#### `newDescribeExportTasksRequest`

``` purescript
newDescribeExportTasksRequest :: DescribeExportTasksRequest
```

Constructs DescribeExportTasksRequest from required parameters

#### `newDescribeExportTasksRequest'`

``` purescript
newDescribeExportTasksRequest' :: ({ taskId :: NullOrUndefined (ExportTaskId), statusCode :: NullOrUndefined (ExportTaskStatusCode), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) } -> { taskId :: NullOrUndefined (ExportTaskId), statusCode :: NullOrUndefined (ExportTaskStatusCode), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) }) -> DescribeExportTasksRequest
```

Constructs DescribeExportTasksRequest's fields from required parameters

#### `DescribeExportTasksResponse`

``` purescript
newtype DescribeExportTasksResponse
  = DescribeExportTasksResponse { exportTasks :: NullOrUndefined (ExportTasks), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeExportTasksResponse _
Generic DescribeExportTasksResponse _
Show DescribeExportTasksResponse
Decode DescribeExportTasksResponse
Encode DescribeExportTasksResponse
```

#### `newDescribeExportTasksResponse`

``` purescript
newDescribeExportTasksResponse :: DescribeExportTasksResponse
```

Constructs DescribeExportTasksResponse from required parameters

#### `newDescribeExportTasksResponse'`

``` purescript
newDescribeExportTasksResponse' :: ({ exportTasks :: NullOrUndefined (ExportTasks), nextToken :: NullOrUndefined (NextToken) } -> { exportTasks :: NullOrUndefined (ExportTasks), nextToken :: NullOrUndefined (NextToken) }) -> DescribeExportTasksResponse
```

Constructs DescribeExportTasksResponse's fields from required parameters

#### `DescribeLimit`

``` purescript
newtype DescribeLimit
  = DescribeLimit Int
```

##### Instances
``` purescript
Newtype DescribeLimit _
Generic DescribeLimit _
Show DescribeLimit
Decode DescribeLimit
Encode DescribeLimit
```

#### `DescribeLogGroupsRequest`

``` purescript
newtype DescribeLogGroupsRequest
  = DescribeLogGroupsRequest { logGroupNamePrefix :: NullOrUndefined (LogGroupName), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) }
```

##### Instances
``` purescript
Newtype DescribeLogGroupsRequest _
Generic DescribeLogGroupsRequest _
Show DescribeLogGroupsRequest
Decode DescribeLogGroupsRequest
Encode DescribeLogGroupsRequest
```

#### `newDescribeLogGroupsRequest`

``` purescript
newDescribeLogGroupsRequest :: DescribeLogGroupsRequest
```

Constructs DescribeLogGroupsRequest from required parameters

#### `newDescribeLogGroupsRequest'`

``` purescript
newDescribeLogGroupsRequest' :: ({ logGroupNamePrefix :: NullOrUndefined (LogGroupName), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) } -> { logGroupNamePrefix :: NullOrUndefined (LogGroupName), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) }) -> DescribeLogGroupsRequest
```

Constructs DescribeLogGroupsRequest's fields from required parameters

#### `DescribeLogGroupsResponse`

``` purescript
newtype DescribeLogGroupsResponse
  = DescribeLogGroupsResponse { logGroups :: NullOrUndefined (LogGroups), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeLogGroupsResponse _
Generic DescribeLogGroupsResponse _
Show DescribeLogGroupsResponse
Decode DescribeLogGroupsResponse
Encode DescribeLogGroupsResponse
```

#### `newDescribeLogGroupsResponse`

``` purescript
newDescribeLogGroupsResponse :: DescribeLogGroupsResponse
```

Constructs DescribeLogGroupsResponse from required parameters

#### `newDescribeLogGroupsResponse'`

``` purescript
newDescribeLogGroupsResponse' :: ({ logGroups :: NullOrUndefined (LogGroups), nextToken :: NullOrUndefined (NextToken) } -> { logGroups :: NullOrUndefined (LogGroups), nextToken :: NullOrUndefined (NextToken) }) -> DescribeLogGroupsResponse
```

Constructs DescribeLogGroupsResponse's fields from required parameters

#### `DescribeLogStreamsRequest`

``` purescript
newtype DescribeLogStreamsRequest
  = DescribeLogStreamsRequest { logGroupName :: LogGroupName, logStreamNamePrefix :: NullOrUndefined (LogStreamName), orderBy :: NullOrUndefined (OrderBy), descending :: NullOrUndefined (Descending), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) }
```

##### Instances
``` purescript
Newtype DescribeLogStreamsRequest _
Generic DescribeLogStreamsRequest _
Show DescribeLogStreamsRequest
Decode DescribeLogStreamsRequest
Encode DescribeLogStreamsRequest
```

#### `newDescribeLogStreamsRequest`

``` purescript
newDescribeLogStreamsRequest :: LogGroupName -> DescribeLogStreamsRequest
```

Constructs DescribeLogStreamsRequest from required parameters

#### `newDescribeLogStreamsRequest'`

``` purescript
newDescribeLogStreamsRequest' :: LogGroupName -> ({ logGroupName :: LogGroupName, logStreamNamePrefix :: NullOrUndefined (LogStreamName), orderBy :: NullOrUndefined (OrderBy), descending :: NullOrUndefined (Descending), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) } -> { logGroupName :: LogGroupName, logStreamNamePrefix :: NullOrUndefined (LogStreamName), orderBy :: NullOrUndefined (OrderBy), descending :: NullOrUndefined (Descending), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) }) -> DescribeLogStreamsRequest
```

Constructs DescribeLogStreamsRequest's fields from required parameters

#### `DescribeLogStreamsResponse`

``` purescript
newtype DescribeLogStreamsResponse
  = DescribeLogStreamsResponse { logStreams :: NullOrUndefined (LogStreams), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeLogStreamsResponse _
Generic DescribeLogStreamsResponse _
Show DescribeLogStreamsResponse
Decode DescribeLogStreamsResponse
Encode DescribeLogStreamsResponse
```

#### `newDescribeLogStreamsResponse`

``` purescript
newDescribeLogStreamsResponse :: DescribeLogStreamsResponse
```

Constructs DescribeLogStreamsResponse from required parameters

#### `newDescribeLogStreamsResponse'`

``` purescript
newDescribeLogStreamsResponse' :: ({ logStreams :: NullOrUndefined (LogStreams), nextToken :: NullOrUndefined (NextToken) } -> { logStreams :: NullOrUndefined (LogStreams), nextToken :: NullOrUndefined (NextToken) }) -> DescribeLogStreamsResponse
```

Constructs DescribeLogStreamsResponse's fields from required parameters

#### `DescribeMetricFiltersRequest`

``` purescript
newtype DescribeMetricFiltersRequest
  = DescribeMetricFiltersRequest { logGroupName :: NullOrUndefined (LogGroupName), filterNamePrefix :: NullOrUndefined (FilterName), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit), metricName :: NullOrUndefined (MetricName), metricNamespace :: NullOrUndefined (MetricNamespace) }
```

##### Instances
``` purescript
Newtype DescribeMetricFiltersRequest _
Generic DescribeMetricFiltersRequest _
Show DescribeMetricFiltersRequest
Decode DescribeMetricFiltersRequest
Encode DescribeMetricFiltersRequest
```

#### `newDescribeMetricFiltersRequest`

``` purescript
newDescribeMetricFiltersRequest :: DescribeMetricFiltersRequest
```

Constructs DescribeMetricFiltersRequest from required parameters

#### `newDescribeMetricFiltersRequest'`

``` purescript
newDescribeMetricFiltersRequest' :: ({ logGroupName :: NullOrUndefined (LogGroupName), filterNamePrefix :: NullOrUndefined (FilterName), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit), metricName :: NullOrUndefined (MetricName), metricNamespace :: NullOrUndefined (MetricNamespace) } -> { logGroupName :: NullOrUndefined (LogGroupName), filterNamePrefix :: NullOrUndefined (FilterName), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit), metricName :: NullOrUndefined (MetricName), metricNamespace :: NullOrUndefined (MetricNamespace) }) -> DescribeMetricFiltersRequest
```

Constructs DescribeMetricFiltersRequest's fields from required parameters

#### `DescribeMetricFiltersResponse`

``` purescript
newtype DescribeMetricFiltersResponse
  = DescribeMetricFiltersResponse { metricFilters :: NullOrUndefined (MetricFilters), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeMetricFiltersResponse _
Generic DescribeMetricFiltersResponse _
Show DescribeMetricFiltersResponse
Decode DescribeMetricFiltersResponse
Encode DescribeMetricFiltersResponse
```

#### `newDescribeMetricFiltersResponse`

``` purescript
newDescribeMetricFiltersResponse :: DescribeMetricFiltersResponse
```

Constructs DescribeMetricFiltersResponse from required parameters

#### `newDescribeMetricFiltersResponse'`

``` purescript
newDescribeMetricFiltersResponse' :: ({ metricFilters :: NullOrUndefined (MetricFilters), nextToken :: NullOrUndefined (NextToken) } -> { metricFilters :: NullOrUndefined (MetricFilters), nextToken :: NullOrUndefined (NextToken) }) -> DescribeMetricFiltersResponse
```

Constructs DescribeMetricFiltersResponse's fields from required parameters

#### `DescribeResourcePoliciesRequest`

``` purescript
newtype DescribeResourcePoliciesRequest
  = DescribeResourcePoliciesRequest { nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) }
```

##### Instances
``` purescript
Newtype DescribeResourcePoliciesRequest _
Generic DescribeResourcePoliciesRequest _
Show DescribeResourcePoliciesRequest
Decode DescribeResourcePoliciesRequest
Encode DescribeResourcePoliciesRequest
```

#### `newDescribeResourcePoliciesRequest`

``` purescript
newDescribeResourcePoliciesRequest :: DescribeResourcePoliciesRequest
```

Constructs DescribeResourcePoliciesRequest from required parameters

#### `newDescribeResourcePoliciesRequest'`

``` purescript
newDescribeResourcePoliciesRequest' :: ({ nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) } -> { nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) }) -> DescribeResourcePoliciesRequest
```

Constructs DescribeResourcePoliciesRequest's fields from required parameters

#### `DescribeResourcePoliciesResponse`

``` purescript
newtype DescribeResourcePoliciesResponse
  = DescribeResourcePoliciesResponse { resourcePolicies :: NullOrUndefined (ResourcePolicies), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeResourcePoliciesResponse _
Generic DescribeResourcePoliciesResponse _
Show DescribeResourcePoliciesResponse
Decode DescribeResourcePoliciesResponse
Encode DescribeResourcePoliciesResponse
```

#### `newDescribeResourcePoliciesResponse`

``` purescript
newDescribeResourcePoliciesResponse :: DescribeResourcePoliciesResponse
```

Constructs DescribeResourcePoliciesResponse from required parameters

#### `newDescribeResourcePoliciesResponse'`

``` purescript
newDescribeResourcePoliciesResponse' :: ({ resourcePolicies :: NullOrUndefined (ResourcePolicies), nextToken :: NullOrUndefined (NextToken) } -> { resourcePolicies :: NullOrUndefined (ResourcePolicies), nextToken :: NullOrUndefined (NextToken) }) -> DescribeResourcePoliciesResponse
```

Constructs DescribeResourcePoliciesResponse's fields from required parameters

#### `DescribeSubscriptionFiltersRequest`

``` purescript
newtype DescribeSubscriptionFiltersRequest
  = DescribeSubscriptionFiltersRequest { logGroupName :: LogGroupName, filterNamePrefix :: NullOrUndefined (FilterName), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) }
```

##### Instances
``` purescript
Newtype DescribeSubscriptionFiltersRequest _
Generic DescribeSubscriptionFiltersRequest _
Show DescribeSubscriptionFiltersRequest
Decode DescribeSubscriptionFiltersRequest
Encode DescribeSubscriptionFiltersRequest
```

#### `newDescribeSubscriptionFiltersRequest`

``` purescript
newDescribeSubscriptionFiltersRequest :: LogGroupName -> DescribeSubscriptionFiltersRequest
```

Constructs DescribeSubscriptionFiltersRequest from required parameters

#### `newDescribeSubscriptionFiltersRequest'`

``` purescript
newDescribeSubscriptionFiltersRequest' :: LogGroupName -> ({ logGroupName :: LogGroupName, filterNamePrefix :: NullOrUndefined (FilterName), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) } -> { logGroupName :: LogGroupName, filterNamePrefix :: NullOrUndefined (FilterName), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (DescribeLimit) }) -> DescribeSubscriptionFiltersRequest
```

Constructs DescribeSubscriptionFiltersRequest's fields from required parameters

#### `DescribeSubscriptionFiltersResponse`

``` purescript
newtype DescribeSubscriptionFiltersResponse
  = DescribeSubscriptionFiltersResponse { subscriptionFilters :: NullOrUndefined (SubscriptionFilters), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeSubscriptionFiltersResponse _
Generic DescribeSubscriptionFiltersResponse _
Show DescribeSubscriptionFiltersResponse
Decode DescribeSubscriptionFiltersResponse
Encode DescribeSubscriptionFiltersResponse
```

#### `newDescribeSubscriptionFiltersResponse`

``` purescript
newDescribeSubscriptionFiltersResponse :: DescribeSubscriptionFiltersResponse
```

Constructs DescribeSubscriptionFiltersResponse from required parameters

#### `newDescribeSubscriptionFiltersResponse'`

``` purescript
newDescribeSubscriptionFiltersResponse' :: ({ subscriptionFilters :: NullOrUndefined (SubscriptionFilters), nextToken :: NullOrUndefined (NextToken) } -> { subscriptionFilters :: NullOrUndefined (SubscriptionFilters), nextToken :: NullOrUndefined (NextToken) }) -> DescribeSubscriptionFiltersResponse
```

Constructs DescribeSubscriptionFiltersResponse's fields from required parameters

#### `Destination`

``` purescript
newtype Destination
  = Destination { destinationName :: NullOrUndefined (DestinationName), targetArn :: NullOrUndefined (TargetArn), roleArn :: NullOrUndefined (RoleArn), accessPolicy :: NullOrUndefined (AccessPolicy), arn :: NullOrUndefined (Arn), creationTime :: NullOrUndefined (Timestamp) }
```

<p>Represents a cross-account destination that receives subscription log events.</p>

##### Instances
``` purescript
Newtype Destination _
Generic Destination _
Show Destination
Decode Destination
Encode Destination
```

#### `newDestination`

``` purescript
newDestination :: Destination
```

Constructs Destination from required parameters

#### `newDestination'`

``` purescript
newDestination' :: ({ destinationName :: NullOrUndefined (DestinationName), targetArn :: NullOrUndefined (TargetArn), roleArn :: NullOrUndefined (RoleArn), accessPolicy :: NullOrUndefined (AccessPolicy), arn :: NullOrUndefined (Arn), creationTime :: NullOrUndefined (Timestamp) } -> { destinationName :: NullOrUndefined (DestinationName), targetArn :: NullOrUndefined (TargetArn), roleArn :: NullOrUndefined (RoleArn), accessPolicy :: NullOrUndefined (AccessPolicy), arn :: NullOrUndefined (Arn), creationTime :: NullOrUndefined (Timestamp) }) -> Destination
```

Constructs Destination's fields from required parameters

#### `DestinationArn`

``` purescript
newtype DestinationArn
  = DestinationArn String
```

##### Instances
``` purescript
Newtype DestinationArn _
Generic DestinationArn _
Show DestinationArn
Decode DestinationArn
Encode DestinationArn
```

#### `DestinationName`

``` purescript
newtype DestinationName
  = DestinationName String
```

##### Instances
``` purescript
Newtype DestinationName _
Generic DestinationName _
Show DestinationName
Decode DestinationName
Encode DestinationName
```

#### `Destinations`

``` purescript
newtype Destinations
  = Destinations (Array Destination)
```

##### Instances
``` purescript
Newtype Destinations _
Generic Destinations _
Show Destinations
Decode Destinations
Encode Destinations
```

#### `DisassociateKmsKeyRequest`

``` purescript
newtype DisassociateKmsKeyRequest
  = DisassociateKmsKeyRequest { logGroupName :: LogGroupName }
```

##### Instances
``` purescript
Newtype DisassociateKmsKeyRequest _
Generic DisassociateKmsKeyRequest _
Show DisassociateKmsKeyRequest
Decode DisassociateKmsKeyRequest
Encode DisassociateKmsKeyRequest
```

#### `newDisassociateKmsKeyRequest`

``` purescript
newDisassociateKmsKeyRequest :: LogGroupName -> DisassociateKmsKeyRequest
```

Constructs DisassociateKmsKeyRequest from required parameters

#### `newDisassociateKmsKeyRequest'`

``` purescript
newDisassociateKmsKeyRequest' :: LogGroupName -> ({ logGroupName :: LogGroupName } -> { logGroupName :: LogGroupName }) -> DisassociateKmsKeyRequest
```

Constructs DisassociateKmsKeyRequest's fields from required parameters

#### `Distribution`

``` purescript
newtype Distribution
  = Distribution String
```

<p>The method used to distribute log data to the destination, which can be either random or grouped by log stream.</p>

##### Instances
``` purescript
Newtype Distribution _
Generic Distribution _
Show Distribution
Decode Distribution
Encode Distribution
```

#### `EventId`

``` purescript
newtype EventId
  = EventId String
```

##### Instances
``` purescript
Newtype EventId _
Generic EventId _
Show EventId
Decode EventId
Encode EventId
```

#### `EventMessage`

``` purescript
newtype EventMessage
  = EventMessage String
```

##### Instances
``` purescript
Newtype EventMessage _
Generic EventMessage _
Show EventMessage
Decode EventMessage
Encode EventMessage
```

#### `EventNumber`

``` purescript
newtype EventNumber
  = EventNumber Number
```

##### Instances
``` purescript
Newtype EventNumber _
Generic EventNumber _
Show EventNumber
Decode EventNumber
Encode EventNumber
```

#### `EventsLimit`

``` purescript
newtype EventsLimit
  = EventsLimit Int
```

##### Instances
``` purescript
Newtype EventsLimit _
Generic EventsLimit _
Show EventsLimit
Decode EventsLimit
Encode EventsLimit
```

#### `ExportDestinationBucket`

``` purescript
newtype ExportDestinationBucket
  = ExportDestinationBucket String
```

##### Instances
``` purescript
Newtype ExportDestinationBucket _
Generic ExportDestinationBucket _
Show ExportDestinationBucket
Decode ExportDestinationBucket
Encode ExportDestinationBucket
```

#### `ExportDestinationPrefix`

``` purescript
newtype ExportDestinationPrefix
  = ExportDestinationPrefix String
```

##### Instances
``` purescript
Newtype ExportDestinationPrefix _
Generic ExportDestinationPrefix _
Show ExportDestinationPrefix
Decode ExportDestinationPrefix
Encode ExportDestinationPrefix
```

#### `ExportTask`

``` purescript
newtype ExportTask
  = ExportTask { taskId :: NullOrUndefined (ExportTaskId), taskName :: NullOrUndefined (ExportTaskName), logGroupName :: NullOrUndefined (LogGroupName), from :: NullOrUndefined (Timestamp), to :: NullOrUndefined (Timestamp), destination :: NullOrUndefined (ExportDestinationBucket), destinationPrefix :: NullOrUndefined (ExportDestinationPrefix), status :: NullOrUndefined (ExportTaskStatus), executionInfo :: NullOrUndefined (ExportTaskExecutionInfo) }
```

<p>Represents an export task.</p>

##### Instances
``` purescript
Newtype ExportTask _
Generic ExportTask _
Show ExportTask
Decode ExportTask
Encode ExportTask
```

#### `newExportTask`

``` purescript
newExportTask :: ExportTask
```

Constructs ExportTask from required parameters

#### `newExportTask'`

``` purescript
newExportTask' :: ({ taskId :: NullOrUndefined (ExportTaskId), taskName :: NullOrUndefined (ExportTaskName), logGroupName :: NullOrUndefined (LogGroupName), from :: NullOrUndefined (Timestamp), to :: NullOrUndefined (Timestamp), destination :: NullOrUndefined (ExportDestinationBucket), destinationPrefix :: NullOrUndefined (ExportDestinationPrefix), status :: NullOrUndefined (ExportTaskStatus), executionInfo :: NullOrUndefined (ExportTaskExecutionInfo) } -> { taskId :: NullOrUndefined (ExportTaskId), taskName :: NullOrUndefined (ExportTaskName), logGroupName :: NullOrUndefined (LogGroupName), from :: NullOrUndefined (Timestamp), to :: NullOrUndefined (Timestamp), destination :: NullOrUndefined (ExportDestinationBucket), destinationPrefix :: NullOrUndefined (ExportDestinationPrefix), status :: NullOrUndefined (ExportTaskStatus), executionInfo :: NullOrUndefined (ExportTaskExecutionInfo) }) -> ExportTask
```

Constructs ExportTask's fields from required parameters

#### `ExportTaskExecutionInfo`

``` purescript
newtype ExportTaskExecutionInfo
  = ExportTaskExecutionInfo { creationTime :: NullOrUndefined (Timestamp), completionTime :: NullOrUndefined (Timestamp) }
```

<p>Represents the status of an export task.</p>

##### Instances
``` purescript
Newtype ExportTaskExecutionInfo _
Generic ExportTaskExecutionInfo _
Show ExportTaskExecutionInfo
Decode ExportTaskExecutionInfo
Encode ExportTaskExecutionInfo
```

#### `newExportTaskExecutionInfo`

``` purescript
newExportTaskExecutionInfo :: ExportTaskExecutionInfo
```

Constructs ExportTaskExecutionInfo from required parameters

#### `newExportTaskExecutionInfo'`

``` purescript
newExportTaskExecutionInfo' :: ({ creationTime :: NullOrUndefined (Timestamp), completionTime :: NullOrUndefined (Timestamp) } -> { creationTime :: NullOrUndefined (Timestamp), completionTime :: NullOrUndefined (Timestamp) }) -> ExportTaskExecutionInfo
```

Constructs ExportTaskExecutionInfo's fields from required parameters

#### `ExportTaskId`

``` purescript
newtype ExportTaskId
  = ExportTaskId String
```

##### Instances
``` purescript
Newtype ExportTaskId _
Generic ExportTaskId _
Show ExportTaskId
Decode ExportTaskId
Encode ExportTaskId
```

#### `ExportTaskName`

``` purescript
newtype ExportTaskName
  = ExportTaskName String
```

##### Instances
``` purescript
Newtype ExportTaskName _
Generic ExportTaskName _
Show ExportTaskName
Decode ExportTaskName
Encode ExportTaskName
```

#### `ExportTaskStatus`

``` purescript
newtype ExportTaskStatus
  = ExportTaskStatus { code :: NullOrUndefined (ExportTaskStatusCode), message :: NullOrUndefined (ExportTaskStatusMessage) }
```

<p>Represents the status of an export task.</p>

##### Instances
``` purescript
Newtype ExportTaskStatus _
Generic ExportTaskStatus _
Show ExportTaskStatus
Decode ExportTaskStatus
Encode ExportTaskStatus
```

#### `newExportTaskStatus`

``` purescript
newExportTaskStatus :: ExportTaskStatus
```

Constructs ExportTaskStatus from required parameters

#### `newExportTaskStatus'`

``` purescript
newExportTaskStatus' :: ({ code :: NullOrUndefined (ExportTaskStatusCode), message :: NullOrUndefined (ExportTaskStatusMessage) } -> { code :: NullOrUndefined (ExportTaskStatusCode), message :: NullOrUndefined (ExportTaskStatusMessage) }) -> ExportTaskStatus
```

Constructs ExportTaskStatus's fields from required parameters

#### `ExportTaskStatusCode`

``` purescript
newtype ExportTaskStatusCode
  = ExportTaskStatusCode String
```

##### Instances
``` purescript
Newtype ExportTaskStatusCode _
Generic ExportTaskStatusCode _
Show ExportTaskStatusCode
Decode ExportTaskStatusCode
Encode ExportTaskStatusCode
```

#### `ExportTaskStatusMessage`

``` purescript
newtype ExportTaskStatusMessage
  = ExportTaskStatusMessage String
```

##### Instances
``` purescript
Newtype ExportTaskStatusMessage _
Generic ExportTaskStatusMessage _
Show ExportTaskStatusMessage
Decode ExportTaskStatusMessage
Encode ExportTaskStatusMessage
```

#### `ExportTasks`

``` purescript
newtype ExportTasks
  = ExportTasks (Array ExportTask)
```

##### Instances
``` purescript
Newtype ExportTasks _
Generic ExportTasks _
Show ExportTasks
Decode ExportTasks
Encode ExportTasks
```

#### `ExtractedValues`

``` purescript
newtype ExtractedValues
  = ExtractedValues (StrMap Value)
```

##### Instances
``` purescript
Newtype ExtractedValues _
Generic ExtractedValues _
Show ExtractedValues
Decode ExtractedValues
Encode ExtractedValues
```

#### `FilterCount`

``` purescript
newtype FilterCount
  = FilterCount Int
```

##### Instances
``` purescript
Newtype FilterCount _
Generic FilterCount _
Show FilterCount
Decode FilterCount
Encode FilterCount
```

#### `FilterLogEventsRequest`

``` purescript
newtype FilterLogEventsRequest
  = FilterLogEventsRequest { logGroupName :: LogGroupName, logStreamNames :: NullOrUndefined (InputLogStreamNames), startTime :: NullOrUndefined (Timestamp), endTime :: NullOrUndefined (Timestamp), filterPattern :: NullOrUndefined (FilterPattern), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (EventsLimit), interleaved :: NullOrUndefined (Interleaved) }
```

##### Instances
``` purescript
Newtype FilterLogEventsRequest _
Generic FilterLogEventsRequest _
Show FilterLogEventsRequest
Decode FilterLogEventsRequest
Encode FilterLogEventsRequest
```

#### `newFilterLogEventsRequest`

``` purescript
newFilterLogEventsRequest :: LogGroupName -> FilterLogEventsRequest
```

Constructs FilterLogEventsRequest from required parameters

#### `newFilterLogEventsRequest'`

``` purescript
newFilterLogEventsRequest' :: LogGroupName -> ({ logGroupName :: LogGroupName, logStreamNames :: NullOrUndefined (InputLogStreamNames), startTime :: NullOrUndefined (Timestamp), endTime :: NullOrUndefined (Timestamp), filterPattern :: NullOrUndefined (FilterPattern), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (EventsLimit), interleaved :: NullOrUndefined (Interleaved) } -> { logGroupName :: LogGroupName, logStreamNames :: NullOrUndefined (InputLogStreamNames), startTime :: NullOrUndefined (Timestamp), endTime :: NullOrUndefined (Timestamp), filterPattern :: NullOrUndefined (FilterPattern), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (EventsLimit), interleaved :: NullOrUndefined (Interleaved) }) -> FilterLogEventsRequest
```

Constructs FilterLogEventsRequest's fields from required parameters

#### `FilterLogEventsResponse`

``` purescript
newtype FilterLogEventsResponse
  = FilterLogEventsResponse { events :: NullOrUndefined (FilteredLogEvents), searchedLogStreams :: NullOrUndefined (SearchedLogStreams), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype FilterLogEventsResponse _
Generic FilterLogEventsResponse _
Show FilterLogEventsResponse
Decode FilterLogEventsResponse
Encode FilterLogEventsResponse
```

#### `newFilterLogEventsResponse`

``` purescript
newFilterLogEventsResponse :: FilterLogEventsResponse
```

Constructs FilterLogEventsResponse from required parameters

#### `newFilterLogEventsResponse'`

``` purescript
newFilterLogEventsResponse' :: ({ events :: NullOrUndefined (FilteredLogEvents), searchedLogStreams :: NullOrUndefined (SearchedLogStreams), nextToken :: NullOrUndefined (NextToken) } -> { events :: NullOrUndefined (FilteredLogEvents), searchedLogStreams :: NullOrUndefined (SearchedLogStreams), nextToken :: NullOrUndefined (NextToken) }) -> FilterLogEventsResponse
```

Constructs FilterLogEventsResponse's fields from required parameters

#### `FilterName`

``` purescript
newtype FilterName
  = FilterName String
```

##### Instances
``` purescript
Newtype FilterName _
Generic FilterName _
Show FilterName
Decode FilterName
Encode FilterName
```

#### `FilterPattern`

``` purescript
newtype FilterPattern
  = FilterPattern String
```

<p>A symbolic description of how CloudWatch Logs should interpret the data in each log event. For example, a log event may contain time stamps, IP addresses, strings, and so on. You use the filter pattern to specify what to look for in the log event message.</p>

##### Instances
``` purescript
Newtype FilterPattern _
Generic FilterPattern _
Show FilterPattern
Decode FilterPattern
Encode FilterPattern
```

#### `FilteredLogEvent`

``` purescript
newtype FilteredLogEvent
  = FilteredLogEvent { logStreamName :: NullOrUndefined (LogStreamName), timestamp :: NullOrUndefined (Timestamp), message :: NullOrUndefined (EventMessage), ingestionTime :: NullOrUndefined (Timestamp), eventId :: NullOrUndefined (EventId) }
```

<p>Represents a matched event.</p>

##### Instances
``` purescript
Newtype FilteredLogEvent _
Generic FilteredLogEvent _
Show FilteredLogEvent
Decode FilteredLogEvent
Encode FilteredLogEvent
```

#### `newFilteredLogEvent`

``` purescript
newFilteredLogEvent :: FilteredLogEvent
```

Constructs FilteredLogEvent from required parameters

#### `newFilteredLogEvent'`

``` purescript
newFilteredLogEvent' :: ({ logStreamName :: NullOrUndefined (LogStreamName), timestamp :: NullOrUndefined (Timestamp), message :: NullOrUndefined (EventMessage), ingestionTime :: NullOrUndefined (Timestamp), eventId :: NullOrUndefined (EventId) } -> { logStreamName :: NullOrUndefined (LogStreamName), timestamp :: NullOrUndefined (Timestamp), message :: NullOrUndefined (EventMessage), ingestionTime :: NullOrUndefined (Timestamp), eventId :: NullOrUndefined (EventId) }) -> FilteredLogEvent
```

Constructs FilteredLogEvent's fields from required parameters

#### `FilteredLogEvents`

``` purescript
newtype FilteredLogEvents
  = FilteredLogEvents (Array FilteredLogEvent)
```

##### Instances
``` purescript
Newtype FilteredLogEvents _
Generic FilteredLogEvents _
Show FilteredLogEvents
Decode FilteredLogEvents
Encode FilteredLogEvents
```

#### `GetLogEventsRequest`

``` purescript
newtype GetLogEventsRequest
  = GetLogEventsRequest { logGroupName :: LogGroupName, logStreamName :: LogStreamName, startTime :: NullOrUndefined (Timestamp), endTime :: NullOrUndefined (Timestamp), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (EventsLimit), startFromHead :: NullOrUndefined (StartFromHead) }
```

##### Instances
``` purescript
Newtype GetLogEventsRequest _
Generic GetLogEventsRequest _
Show GetLogEventsRequest
Decode GetLogEventsRequest
Encode GetLogEventsRequest
```

#### `newGetLogEventsRequest`

``` purescript
newGetLogEventsRequest :: LogGroupName -> LogStreamName -> GetLogEventsRequest
```

Constructs GetLogEventsRequest from required parameters

#### `newGetLogEventsRequest'`

``` purescript
newGetLogEventsRequest' :: LogGroupName -> LogStreamName -> ({ logGroupName :: LogGroupName, logStreamName :: LogStreamName, startTime :: NullOrUndefined (Timestamp), endTime :: NullOrUndefined (Timestamp), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (EventsLimit), startFromHead :: NullOrUndefined (StartFromHead) } -> { logGroupName :: LogGroupName, logStreamName :: LogStreamName, startTime :: NullOrUndefined (Timestamp), endTime :: NullOrUndefined (Timestamp), nextToken :: NullOrUndefined (NextToken), limit :: NullOrUndefined (EventsLimit), startFromHead :: NullOrUndefined (StartFromHead) }) -> GetLogEventsRequest
```

Constructs GetLogEventsRequest's fields from required parameters

#### `GetLogEventsResponse`

``` purescript
newtype GetLogEventsResponse
  = GetLogEventsResponse { events :: NullOrUndefined (OutputLogEvents), nextForwardToken :: NullOrUndefined (NextToken), nextBackwardToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype GetLogEventsResponse _
Generic GetLogEventsResponse _
Show GetLogEventsResponse
Decode GetLogEventsResponse
Encode GetLogEventsResponse
```

#### `newGetLogEventsResponse`

``` purescript
newGetLogEventsResponse :: GetLogEventsResponse
```

Constructs GetLogEventsResponse from required parameters

#### `newGetLogEventsResponse'`

``` purescript
newGetLogEventsResponse' :: ({ events :: NullOrUndefined (OutputLogEvents), nextForwardToken :: NullOrUndefined (NextToken), nextBackwardToken :: NullOrUndefined (NextToken) } -> { events :: NullOrUndefined (OutputLogEvents), nextForwardToken :: NullOrUndefined (NextToken), nextBackwardToken :: NullOrUndefined (NextToken) }) -> GetLogEventsResponse
```

Constructs GetLogEventsResponse's fields from required parameters

#### `InputLogEvent`

``` purescript
newtype InputLogEvent
  = InputLogEvent { timestamp :: Timestamp, message :: EventMessage }
```

<p>Represents a log event, which is a record of activity that was recorded by the application or resource being monitored.</p>

##### Instances
``` purescript
Newtype InputLogEvent _
Generic InputLogEvent _
Show InputLogEvent
Decode InputLogEvent
Encode InputLogEvent
```

#### `newInputLogEvent`

``` purescript
newInputLogEvent :: EventMessage -> Timestamp -> InputLogEvent
```

Constructs InputLogEvent from required parameters

#### `newInputLogEvent'`

``` purescript
newInputLogEvent' :: EventMessage -> Timestamp -> ({ timestamp :: Timestamp, message :: EventMessage } -> { timestamp :: Timestamp, message :: EventMessage }) -> InputLogEvent
```

Constructs InputLogEvent's fields from required parameters

#### `InputLogEvents`

``` purescript
newtype InputLogEvents
  = InputLogEvents (Array InputLogEvent)
```

##### Instances
``` purescript
Newtype InputLogEvents _
Generic InputLogEvents _
Show InputLogEvents
Decode InputLogEvents
Encode InputLogEvents
```

#### `InputLogStreamNames`

``` purescript
newtype InputLogStreamNames
  = InputLogStreamNames (Array LogStreamName)
```

##### Instances
``` purescript
Newtype InputLogStreamNames _
Generic InputLogStreamNames _
Show InputLogStreamNames
Decode InputLogStreamNames
Encode InputLogStreamNames
```

#### `Interleaved`

``` purescript
newtype Interleaved
  = Interleaved Boolean
```

##### Instances
``` purescript
Newtype Interleaved _
Generic Interleaved _
Show Interleaved
Decode Interleaved
Encode Interleaved
```

#### `InvalidOperationException`

``` purescript
newtype InvalidOperationException
  = InvalidOperationException NoArguments
```

<p>The operation is not valid on the specified resource.</p>

##### Instances
``` purescript
Newtype InvalidOperationException _
Generic InvalidOperationException _
Show InvalidOperationException
Decode InvalidOperationException
Encode InvalidOperationException
```

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException NoArguments
```

<p>A parameter is specified incorrectly.</p>

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `InvalidSequenceTokenException`

``` purescript
newtype InvalidSequenceTokenException
  = InvalidSequenceTokenException { expectedSequenceToken :: NullOrUndefined (SequenceToken) }
```

<p>The sequence token is not valid.</p>

##### Instances
``` purescript
Newtype InvalidSequenceTokenException _
Generic InvalidSequenceTokenException _
Show InvalidSequenceTokenException
Decode InvalidSequenceTokenException
Encode InvalidSequenceTokenException
```

#### `newInvalidSequenceTokenException`

``` purescript
newInvalidSequenceTokenException :: InvalidSequenceTokenException
```

Constructs InvalidSequenceTokenException from required parameters

#### `newInvalidSequenceTokenException'`

``` purescript
newInvalidSequenceTokenException' :: ({ expectedSequenceToken :: NullOrUndefined (SequenceToken) } -> { expectedSequenceToken :: NullOrUndefined (SequenceToken) }) -> InvalidSequenceTokenException
```

Constructs InvalidSequenceTokenException's fields from required parameters

#### `KmsKeyId`

``` purescript
newtype KmsKeyId
  = KmsKeyId String
```

##### Instances
``` purescript
Newtype KmsKeyId _
Generic KmsKeyId _
Show KmsKeyId
Decode KmsKeyId
Encode KmsKeyId
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException NoArguments
```

<p>You have reached the maximum number of resources that can be created.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `ListTagsLogGroupRequest`

``` purescript
newtype ListTagsLogGroupRequest
  = ListTagsLogGroupRequest { logGroupName :: LogGroupName }
```

##### Instances
``` purescript
Newtype ListTagsLogGroupRequest _
Generic ListTagsLogGroupRequest _
Show ListTagsLogGroupRequest
Decode ListTagsLogGroupRequest
Encode ListTagsLogGroupRequest
```

#### `newListTagsLogGroupRequest`

``` purescript
newListTagsLogGroupRequest :: LogGroupName -> ListTagsLogGroupRequest
```

Constructs ListTagsLogGroupRequest from required parameters

#### `newListTagsLogGroupRequest'`

``` purescript
newListTagsLogGroupRequest' :: LogGroupName -> ({ logGroupName :: LogGroupName } -> { logGroupName :: LogGroupName }) -> ListTagsLogGroupRequest
```

Constructs ListTagsLogGroupRequest's fields from required parameters

#### `ListTagsLogGroupResponse`

``` purescript
newtype ListTagsLogGroupResponse
  = ListTagsLogGroupResponse { tags :: NullOrUndefined (Tags) }
```

##### Instances
``` purescript
Newtype ListTagsLogGroupResponse _
Generic ListTagsLogGroupResponse _
Show ListTagsLogGroupResponse
Decode ListTagsLogGroupResponse
Encode ListTagsLogGroupResponse
```

#### `newListTagsLogGroupResponse`

``` purescript
newListTagsLogGroupResponse :: ListTagsLogGroupResponse
```

Constructs ListTagsLogGroupResponse from required parameters

#### `newListTagsLogGroupResponse'`

``` purescript
newListTagsLogGroupResponse' :: ({ tags :: NullOrUndefined (Tags) } -> { tags :: NullOrUndefined (Tags) }) -> ListTagsLogGroupResponse
```

Constructs ListTagsLogGroupResponse's fields from required parameters

#### `LogEventIndex`

``` purescript
newtype LogEventIndex
  = LogEventIndex Int
```

##### Instances
``` purescript
Newtype LogEventIndex _
Generic LogEventIndex _
Show LogEventIndex
Decode LogEventIndex
Encode LogEventIndex
```

#### `LogGroup`

``` purescript
newtype LogGroup
  = LogGroup { logGroupName :: NullOrUndefined (LogGroupName), creationTime :: NullOrUndefined (Timestamp), retentionInDays :: NullOrUndefined (Days), metricFilterCount :: NullOrUndefined (FilterCount), arn :: NullOrUndefined (Arn), storedBytes :: NullOrUndefined (StoredBytes), kmsKeyId :: NullOrUndefined (KmsKeyId) }
```

<p>Represents a log group.</p>

##### Instances
``` purescript
Newtype LogGroup _
Generic LogGroup _
Show LogGroup
Decode LogGroup
Encode LogGroup
```

#### `newLogGroup`

``` purescript
newLogGroup :: LogGroup
```

Constructs LogGroup from required parameters

#### `newLogGroup'`

``` purescript
newLogGroup' :: ({ logGroupName :: NullOrUndefined (LogGroupName), creationTime :: NullOrUndefined (Timestamp), retentionInDays :: NullOrUndefined (Days), metricFilterCount :: NullOrUndefined (FilterCount), arn :: NullOrUndefined (Arn), storedBytes :: NullOrUndefined (StoredBytes), kmsKeyId :: NullOrUndefined (KmsKeyId) } -> { logGroupName :: NullOrUndefined (LogGroupName), creationTime :: NullOrUndefined (Timestamp), retentionInDays :: NullOrUndefined (Days), metricFilterCount :: NullOrUndefined (FilterCount), arn :: NullOrUndefined (Arn), storedBytes :: NullOrUndefined (StoredBytes), kmsKeyId :: NullOrUndefined (KmsKeyId) }) -> LogGroup
```

Constructs LogGroup's fields from required parameters

#### `LogGroupName`

``` purescript
newtype LogGroupName
  = LogGroupName String
```

##### Instances
``` purescript
Newtype LogGroupName _
Generic LogGroupName _
Show LogGroupName
Decode LogGroupName
Encode LogGroupName
```

#### `LogGroups`

``` purescript
newtype LogGroups
  = LogGroups (Array LogGroup)
```

##### Instances
``` purescript
Newtype LogGroups _
Generic LogGroups _
Show LogGroups
Decode LogGroups
Encode LogGroups
```

#### `LogStream`

``` purescript
newtype LogStream
  = LogStream { logStreamName :: NullOrUndefined (LogStreamName), creationTime :: NullOrUndefined (Timestamp), firstEventTimestamp :: NullOrUndefined (Timestamp), lastEventTimestamp :: NullOrUndefined (Timestamp), lastIngestionTime :: NullOrUndefined (Timestamp), uploadSequenceToken :: NullOrUndefined (SequenceToken), arn :: NullOrUndefined (Arn), storedBytes :: NullOrUndefined (StoredBytes) }
```

<p>Represents a log stream, which is a sequence of log events from a single emitter of logs.</p>

##### Instances
``` purescript
Newtype LogStream _
Generic LogStream _
Show LogStream
Decode LogStream
Encode LogStream
```

#### `newLogStream`

``` purescript
newLogStream :: LogStream
```

Constructs LogStream from required parameters

#### `newLogStream'`

``` purescript
newLogStream' :: ({ logStreamName :: NullOrUndefined (LogStreamName), creationTime :: NullOrUndefined (Timestamp), firstEventTimestamp :: NullOrUndefined (Timestamp), lastEventTimestamp :: NullOrUndefined (Timestamp), lastIngestionTime :: NullOrUndefined (Timestamp), uploadSequenceToken :: NullOrUndefined (SequenceToken), arn :: NullOrUndefined (Arn), storedBytes :: NullOrUndefined (StoredBytes) } -> { logStreamName :: NullOrUndefined (LogStreamName), creationTime :: NullOrUndefined (Timestamp), firstEventTimestamp :: NullOrUndefined (Timestamp), lastEventTimestamp :: NullOrUndefined (Timestamp), lastIngestionTime :: NullOrUndefined (Timestamp), uploadSequenceToken :: NullOrUndefined (SequenceToken), arn :: NullOrUndefined (Arn), storedBytes :: NullOrUndefined (StoredBytes) }) -> LogStream
```

Constructs LogStream's fields from required parameters

#### `LogStreamName`

``` purescript
newtype LogStreamName
  = LogStreamName String
```

##### Instances
``` purescript
Newtype LogStreamName _
Generic LogStreamName _
Show LogStreamName
Decode LogStreamName
Encode LogStreamName
```

#### `LogStreamSearchedCompletely`

``` purescript
newtype LogStreamSearchedCompletely
  = LogStreamSearchedCompletely Boolean
```

##### Instances
``` purescript
Newtype LogStreamSearchedCompletely _
Generic LogStreamSearchedCompletely _
Show LogStreamSearchedCompletely
Decode LogStreamSearchedCompletely
Encode LogStreamSearchedCompletely
```

#### `LogStreams`

``` purescript
newtype LogStreams
  = LogStreams (Array LogStream)
```

##### Instances
``` purescript
Newtype LogStreams _
Generic LogStreams _
Show LogStreams
Decode LogStreams
Encode LogStreams
```

#### `MetricFilter`

``` purescript
newtype MetricFilter
  = MetricFilter { filterName :: NullOrUndefined (FilterName), filterPattern :: NullOrUndefined (FilterPattern), metricTransformations :: NullOrUndefined (MetricTransformations), creationTime :: NullOrUndefined (Timestamp), logGroupName :: NullOrUndefined (LogGroupName) }
```

<p>Metric filters express how CloudWatch Logs would extract metric observations from ingested log events and transform them into metric data in a CloudWatch metric.</p>

##### Instances
``` purescript
Newtype MetricFilter _
Generic MetricFilter _
Show MetricFilter
Decode MetricFilter
Encode MetricFilter
```

#### `newMetricFilter`

``` purescript
newMetricFilter :: MetricFilter
```

Constructs MetricFilter from required parameters

#### `newMetricFilter'`

``` purescript
newMetricFilter' :: ({ filterName :: NullOrUndefined (FilterName), filterPattern :: NullOrUndefined (FilterPattern), metricTransformations :: NullOrUndefined (MetricTransformations), creationTime :: NullOrUndefined (Timestamp), logGroupName :: NullOrUndefined (LogGroupName) } -> { filterName :: NullOrUndefined (FilterName), filterPattern :: NullOrUndefined (FilterPattern), metricTransformations :: NullOrUndefined (MetricTransformations), creationTime :: NullOrUndefined (Timestamp), logGroupName :: NullOrUndefined (LogGroupName) }) -> MetricFilter
```

Constructs MetricFilter's fields from required parameters

#### `MetricFilterMatchRecord`

``` purescript
newtype MetricFilterMatchRecord
  = MetricFilterMatchRecord { eventNumber :: NullOrUndefined (EventNumber), eventMessage :: NullOrUndefined (EventMessage), extractedValues :: NullOrUndefined (ExtractedValues) }
```

<p>Represents a matched event.</p>

##### Instances
``` purescript
Newtype MetricFilterMatchRecord _
Generic MetricFilterMatchRecord _
Show MetricFilterMatchRecord
Decode MetricFilterMatchRecord
Encode MetricFilterMatchRecord
```

#### `newMetricFilterMatchRecord`

``` purescript
newMetricFilterMatchRecord :: MetricFilterMatchRecord
```

Constructs MetricFilterMatchRecord from required parameters

#### `newMetricFilterMatchRecord'`

``` purescript
newMetricFilterMatchRecord' :: ({ eventNumber :: NullOrUndefined (EventNumber), eventMessage :: NullOrUndefined (EventMessage), extractedValues :: NullOrUndefined (ExtractedValues) } -> { eventNumber :: NullOrUndefined (EventNumber), eventMessage :: NullOrUndefined (EventMessage), extractedValues :: NullOrUndefined (ExtractedValues) }) -> MetricFilterMatchRecord
```

Constructs MetricFilterMatchRecord's fields from required parameters

#### `MetricFilterMatches`

``` purescript
newtype MetricFilterMatches
  = MetricFilterMatches (Array MetricFilterMatchRecord)
```

##### Instances
``` purescript
Newtype MetricFilterMatches _
Generic MetricFilterMatches _
Show MetricFilterMatches
Decode MetricFilterMatches
Encode MetricFilterMatches
```

#### `MetricFilters`

``` purescript
newtype MetricFilters
  = MetricFilters (Array MetricFilter)
```

##### Instances
``` purescript
Newtype MetricFilters _
Generic MetricFilters _
Show MetricFilters
Decode MetricFilters
Encode MetricFilters
```

#### `MetricName`

``` purescript
newtype MetricName
  = MetricName String
```

<p>The name of the CloudWatch metric to which the monitored log information should be published. For example, you may publish to a metric called ErrorCount.</p>

##### Instances
``` purescript
Newtype MetricName _
Generic MetricName _
Show MetricName
Decode MetricName
Encode MetricName
```

#### `MetricNamespace`

``` purescript
newtype MetricNamespace
  = MetricNamespace String
```

##### Instances
``` purescript
Newtype MetricNamespace _
Generic MetricNamespace _
Show MetricNamespace
Decode MetricNamespace
Encode MetricNamespace
```

#### `MetricTransformation`

``` purescript
newtype MetricTransformation
  = MetricTransformation { metricName :: MetricName, metricNamespace :: MetricNamespace, metricValue :: MetricValue, defaultValue :: NullOrUndefined (DefaultValue) }
```

<p>Indicates how to transform ingested log events in to metric data in a CloudWatch metric.</p>

##### Instances
``` purescript
Newtype MetricTransformation _
Generic MetricTransformation _
Show MetricTransformation
Decode MetricTransformation
Encode MetricTransformation
```

#### `newMetricTransformation`

``` purescript
newMetricTransformation :: MetricName -> MetricNamespace -> MetricValue -> MetricTransformation
```

Constructs MetricTransformation from required parameters

#### `newMetricTransformation'`

``` purescript
newMetricTransformation' :: MetricName -> MetricNamespace -> MetricValue -> ({ metricName :: MetricName, metricNamespace :: MetricNamespace, metricValue :: MetricValue, defaultValue :: NullOrUndefined (DefaultValue) } -> { metricName :: MetricName, metricNamespace :: MetricNamespace, metricValue :: MetricValue, defaultValue :: NullOrUndefined (DefaultValue) }) -> MetricTransformation
```

Constructs MetricTransformation's fields from required parameters

#### `MetricTransformations`

``` purescript
newtype MetricTransformations
  = MetricTransformations (Array MetricTransformation)
```

##### Instances
``` purescript
Newtype MetricTransformations _
Generic MetricTransformations _
Show MetricTransformations
Decode MetricTransformations
Encode MetricTransformations
```

#### `MetricValue`

``` purescript
newtype MetricValue
  = MetricValue String
```

<p>The value to publish to the CloudWatch metric. For example, if you're counting the occurrences of a term like "Error", the value is "1" for each occurrence. If you're counting the bytes transferred, the value is the value in the log event.</p>

##### Instances
``` purescript
Newtype MetricValue _
Generic MetricValue _
Show MetricValue
Decode MetricValue
Encode MetricValue
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

<p>The token for the next set of items to return. The token expires after 24 hours.</p>

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `OperationAbortedException`

``` purescript
newtype OperationAbortedException
  = OperationAbortedException NoArguments
```

<p>Multiple requests to update the same resource were in conflict.</p>

##### Instances
``` purescript
Newtype OperationAbortedException _
Generic OperationAbortedException _
Show OperationAbortedException
Decode OperationAbortedException
Encode OperationAbortedException
```

#### `OrderBy`

``` purescript
newtype OrderBy
  = OrderBy String
```

##### Instances
``` purescript
Newtype OrderBy _
Generic OrderBy _
Show OrderBy
Decode OrderBy
Encode OrderBy
```

#### `OutputLogEvent`

``` purescript
newtype OutputLogEvent
  = OutputLogEvent { timestamp :: NullOrUndefined (Timestamp), message :: NullOrUndefined (EventMessage), ingestionTime :: NullOrUndefined (Timestamp) }
```

<p>Represents a log event.</p>

##### Instances
``` purescript
Newtype OutputLogEvent _
Generic OutputLogEvent _
Show OutputLogEvent
Decode OutputLogEvent
Encode OutputLogEvent
```

#### `newOutputLogEvent`

``` purescript
newOutputLogEvent :: OutputLogEvent
```

Constructs OutputLogEvent from required parameters

#### `newOutputLogEvent'`

``` purescript
newOutputLogEvent' :: ({ timestamp :: NullOrUndefined (Timestamp), message :: NullOrUndefined (EventMessage), ingestionTime :: NullOrUndefined (Timestamp) } -> { timestamp :: NullOrUndefined (Timestamp), message :: NullOrUndefined (EventMessage), ingestionTime :: NullOrUndefined (Timestamp) }) -> OutputLogEvent
```

Constructs OutputLogEvent's fields from required parameters

#### `OutputLogEvents`

``` purescript
newtype OutputLogEvents
  = OutputLogEvents (Array OutputLogEvent)
```

##### Instances
``` purescript
Newtype OutputLogEvents _
Generic OutputLogEvents _
Show OutputLogEvents
Decode OutputLogEvents
Encode OutputLogEvents
```

#### `PolicyDocument`

``` purescript
newtype PolicyDocument
  = PolicyDocument String
```

##### Instances
``` purescript
Newtype PolicyDocument _
Generic PolicyDocument _
Show PolicyDocument
Decode PolicyDocument
Encode PolicyDocument
```

#### `PolicyName`

``` purescript
newtype PolicyName
  = PolicyName String
```

##### Instances
``` purescript
Newtype PolicyName _
Generic PolicyName _
Show PolicyName
Decode PolicyName
Encode PolicyName
```

#### `PutDestinationPolicyRequest`

``` purescript
newtype PutDestinationPolicyRequest
  = PutDestinationPolicyRequest { destinationName :: DestinationName, accessPolicy :: AccessPolicy }
```

##### Instances
``` purescript
Newtype PutDestinationPolicyRequest _
Generic PutDestinationPolicyRequest _
Show PutDestinationPolicyRequest
Decode PutDestinationPolicyRequest
Encode PutDestinationPolicyRequest
```

#### `newPutDestinationPolicyRequest`

``` purescript
newPutDestinationPolicyRequest :: AccessPolicy -> DestinationName -> PutDestinationPolicyRequest
```

Constructs PutDestinationPolicyRequest from required parameters

#### `newPutDestinationPolicyRequest'`

``` purescript
newPutDestinationPolicyRequest' :: AccessPolicy -> DestinationName -> ({ destinationName :: DestinationName, accessPolicy :: AccessPolicy } -> { destinationName :: DestinationName, accessPolicy :: AccessPolicy }) -> PutDestinationPolicyRequest
```

Constructs PutDestinationPolicyRequest's fields from required parameters

#### `PutDestinationRequest`

``` purescript
newtype PutDestinationRequest
  = PutDestinationRequest { destinationName :: DestinationName, targetArn :: TargetArn, roleArn :: RoleArn }
```

##### Instances
``` purescript
Newtype PutDestinationRequest _
Generic PutDestinationRequest _
Show PutDestinationRequest
Decode PutDestinationRequest
Encode PutDestinationRequest
```

#### `newPutDestinationRequest`

``` purescript
newPutDestinationRequest :: DestinationName -> RoleArn -> TargetArn -> PutDestinationRequest
```

Constructs PutDestinationRequest from required parameters

#### `newPutDestinationRequest'`

``` purescript
newPutDestinationRequest' :: DestinationName -> RoleArn -> TargetArn -> ({ destinationName :: DestinationName, targetArn :: TargetArn, roleArn :: RoleArn } -> { destinationName :: DestinationName, targetArn :: TargetArn, roleArn :: RoleArn }) -> PutDestinationRequest
```

Constructs PutDestinationRequest's fields from required parameters

#### `PutDestinationResponse`

``` purescript
newtype PutDestinationResponse
  = PutDestinationResponse { destination :: NullOrUndefined (Destination) }
```

##### Instances
``` purescript
Newtype PutDestinationResponse _
Generic PutDestinationResponse _
Show PutDestinationResponse
Decode PutDestinationResponse
Encode PutDestinationResponse
```

#### `newPutDestinationResponse`

``` purescript
newPutDestinationResponse :: PutDestinationResponse
```

Constructs PutDestinationResponse from required parameters

#### `newPutDestinationResponse'`

``` purescript
newPutDestinationResponse' :: ({ destination :: NullOrUndefined (Destination) } -> { destination :: NullOrUndefined (Destination) }) -> PutDestinationResponse
```

Constructs PutDestinationResponse's fields from required parameters

#### `PutLogEventsRequest`

``` purescript
newtype PutLogEventsRequest
  = PutLogEventsRequest { logGroupName :: LogGroupName, logStreamName :: LogStreamName, logEvents :: InputLogEvents, sequenceToken :: NullOrUndefined (SequenceToken) }
```

##### Instances
``` purescript
Newtype PutLogEventsRequest _
Generic PutLogEventsRequest _
Show PutLogEventsRequest
Decode PutLogEventsRequest
Encode PutLogEventsRequest
```

#### `newPutLogEventsRequest`

``` purescript
newPutLogEventsRequest :: InputLogEvents -> LogGroupName -> LogStreamName -> PutLogEventsRequest
```

Constructs PutLogEventsRequest from required parameters

#### `newPutLogEventsRequest'`

``` purescript
newPutLogEventsRequest' :: InputLogEvents -> LogGroupName -> LogStreamName -> ({ logGroupName :: LogGroupName, logStreamName :: LogStreamName, logEvents :: InputLogEvents, sequenceToken :: NullOrUndefined (SequenceToken) } -> { logGroupName :: LogGroupName, logStreamName :: LogStreamName, logEvents :: InputLogEvents, sequenceToken :: NullOrUndefined (SequenceToken) }) -> PutLogEventsRequest
```

Constructs PutLogEventsRequest's fields from required parameters

#### `PutLogEventsResponse`

``` purescript
newtype PutLogEventsResponse
  = PutLogEventsResponse { nextSequenceToken :: NullOrUndefined (SequenceToken), rejectedLogEventsInfo :: NullOrUndefined (RejectedLogEventsInfo) }
```

##### Instances
``` purescript
Newtype PutLogEventsResponse _
Generic PutLogEventsResponse _
Show PutLogEventsResponse
Decode PutLogEventsResponse
Encode PutLogEventsResponse
```

#### `newPutLogEventsResponse`

``` purescript
newPutLogEventsResponse :: PutLogEventsResponse
```

Constructs PutLogEventsResponse from required parameters

#### `newPutLogEventsResponse'`

``` purescript
newPutLogEventsResponse' :: ({ nextSequenceToken :: NullOrUndefined (SequenceToken), rejectedLogEventsInfo :: NullOrUndefined (RejectedLogEventsInfo) } -> { nextSequenceToken :: NullOrUndefined (SequenceToken), rejectedLogEventsInfo :: NullOrUndefined (RejectedLogEventsInfo) }) -> PutLogEventsResponse
```

Constructs PutLogEventsResponse's fields from required parameters

#### `PutMetricFilterRequest`

``` purescript
newtype PutMetricFilterRequest
  = PutMetricFilterRequest { logGroupName :: LogGroupName, filterName :: FilterName, filterPattern :: FilterPattern, metricTransformations :: MetricTransformations }
```

##### Instances
``` purescript
Newtype PutMetricFilterRequest _
Generic PutMetricFilterRequest _
Show PutMetricFilterRequest
Decode PutMetricFilterRequest
Encode PutMetricFilterRequest
```

#### `newPutMetricFilterRequest`

``` purescript
newPutMetricFilterRequest :: FilterName -> FilterPattern -> LogGroupName -> MetricTransformations -> PutMetricFilterRequest
```

Constructs PutMetricFilterRequest from required parameters

#### `newPutMetricFilterRequest'`

``` purescript
newPutMetricFilterRequest' :: FilterName -> FilterPattern -> LogGroupName -> MetricTransformations -> ({ logGroupName :: LogGroupName, filterName :: FilterName, filterPattern :: FilterPattern, metricTransformations :: MetricTransformations } -> { logGroupName :: LogGroupName, filterName :: FilterName, filterPattern :: FilterPattern, metricTransformations :: MetricTransformations }) -> PutMetricFilterRequest
```

Constructs PutMetricFilterRequest's fields from required parameters

#### `PutResourcePolicyRequest`

``` purescript
newtype PutResourcePolicyRequest
  = PutResourcePolicyRequest { policyName :: NullOrUndefined (PolicyName), policyDocument :: NullOrUndefined (PolicyDocument) }
```

##### Instances
``` purescript
Newtype PutResourcePolicyRequest _
Generic PutResourcePolicyRequest _
Show PutResourcePolicyRequest
Decode PutResourcePolicyRequest
Encode PutResourcePolicyRequest
```

#### `newPutResourcePolicyRequest`

``` purescript
newPutResourcePolicyRequest :: PutResourcePolicyRequest
```

Constructs PutResourcePolicyRequest from required parameters

#### `newPutResourcePolicyRequest'`

``` purescript
newPutResourcePolicyRequest' :: ({ policyName :: NullOrUndefined (PolicyName), policyDocument :: NullOrUndefined (PolicyDocument) } -> { policyName :: NullOrUndefined (PolicyName), policyDocument :: NullOrUndefined (PolicyDocument) }) -> PutResourcePolicyRequest
```

Constructs PutResourcePolicyRequest's fields from required parameters

#### `PutResourcePolicyResponse`

``` purescript
newtype PutResourcePolicyResponse
  = PutResourcePolicyResponse { resourcePolicy :: NullOrUndefined (ResourcePolicy) }
```

##### Instances
``` purescript
Newtype PutResourcePolicyResponse _
Generic PutResourcePolicyResponse _
Show PutResourcePolicyResponse
Decode PutResourcePolicyResponse
Encode PutResourcePolicyResponse
```

#### `newPutResourcePolicyResponse`

``` purescript
newPutResourcePolicyResponse :: PutResourcePolicyResponse
```

Constructs PutResourcePolicyResponse from required parameters

#### `newPutResourcePolicyResponse'`

``` purescript
newPutResourcePolicyResponse' :: ({ resourcePolicy :: NullOrUndefined (ResourcePolicy) } -> { resourcePolicy :: NullOrUndefined (ResourcePolicy) }) -> PutResourcePolicyResponse
```

Constructs PutResourcePolicyResponse's fields from required parameters

#### `PutRetentionPolicyRequest`

``` purescript
newtype PutRetentionPolicyRequest
  = PutRetentionPolicyRequest { logGroupName :: LogGroupName, retentionInDays :: Days }
```

##### Instances
``` purescript
Newtype PutRetentionPolicyRequest _
Generic PutRetentionPolicyRequest _
Show PutRetentionPolicyRequest
Decode PutRetentionPolicyRequest
Encode PutRetentionPolicyRequest
```

#### `newPutRetentionPolicyRequest`

``` purescript
newPutRetentionPolicyRequest :: LogGroupName -> Days -> PutRetentionPolicyRequest
```

Constructs PutRetentionPolicyRequest from required parameters

#### `newPutRetentionPolicyRequest'`

``` purescript
newPutRetentionPolicyRequest' :: LogGroupName -> Days -> ({ logGroupName :: LogGroupName, retentionInDays :: Days } -> { logGroupName :: LogGroupName, retentionInDays :: Days }) -> PutRetentionPolicyRequest
```

Constructs PutRetentionPolicyRequest's fields from required parameters

#### `PutSubscriptionFilterRequest`

``` purescript
newtype PutSubscriptionFilterRequest
  = PutSubscriptionFilterRequest { logGroupName :: LogGroupName, filterName :: FilterName, filterPattern :: FilterPattern, destinationArn :: DestinationArn, roleArn :: NullOrUndefined (RoleArn), distribution :: NullOrUndefined (Distribution) }
```

##### Instances
``` purescript
Newtype PutSubscriptionFilterRequest _
Generic PutSubscriptionFilterRequest _
Show PutSubscriptionFilterRequest
Decode PutSubscriptionFilterRequest
Encode PutSubscriptionFilterRequest
```

#### `newPutSubscriptionFilterRequest`

``` purescript
newPutSubscriptionFilterRequest :: DestinationArn -> FilterName -> FilterPattern -> LogGroupName -> PutSubscriptionFilterRequest
```

Constructs PutSubscriptionFilterRequest from required parameters

#### `newPutSubscriptionFilterRequest'`

``` purescript
newPutSubscriptionFilterRequest' :: DestinationArn -> FilterName -> FilterPattern -> LogGroupName -> ({ logGroupName :: LogGroupName, filterName :: FilterName, filterPattern :: FilterPattern, destinationArn :: DestinationArn, roleArn :: NullOrUndefined (RoleArn), distribution :: NullOrUndefined (Distribution) } -> { logGroupName :: LogGroupName, filterName :: FilterName, filterPattern :: FilterPattern, destinationArn :: DestinationArn, roleArn :: NullOrUndefined (RoleArn), distribution :: NullOrUndefined (Distribution) }) -> PutSubscriptionFilterRequest
```

Constructs PutSubscriptionFilterRequest's fields from required parameters

#### `RejectedLogEventsInfo`

``` purescript
newtype RejectedLogEventsInfo
  = RejectedLogEventsInfo { tooNewLogEventStartIndex :: NullOrUndefined (LogEventIndex), tooOldLogEventEndIndex :: NullOrUndefined (LogEventIndex), expiredLogEventEndIndex :: NullOrUndefined (LogEventIndex) }
```

<p>Represents the rejected events.</p>

##### Instances
``` purescript
Newtype RejectedLogEventsInfo _
Generic RejectedLogEventsInfo _
Show RejectedLogEventsInfo
Decode RejectedLogEventsInfo
Encode RejectedLogEventsInfo
```

#### `newRejectedLogEventsInfo`

``` purescript
newRejectedLogEventsInfo :: RejectedLogEventsInfo
```

Constructs RejectedLogEventsInfo from required parameters

#### `newRejectedLogEventsInfo'`

``` purescript
newRejectedLogEventsInfo' :: ({ tooNewLogEventStartIndex :: NullOrUndefined (LogEventIndex), tooOldLogEventEndIndex :: NullOrUndefined (LogEventIndex), expiredLogEventEndIndex :: NullOrUndefined (LogEventIndex) } -> { tooNewLogEventStartIndex :: NullOrUndefined (LogEventIndex), tooOldLogEventEndIndex :: NullOrUndefined (LogEventIndex), expiredLogEventEndIndex :: NullOrUndefined (LogEventIndex) }) -> RejectedLogEventsInfo
```

Constructs RejectedLogEventsInfo's fields from required parameters

#### `ResourceAlreadyExistsException`

``` purescript
newtype ResourceAlreadyExistsException
  = ResourceAlreadyExistsException NoArguments
```

<p>The specified resource already exists.</p>

##### Instances
``` purescript
Newtype ResourceAlreadyExistsException _
Generic ResourceAlreadyExistsException _
Show ResourceAlreadyExistsException
Decode ResourceAlreadyExistsException
Encode ResourceAlreadyExistsException
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException NoArguments
```

<p>The specified resource does not exist.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `ResourcePolicies`

``` purescript
newtype ResourcePolicies
  = ResourcePolicies (Array ResourcePolicy)
```

##### Instances
``` purescript
Newtype ResourcePolicies _
Generic ResourcePolicies _
Show ResourcePolicies
Decode ResourcePolicies
Encode ResourcePolicies
```

#### `ResourcePolicy`

``` purescript
newtype ResourcePolicy
  = ResourcePolicy { policyName :: NullOrUndefined (PolicyName), policyDocument :: NullOrUndefined (PolicyDocument), lastUpdatedTime :: NullOrUndefined (Timestamp) }
```

<p>A policy enabling one or more entities to put logs to a log group in this account.</p>

##### Instances
``` purescript
Newtype ResourcePolicy _
Generic ResourcePolicy _
Show ResourcePolicy
Decode ResourcePolicy
Encode ResourcePolicy
```

#### `newResourcePolicy`

``` purescript
newResourcePolicy :: ResourcePolicy
```

Constructs ResourcePolicy from required parameters

#### `newResourcePolicy'`

``` purescript
newResourcePolicy' :: ({ policyName :: NullOrUndefined (PolicyName), policyDocument :: NullOrUndefined (PolicyDocument), lastUpdatedTime :: NullOrUndefined (Timestamp) } -> { policyName :: NullOrUndefined (PolicyName), policyDocument :: NullOrUndefined (PolicyDocument), lastUpdatedTime :: NullOrUndefined (Timestamp) }) -> ResourcePolicy
```

Constructs ResourcePolicy's fields from required parameters

#### `RoleArn`

``` purescript
newtype RoleArn
  = RoleArn String
```

##### Instances
``` purescript
Newtype RoleArn _
Generic RoleArn _
Show RoleArn
Decode RoleArn
Encode RoleArn
```

#### `SearchedLogStream`

``` purescript
newtype SearchedLogStream
  = SearchedLogStream { logStreamName :: NullOrUndefined (LogStreamName), searchedCompletely :: NullOrUndefined (LogStreamSearchedCompletely) }
```

<p>Represents the search status of a log stream.</p>

##### Instances
``` purescript
Newtype SearchedLogStream _
Generic SearchedLogStream _
Show SearchedLogStream
Decode SearchedLogStream
Encode SearchedLogStream
```

#### `newSearchedLogStream`

``` purescript
newSearchedLogStream :: SearchedLogStream
```

Constructs SearchedLogStream from required parameters

#### `newSearchedLogStream'`

``` purescript
newSearchedLogStream' :: ({ logStreamName :: NullOrUndefined (LogStreamName), searchedCompletely :: NullOrUndefined (LogStreamSearchedCompletely) } -> { logStreamName :: NullOrUndefined (LogStreamName), searchedCompletely :: NullOrUndefined (LogStreamSearchedCompletely) }) -> SearchedLogStream
```

Constructs SearchedLogStream's fields from required parameters

#### `SearchedLogStreams`

``` purescript
newtype SearchedLogStreams
  = SearchedLogStreams (Array SearchedLogStream)
```

##### Instances
``` purescript
Newtype SearchedLogStreams _
Generic SearchedLogStreams _
Show SearchedLogStreams
Decode SearchedLogStreams
Encode SearchedLogStreams
```

#### `SequenceToken`

``` purescript
newtype SequenceToken
  = SequenceToken String
```

##### Instances
``` purescript
Newtype SequenceToken _
Generic SequenceToken _
Show SequenceToken
Decode SequenceToken
Encode SequenceToken
```

#### `ServiceUnavailableException`

``` purescript
newtype ServiceUnavailableException
  = ServiceUnavailableException NoArguments
```

<p>The service cannot complete the request.</p>

##### Instances
``` purescript
Newtype ServiceUnavailableException _
Generic ServiceUnavailableException _
Show ServiceUnavailableException
Decode ServiceUnavailableException
Encode ServiceUnavailableException
```

#### `StartFromHead`

``` purescript
newtype StartFromHead
  = StartFromHead Boolean
```

##### Instances
``` purescript
Newtype StartFromHead _
Generic StartFromHead _
Show StartFromHead
Decode StartFromHead
Encode StartFromHead
```

#### `StoredBytes`

``` purescript
newtype StoredBytes
  = StoredBytes Number
```

##### Instances
``` purescript
Newtype StoredBytes _
Generic StoredBytes _
Show StoredBytes
Decode StoredBytes
Encode StoredBytes
```

#### `SubscriptionFilter`

``` purescript
newtype SubscriptionFilter
  = SubscriptionFilter { filterName :: NullOrUndefined (FilterName), logGroupName :: NullOrUndefined (LogGroupName), filterPattern :: NullOrUndefined (FilterPattern), destinationArn :: NullOrUndefined (DestinationArn), roleArn :: NullOrUndefined (RoleArn), distribution :: NullOrUndefined (Distribution), creationTime :: NullOrUndefined (Timestamp) }
```

<p>Represents a subscription filter.</p>

##### Instances
``` purescript
Newtype SubscriptionFilter _
Generic SubscriptionFilter _
Show SubscriptionFilter
Decode SubscriptionFilter
Encode SubscriptionFilter
```

#### `newSubscriptionFilter`

``` purescript
newSubscriptionFilter :: SubscriptionFilter
```

Constructs SubscriptionFilter from required parameters

#### `newSubscriptionFilter'`

``` purescript
newSubscriptionFilter' :: ({ filterName :: NullOrUndefined (FilterName), logGroupName :: NullOrUndefined (LogGroupName), filterPattern :: NullOrUndefined (FilterPattern), destinationArn :: NullOrUndefined (DestinationArn), roleArn :: NullOrUndefined (RoleArn), distribution :: NullOrUndefined (Distribution), creationTime :: NullOrUndefined (Timestamp) } -> { filterName :: NullOrUndefined (FilterName), logGroupName :: NullOrUndefined (LogGroupName), filterPattern :: NullOrUndefined (FilterPattern), destinationArn :: NullOrUndefined (DestinationArn), roleArn :: NullOrUndefined (RoleArn), distribution :: NullOrUndefined (Distribution), creationTime :: NullOrUndefined (Timestamp) }) -> SubscriptionFilter
```

Constructs SubscriptionFilter's fields from required parameters

#### `SubscriptionFilters`

``` purescript
newtype SubscriptionFilters
  = SubscriptionFilters (Array SubscriptionFilter)
```

##### Instances
``` purescript
Newtype SubscriptionFilters _
Generic SubscriptionFilters _
Show SubscriptionFilters
Decode SubscriptionFilters
Encode SubscriptionFilters
```

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array TagKey)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagLogGroupRequest`

``` purescript
newtype TagLogGroupRequest
  = TagLogGroupRequest { logGroupName :: LogGroupName, tags :: Tags }
```

##### Instances
``` purescript
Newtype TagLogGroupRequest _
Generic TagLogGroupRequest _
Show TagLogGroupRequest
Decode TagLogGroupRequest
Encode TagLogGroupRequest
```

#### `newTagLogGroupRequest`

``` purescript
newTagLogGroupRequest :: LogGroupName -> Tags -> TagLogGroupRequest
```

Constructs TagLogGroupRequest from required parameters

#### `newTagLogGroupRequest'`

``` purescript
newTagLogGroupRequest' :: LogGroupName -> Tags -> ({ logGroupName :: LogGroupName, tags :: Tags } -> { logGroupName :: LogGroupName, tags :: Tags }) -> TagLogGroupRequest
```

Constructs TagLogGroupRequest's fields from required parameters

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `Tags`

``` purescript
newtype Tags
  = Tags (StrMap TagValue)
```

##### Instances
``` purescript
Newtype Tags _
Generic Tags _
Show Tags
Decode Tags
Encode Tags
```

#### `TargetArn`

``` purescript
newtype TargetArn
  = TargetArn String
```

##### Instances
``` purescript
Newtype TargetArn _
Generic TargetArn _
Show TargetArn
Decode TargetArn
Encode TargetArn
```

#### `TestEventMessages`

``` purescript
newtype TestEventMessages
  = TestEventMessages (Array EventMessage)
```

##### Instances
``` purescript
Newtype TestEventMessages _
Generic TestEventMessages _
Show TestEventMessages
Decode TestEventMessages
Encode TestEventMessages
```

#### `TestMetricFilterRequest`

``` purescript
newtype TestMetricFilterRequest
  = TestMetricFilterRequest { filterPattern :: FilterPattern, logEventMessages :: TestEventMessages }
```

##### Instances
``` purescript
Newtype TestMetricFilterRequest _
Generic TestMetricFilterRequest _
Show TestMetricFilterRequest
Decode TestMetricFilterRequest
Encode TestMetricFilterRequest
```

#### `newTestMetricFilterRequest`

``` purescript
newTestMetricFilterRequest :: FilterPattern -> TestEventMessages -> TestMetricFilterRequest
```

Constructs TestMetricFilterRequest from required parameters

#### `newTestMetricFilterRequest'`

``` purescript
newTestMetricFilterRequest' :: FilterPattern -> TestEventMessages -> ({ filterPattern :: FilterPattern, logEventMessages :: TestEventMessages } -> { filterPattern :: FilterPattern, logEventMessages :: TestEventMessages }) -> TestMetricFilterRequest
```

Constructs TestMetricFilterRequest's fields from required parameters

#### `TestMetricFilterResponse`

``` purescript
newtype TestMetricFilterResponse
  = TestMetricFilterResponse { matches :: NullOrUndefined (MetricFilterMatches) }
```

##### Instances
``` purescript
Newtype TestMetricFilterResponse _
Generic TestMetricFilterResponse _
Show TestMetricFilterResponse
Decode TestMetricFilterResponse
Encode TestMetricFilterResponse
```

#### `newTestMetricFilterResponse`

``` purescript
newTestMetricFilterResponse :: TestMetricFilterResponse
```

Constructs TestMetricFilterResponse from required parameters

#### `newTestMetricFilterResponse'`

``` purescript
newTestMetricFilterResponse' :: ({ matches :: NullOrUndefined (MetricFilterMatches) } -> { matches :: NullOrUndefined (MetricFilterMatches) }) -> TestMetricFilterResponse
```

Constructs TestMetricFilterResponse's fields from required parameters

#### `Token`

``` purescript
newtype Token
  = Token String
```

##### Instances
``` purescript
Newtype Token _
Generic Token _
Show Token
Decode Token
Encode Token
```

#### `UntagLogGroupRequest`

``` purescript
newtype UntagLogGroupRequest
  = UntagLogGroupRequest { logGroupName :: LogGroupName, tags :: TagList }
```

##### Instances
``` purescript
Newtype UntagLogGroupRequest _
Generic UntagLogGroupRequest _
Show UntagLogGroupRequest
Decode UntagLogGroupRequest
Encode UntagLogGroupRequest
```

#### `newUntagLogGroupRequest`

``` purescript
newUntagLogGroupRequest :: LogGroupName -> TagList -> UntagLogGroupRequest
```

Constructs UntagLogGroupRequest from required parameters

#### `newUntagLogGroupRequest'`

``` purescript
newUntagLogGroupRequest' :: LogGroupName -> TagList -> ({ logGroupName :: LogGroupName, tags :: TagList } -> { logGroupName :: LogGroupName, tags :: TagList }) -> UntagLogGroupRequest
```

Constructs UntagLogGroupRequest's fields from required parameters

#### `Value`

``` purescript
newtype Value
  = Value String
```

##### Instances
``` purescript
Newtype Value _
Generic Value _
Show Value
Decode Value
Encode Value
```


