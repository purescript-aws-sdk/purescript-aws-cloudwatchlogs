## Module AWS.CloudWatchLogs.Types

#### `options`

``` purescript
options :: Options
```

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
  = CreateExportTaskRequest { taskName :: Maybe (ExportTaskName), logGroupName :: LogGroupName, logStreamNamePrefix :: Maybe (LogStreamName), from :: Timestamp, to :: Timestamp, destination :: ExportDestinationBucket, destinationPrefix :: Maybe (ExportDestinationPrefix) }
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
newCreateExportTaskRequest' :: ExportDestinationBucket -> Timestamp -> LogGroupName -> Timestamp -> ({ taskName :: Maybe (ExportTaskName), logGroupName :: LogGroupName, logStreamNamePrefix :: Maybe (LogStreamName), from :: Timestamp, to :: Timestamp, destination :: ExportDestinationBucket, destinationPrefix :: Maybe (ExportDestinationPrefix) } -> { taskName :: Maybe (ExportTaskName), logGroupName :: LogGroupName, logStreamNamePrefix :: Maybe (LogStreamName), from :: Timestamp, to :: Timestamp, destination :: ExportDestinationBucket, destinationPrefix :: Maybe (ExportDestinationPrefix) }) -> CreateExportTaskRequest
```

Constructs CreateExportTaskRequest's fields from required parameters

#### `CreateExportTaskResponse`

``` purescript
newtype CreateExportTaskResponse
  = CreateExportTaskResponse { taskId :: Maybe (ExportTaskId) }
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
newCreateExportTaskResponse' :: ({ taskId :: Maybe (ExportTaskId) } -> { taskId :: Maybe (ExportTaskId) }) -> CreateExportTaskResponse
```

Constructs CreateExportTaskResponse's fields from required parameters

#### `CreateLogGroupRequest`

``` purescript
newtype CreateLogGroupRequest
  = CreateLogGroupRequest { logGroupName :: LogGroupName, kmsKeyId :: Maybe (KmsKeyId), tags :: Maybe (Tags) }
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
newCreateLogGroupRequest' :: LogGroupName -> ({ logGroupName :: LogGroupName, kmsKeyId :: Maybe (KmsKeyId), tags :: Maybe (Tags) } -> { logGroupName :: LogGroupName, kmsKeyId :: Maybe (KmsKeyId), tags :: Maybe (Tags) }) -> CreateLogGroupRequest
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
  = DataAlreadyAcceptedException { expectedSequenceToken :: Maybe (SequenceToken) }
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
newDataAlreadyAcceptedException' :: ({ expectedSequenceToken :: Maybe (SequenceToken) } -> { expectedSequenceToken :: Maybe (SequenceToken) }) -> DataAlreadyAcceptedException
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
  = DeleteResourcePolicyRequest { policyName :: Maybe (PolicyName) }
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
newDeleteResourcePolicyRequest' :: ({ policyName :: Maybe (PolicyName) } -> { policyName :: Maybe (PolicyName) }) -> DeleteResourcePolicyRequest
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
  = DescribeDestinationsRequest { "DestinationNamePrefix" :: Maybe (DestinationName), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) }
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
newDescribeDestinationsRequest' :: ({ "DestinationNamePrefix" :: Maybe (DestinationName), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) } -> { "DestinationNamePrefix" :: Maybe (DestinationName), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) }) -> DescribeDestinationsRequest
```

Constructs DescribeDestinationsRequest's fields from required parameters

#### `DescribeDestinationsResponse`

``` purescript
newtype DescribeDestinationsResponse
  = DescribeDestinationsResponse { destinations :: Maybe (Destinations), nextToken :: Maybe (NextToken) }
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
newDescribeDestinationsResponse' :: ({ destinations :: Maybe (Destinations), nextToken :: Maybe (NextToken) } -> { destinations :: Maybe (Destinations), nextToken :: Maybe (NextToken) }) -> DescribeDestinationsResponse
```

Constructs DescribeDestinationsResponse's fields from required parameters

#### `DescribeExportTasksRequest`

``` purescript
newtype DescribeExportTasksRequest
  = DescribeExportTasksRequest { taskId :: Maybe (ExportTaskId), statusCode :: Maybe (ExportTaskStatusCode), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) }
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
newDescribeExportTasksRequest' :: ({ taskId :: Maybe (ExportTaskId), statusCode :: Maybe (ExportTaskStatusCode), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) } -> { taskId :: Maybe (ExportTaskId), statusCode :: Maybe (ExportTaskStatusCode), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) }) -> DescribeExportTasksRequest
```

Constructs DescribeExportTasksRequest's fields from required parameters

#### `DescribeExportTasksResponse`

``` purescript
newtype DescribeExportTasksResponse
  = DescribeExportTasksResponse { exportTasks :: Maybe (ExportTasks), nextToken :: Maybe (NextToken) }
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
newDescribeExportTasksResponse' :: ({ exportTasks :: Maybe (ExportTasks), nextToken :: Maybe (NextToken) } -> { exportTasks :: Maybe (ExportTasks), nextToken :: Maybe (NextToken) }) -> DescribeExportTasksResponse
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
  = DescribeLogGroupsRequest { logGroupNamePrefix :: Maybe (LogGroupName), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) }
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
newDescribeLogGroupsRequest' :: ({ logGroupNamePrefix :: Maybe (LogGroupName), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) } -> { logGroupNamePrefix :: Maybe (LogGroupName), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) }) -> DescribeLogGroupsRequest
```

Constructs DescribeLogGroupsRequest's fields from required parameters

#### `DescribeLogGroupsResponse`

``` purescript
newtype DescribeLogGroupsResponse
  = DescribeLogGroupsResponse { logGroups :: Maybe (LogGroups), nextToken :: Maybe (NextToken) }
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
newDescribeLogGroupsResponse' :: ({ logGroups :: Maybe (LogGroups), nextToken :: Maybe (NextToken) } -> { logGroups :: Maybe (LogGroups), nextToken :: Maybe (NextToken) }) -> DescribeLogGroupsResponse
```

Constructs DescribeLogGroupsResponse's fields from required parameters

#### `DescribeLogStreamsRequest`

``` purescript
newtype DescribeLogStreamsRequest
  = DescribeLogStreamsRequest { logGroupName :: LogGroupName, logStreamNamePrefix :: Maybe (LogStreamName), orderBy :: Maybe (OrderBy), descending :: Maybe (Descending), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) }
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
newDescribeLogStreamsRequest' :: LogGroupName -> ({ logGroupName :: LogGroupName, logStreamNamePrefix :: Maybe (LogStreamName), orderBy :: Maybe (OrderBy), descending :: Maybe (Descending), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) } -> { logGroupName :: LogGroupName, logStreamNamePrefix :: Maybe (LogStreamName), orderBy :: Maybe (OrderBy), descending :: Maybe (Descending), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) }) -> DescribeLogStreamsRequest
```

Constructs DescribeLogStreamsRequest's fields from required parameters

#### `DescribeLogStreamsResponse`

``` purescript
newtype DescribeLogStreamsResponse
  = DescribeLogStreamsResponse { logStreams :: Maybe (LogStreams), nextToken :: Maybe (NextToken) }
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
newDescribeLogStreamsResponse' :: ({ logStreams :: Maybe (LogStreams), nextToken :: Maybe (NextToken) } -> { logStreams :: Maybe (LogStreams), nextToken :: Maybe (NextToken) }) -> DescribeLogStreamsResponse
```

Constructs DescribeLogStreamsResponse's fields from required parameters

#### `DescribeMetricFiltersRequest`

``` purescript
newtype DescribeMetricFiltersRequest
  = DescribeMetricFiltersRequest { logGroupName :: Maybe (LogGroupName), filterNamePrefix :: Maybe (FilterName), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit), metricName :: Maybe (MetricName), metricNamespace :: Maybe (MetricNamespace) }
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
newDescribeMetricFiltersRequest' :: ({ logGroupName :: Maybe (LogGroupName), filterNamePrefix :: Maybe (FilterName), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit), metricName :: Maybe (MetricName), metricNamespace :: Maybe (MetricNamespace) } -> { logGroupName :: Maybe (LogGroupName), filterNamePrefix :: Maybe (FilterName), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit), metricName :: Maybe (MetricName), metricNamespace :: Maybe (MetricNamespace) }) -> DescribeMetricFiltersRequest
```

Constructs DescribeMetricFiltersRequest's fields from required parameters

#### `DescribeMetricFiltersResponse`

``` purescript
newtype DescribeMetricFiltersResponse
  = DescribeMetricFiltersResponse { metricFilters :: Maybe (MetricFilters), nextToken :: Maybe (NextToken) }
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
newDescribeMetricFiltersResponse' :: ({ metricFilters :: Maybe (MetricFilters), nextToken :: Maybe (NextToken) } -> { metricFilters :: Maybe (MetricFilters), nextToken :: Maybe (NextToken) }) -> DescribeMetricFiltersResponse
```

Constructs DescribeMetricFiltersResponse's fields from required parameters

#### `DescribeResourcePoliciesRequest`

``` purescript
newtype DescribeResourcePoliciesRequest
  = DescribeResourcePoliciesRequest { nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) }
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
newDescribeResourcePoliciesRequest' :: ({ nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) } -> { nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) }) -> DescribeResourcePoliciesRequest
```

Constructs DescribeResourcePoliciesRequest's fields from required parameters

#### `DescribeResourcePoliciesResponse`

``` purescript
newtype DescribeResourcePoliciesResponse
  = DescribeResourcePoliciesResponse { resourcePolicies :: Maybe (ResourcePolicies), nextToken :: Maybe (NextToken) }
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
newDescribeResourcePoliciesResponse' :: ({ resourcePolicies :: Maybe (ResourcePolicies), nextToken :: Maybe (NextToken) } -> { resourcePolicies :: Maybe (ResourcePolicies), nextToken :: Maybe (NextToken) }) -> DescribeResourcePoliciesResponse
```

Constructs DescribeResourcePoliciesResponse's fields from required parameters

#### `DescribeSubscriptionFiltersRequest`

``` purescript
newtype DescribeSubscriptionFiltersRequest
  = DescribeSubscriptionFiltersRequest { logGroupName :: LogGroupName, filterNamePrefix :: Maybe (FilterName), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) }
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
newDescribeSubscriptionFiltersRequest' :: LogGroupName -> ({ logGroupName :: LogGroupName, filterNamePrefix :: Maybe (FilterName), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) } -> { logGroupName :: LogGroupName, filterNamePrefix :: Maybe (FilterName), nextToken :: Maybe (NextToken), limit :: Maybe (DescribeLimit) }) -> DescribeSubscriptionFiltersRequest
```

Constructs DescribeSubscriptionFiltersRequest's fields from required parameters

#### `DescribeSubscriptionFiltersResponse`

``` purescript
newtype DescribeSubscriptionFiltersResponse
  = DescribeSubscriptionFiltersResponse { subscriptionFilters :: Maybe (SubscriptionFilters), nextToken :: Maybe (NextToken) }
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
newDescribeSubscriptionFiltersResponse' :: ({ subscriptionFilters :: Maybe (SubscriptionFilters), nextToken :: Maybe (NextToken) } -> { subscriptionFilters :: Maybe (SubscriptionFilters), nextToken :: Maybe (NextToken) }) -> DescribeSubscriptionFiltersResponse
```

Constructs DescribeSubscriptionFiltersResponse's fields from required parameters

#### `Destination`

``` purescript
newtype Destination
  = Destination { destinationName :: Maybe (DestinationName), targetArn :: Maybe (TargetArn), roleArn :: Maybe (RoleArn), accessPolicy :: Maybe (AccessPolicy), arn :: Maybe (Arn), creationTime :: Maybe (Timestamp) }
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
newDestination' :: ({ destinationName :: Maybe (DestinationName), targetArn :: Maybe (TargetArn), roleArn :: Maybe (RoleArn), accessPolicy :: Maybe (AccessPolicy), arn :: Maybe (Arn), creationTime :: Maybe (Timestamp) } -> { destinationName :: Maybe (DestinationName), targetArn :: Maybe (TargetArn), roleArn :: Maybe (RoleArn), accessPolicy :: Maybe (AccessPolicy), arn :: Maybe (Arn), creationTime :: Maybe (Timestamp) }) -> Destination
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
  = ExportTask { taskId :: Maybe (ExportTaskId), taskName :: Maybe (ExportTaskName), logGroupName :: Maybe (LogGroupName), from :: Maybe (Timestamp), to :: Maybe (Timestamp), destination :: Maybe (ExportDestinationBucket), destinationPrefix :: Maybe (ExportDestinationPrefix), status :: Maybe (ExportTaskStatus), executionInfo :: Maybe (ExportTaskExecutionInfo) }
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
newExportTask' :: ({ taskId :: Maybe (ExportTaskId), taskName :: Maybe (ExportTaskName), logGroupName :: Maybe (LogGroupName), from :: Maybe (Timestamp), to :: Maybe (Timestamp), destination :: Maybe (ExportDestinationBucket), destinationPrefix :: Maybe (ExportDestinationPrefix), status :: Maybe (ExportTaskStatus), executionInfo :: Maybe (ExportTaskExecutionInfo) } -> { taskId :: Maybe (ExportTaskId), taskName :: Maybe (ExportTaskName), logGroupName :: Maybe (LogGroupName), from :: Maybe (Timestamp), to :: Maybe (Timestamp), destination :: Maybe (ExportDestinationBucket), destinationPrefix :: Maybe (ExportDestinationPrefix), status :: Maybe (ExportTaskStatus), executionInfo :: Maybe (ExportTaskExecutionInfo) }) -> ExportTask
```

Constructs ExportTask's fields from required parameters

#### `ExportTaskExecutionInfo`

``` purescript
newtype ExportTaskExecutionInfo
  = ExportTaskExecutionInfo { creationTime :: Maybe (Timestamp), completionTime :: Maybe (Timestamp) }
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
newExportTaskExecutionInfo' :: ({ creationTime :: Maybe (Timestamp), completionTime :: Maybe (Timestamp) } -> { creationTime :: Maybe (Timestamp), completionTime :: Maybe (Timestamp) }) -> ExportTaskExecutionInfo
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
  = ExportTaskStatus { code :: Maybe (ExportTaskStatusCode), message :: Maybe (ExportTaskStatusMessage) }
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
newExportTaskStatus' :: ({ code :: Maybe (ExportTaskStatusCode), message :: Maybe (ExportTaskStatusMessage) } -> { code :: Maybe (ExportTaskStatusCode), message :: Maybe (ExportTaskStatusMessage) }) -> ExportTaskStatus
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
  = FilterLogEventsRequest { logGroupName :: LogGroupName, logStreamNames :: Maybe (InputLogStreamNames), startTime :: Maybe (Timestamp), endTime :: Maybe (Timestamp), filterPattern :: Maybe (FilterPattern), nextToken :: Maybe (NextToken), limit :: Maybe (EventsLimit), interleaved :: Maybe (Interleaved) }
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
newFilterLogEventsRequest' :: LogGroupName -> ({ logGroupName :: LogGroupName, logStreamNames :: Maybe (InputLogStreamNames), startTime :: Maybe (Timestamp), endTime :: Maybe (Timestamp), filterPattern :: Maybe (FilterPattern), nextToken :: Maybe (NextToken), limit :: Maybe (EventsLimit), interleaved :: Maybe (Interleaved) } -> { logGroupName :: LogGroupName, logStreamNames :: Maybe (InputLogStreamNames), startTime :: Maybe (Timestamp), endTime :: Maybe (Timestamp), filterPattern :: Maybe (FilterPattern), nextToken :: Maybe (NextToken), limit :: Maybe (EventsLimit), interleaved :: Maybe (Interleaved) }) -> FilterLogEventsRequest
```

Constructs FilterLogEventsRequest's fields from required parameters

#### `FilterLogEventsResponse`

``` purescript
newtype FilterLogEventsResponse
  = FilterLogEventsResponse { events :: Maybe (FilteredLogEvents), searchedLogStreams :: Maybe (SearchedLogStreams), nextToken :: Maybe (NextToken) }
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
newFilterLogEventsResponse' :: ({ events :: Maybe (FilteredLogEvents), searchedLogStreams :: Maybe (SearchedLogStreams), nextToken :: Maybe (NextToken) } -> { events :: Maybe (FilteredLogEvents), searchedLogStreams :: Maybe (SearchedLogStreams), nextToken :: Maybe (NextToken) }) -> FilterLogEventsResponse
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
  = FilteredLogEvent { logStreamName :: Maybe (LogStreamName), timestamp :: Maybe (Timestamp), message :: Maybe (EventMessage), ingestionTime :: Maybe (Timestamp), eventId :: Maybe (EventId) }
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
newFilteredLogEvent' :: ({ logStreamName :: Maybe (LogStreamName), timestamp :: Maybe (Timestamp), message :: Maybe (EventMessage), ingestionTime :: Maybe (Timestamp), eventId :: Maybe (EventId) } -> { logStreamName :: Maybe (LogStreamName), timestamp :: Maybe (Timestamp), message :: Maybe (EventMessage), ingestionTime :: Maybe (Timestamp), eventId :: Maybe (EventId) }) -> FilteredLogEvent
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
  = GetLogEventsRequest { logGroupName :: LogGroupName, logStreamName :: LogStreamName, startTime :: Maybe (Timestamp), endTime :: Maybe (Timestamp), nextToken :: Maybe (NextToken), limit :: Maybe (EventsLimit), startFromHead :: Maybe (StartFromHead) }
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
newGetLogEventsRequest' :: LogGroupName -> LogStreamName -> ({ logGroupName :: LogGroupName, logStreamName :: LogStreamName, startTime :: Maybe (Timestamp), endTime :: Maybe (Timestamp), nextToken :: Maybe (NextToken), limit :: Maybe (EventsLimit), startFromHead :: Maybe (StartFromHead) } -> { logGroupName :: LogGroupName, logStreamName :: LogStreamName, startTime :: Maybe (Timestamp), endTime :: Maybe (Timestamp), nextToken :: Maybe (NextToken), limit :: Maybe (EventsLimit), startFromHead :: Maybe (StartFromHead) }) -> GetLogEventsRequest
```

Constructs GetLogEventsRequest's fields from required parameters

#### `GetLogEventsResponse`

``` purescript
newtype GetLogEventsResponse
  = GetLogEventsResponse { events :: Maybe (OutputLogEvents), nextForwardToken :: Maybe (NextToken), nextBackwardToken :: Maybe (NextToken) }
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
newGetLogEventsResponse' :: ({ events :: Maybe (OutputLogEvents), nextForwardToken :: Maybe (NextToken), nextBackwardToken :: Maybe (NextToken) } -> { events :: Maybe (OutputLogEvents), nextForwardToken :: Maybe (NextToken), nextBackwardToken :: Maybe (NextToken) }) -> GetLogEventsResponse
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
  = InvalidSequenceTokenException { expectedSequenceToken :: Maybe (SequenceToken) }
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
newInvalidSequenceTokenException' :: ({ expectedSequenceToken :: Maybe (SequenceToken) } -> { expectedSequenceToken :: Maybe (SequenceToken) }) -> InvalidSequenceTokenException
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
  = ListTagsLogGroupResponse { tags :: Maybe (Tags) }
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
newListTagsLogGroupResponse' :: ({ tags :: Maybe (Tags) } -> { tags :: Maybe (Tags) }) -> ListTagsLogGroupResponse
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
  = LogGroup { logGroupName :: Maybe (LogGroupName), creationTime :: Maybe (Timestamp), retentionInDays :: Maybe (Days), metricFilterCount :: Maybe (FilterCount), arn :: Maybe (Arn), storedBytes :: Maybe (StoredBytes), kmsKeyId :: Maybe (KmsKeyId) }
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
newLogGroup' :: ({ logGroupName :: Maybe (LogGroupName), creationTime :: Maybe (Timestamp), retentionInDays :: Maybe (Days), metricFilterCount :: Maybe (FilterCount), arn :: Maybe (Arn), storedBytes :: Maybe (StoredBytes), kmsKeyId :: Maybe (KmsKeyId) } -> { logGroupName :: Maybe (LogGroupName), creationTime :: Maybe (Timestamp), retentionInDays :: Maybe (Days), metricFilterCount :: Maybe (FilterCount), arn :: Maybe (Arn), storedBytes :: Maybe (StoredBytes), kmsKeyId :: Maybe (KmsKeyId) }) -> LogGroup
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
  = LogStream { logStreamName :: Maybe (LogStreamName), creationTime :: Maybe (Timestamp), firstEventTimestamp :: Maybe (Timestamp), lastEventTimestamp :: Maybe (Timestamp), lastIngestionTime :: Maybe (Timestamp), uploadSequenceToken :: Maybe (SequenceToken), arn :: Maybe (Arn), storedBytes :: Maybe (StoredBytes) }
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
newLogStream' :: ({ logStreamName :: Maybe (LogStreamName), creationTime :: Maybe (Timestamp), firstEventTimestamp :: Maybe (Timestamp), lastEventTimestamp :: Maybe (Timestamp), lastIngestionTime :: Maybe (Timestamp), uploadSequenceToken :: Maybe (SequenceToken), arn :: Maybe (Arn), storedBytes :: Maybe (StoredBytes) } -> { logStreamName :: Maybe (LogStreamName), creationTime :: Maybe (Timestamp), firstEventTimestamp :: Maybe (Timestamp), lastEventTimestamp :: Maybe (Timestamp), lastIngestionTime :: Maybe (Timestamp), uploadSequenceToken :: Maybe (SequenceToken), arn :: Maybe (Arn), storedBytes :: Maybe (StoredBytes) }) -> LogStream
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
  = MetricFilter { filterName :: Maybe (FilterName), filterPattern :: Maybe (FilterPattern), metricTransformations :: Maybe (MetricTransformations), creationTime :: Maybe (Timestamp), logGroupName :: Maybe (LogGroupName) }
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
newMetricFilter' :: ({ filterName :: Maybe (FilterName), filterPattern :: Maybe (FilterPattern), metricTransformations :: Maybe (MetricTransformations), creationTime :: Maybe (Timestamp), logGroupName :: Maybe (LogGroupName) } -> { filterName :: Maybe (FilterName), filterPattern :: Maybe (FilterPattern), metricTransformations :: Maybe (MetricTransformations), creationTime :: Maybe (Timestamp), logGroupName :: Maybe (LogGroupName) }) -> MetricFilter
```

Constructs MetricFilter's fields from required parameters

#### `MetricFilterMatchRecord`

``` purescript
newtype MetricFilterMatchRecord
  = MetricFilterMatchRecord { eventNumber :: Maybe (EventNumber), eventMessage :: Maybe (EventMessage), extractedValues :: Maybe (ExtractedValues) }
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
newMetricFilterMatchRecord' :: ({ eventNumber :: Maybe (EventNumber), eventMessage :: Maybe (EventMessage), extractedValues :: Maybe (ExtractedValues) } -> { eventNumber :: Maybe (EventNumber), eventMessage :: Maybe (EventMessage), extractedValues :: Maybe (ExtractedValues) }) -> MetricFilterMatchRecord
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
  = MetricTransformation { metricName :: MetricName, metricNamespace :: MetricNamespace, metricValue :: MetricValue, defaultValue :: Maybe (DefaultValue) }
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
newMetricTransformation' :: MetricName -> MetricNamespace -> MetricValue -> ({ metricName :: MetricName, metricNamespace :: MetricNamespace, metricValue :: MetricValue, defaultValue :: Maybe (DefaultValue) } -> { metricName :: MetricName, metricNamespace :: MetricNamespace, metricValue :: MetricValue, defaultValue :: Maybe (DefaultValue) }) -> MetricTransformation
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
  = OutputLogEvent { timestamp :: Maybe (Timestamp), message :: Maybe (EventMessage), ingestionTime :: Maybe (Timestamp) }
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
newOutputLogEvent' :: ({ timestamp :: Maybe (Timestamp), message :: Maybe (EventMessage), ingestionTime :: Maybe (Timestamp) } -> { timestamp :: Maybe (Timestamp), message :: Maybe (EventMessage), ingestionTime :: Maybe (Timestamp) }) -> OutputLogEvent
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
  = PutDestinationResponse { destination :: Maybe (Destination) }
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
newPutDestinationResponse' :: ({ destination :: Maybe (Destination) } -> { destination :: Maybe (Destination) }) -> PutDestinationResponse
```

Constructs PutDestinationResponse's fields from required parameters

#### `PutLogEventsRequest`

``` purescript
newtype PutLogEventsRequest
  = PutLogEventsRequest { logGroupName :: LogGroupName, logStreamName :: LogStreamName, logEvents :: InputLogEvents, sequenceToken :: Maybe (SequenceToken) }
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
newPutLogEventsRequest' :: InputLogEvents -> LogGroupName -> LogStreamName -> ({ logGroupName :: LogGroupName, logStreamName :: LogStreamName, logEvents :: InputLogEvents, sequenceToken :: Maybe (SequenceToken) } -> { logGroupName :: LogGroupName, logStreamName :: LogStreamName, logEvents :: InputLogEvents, sequenceToken :: Maybe (SequenceToken) }) -> PutLogEventsRequest
```

Constructs PutLogEventsRequest's fields from required parameters

#### `PutLogEventsResponse`

``` purescript
newtype PutLogEventsResponse
  = PutLogEventsResponse { nextSequenceToken :: Maybe (SequenceToken), rejectedLogEventsInfo :: Maybe (RejectedLogEventsInfo) }
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
newPutLogEventsResponse' :: ({ nextSequenceToken :: Maybe (SequenceToken), rejectedLogEventsInfo :: Maybe (RejectedLogEventsInfo) } -> { nextSequenceToken :: Maybe (SequenceToken), rejectedLogEventsInfo :: Maybe (RejectedLogEventsInfo) }) -> PutLogEventsResponse
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
  = PutResourcePolicyRequest { policyName :: Maybe (PolicyName), policyDocument :: Maybe (PolicyDocument) }
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
newPutResourcePolicyRequest' :: ({ policyName :: Maybe (PolicyName), policyDocument :: Maybe (PolicyDocument) } -> { policyName :: Maybe (PolicyName), policyDocument :: Maybe (PolicyDocument) }) -> PutResourcePolicyRequest
```

Constructs PutResourcePolicyRequest's fields from required parameters

#### `PutResourcePolicyResponse`

``` purescript
newtype PutResourcePolicyResponse
  = PutResourcePolicyResponse { resourcePolicy :: Maybe (ResourcePolicy) }
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
newPutResourcePolicyResponse' :: ({ resourcePolicy :: Maybe (ResourcePolicy) } -> { resourcePolicy :: Maybe (ResourcePolicy) }) -> PutResourcePolicyResponse
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
  = PutSubscriptionFilterRequest { logGroupName :: LogGroupName, filterName :: FilterName, filterPattern :: FilterPattern, destinationArn :: DestinationArn, roleArn :: Maybe (RoleArn), distribution :: Maybe (Distribution) }
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
newPutSubscriptionFilterRequest' :: DestinationArn -> FilterName -> FilterPattern -> LogGroupName -> ({ logGroupName :: LogGroupName, filterName :: FilterName, filterPattern :: FilterPattern, destinationArn :: DestinationArn, roleArn :: Maybe (RoleArn), distribution :: Maybe (Distribution) } -> { logGroupName :: LogGroupName, filterName :: FilterName, filterPattern :: FilterPattern, destinationArn :: DestinationArn, roleArn :: Maybe (RoleArn), distribution :: Maybe (Distribution) }) -> PutSubscriptionFilterRequest
```

Constructs PutSubscriptionFilterRequest's fields from required parameters

#### `RejectedLogEventsInfo`

``` purescript
newtype RejectedLogEventsInfo
  = RejectedLogEventsInfo { tooNewLogEventStartIndex :: Maybe (LogEventIndex), tooOldLogEventEndIndex :: Maybe (LogEventIndex), expiredLogEventEndIndex :: Maybe (LogEventIndex) }
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
newRejectedLogEventsInfo' :: ({ tooNewLogEventStartIndex :: Maybe (LogEventIndex), tooOldLogEventEndIndex :: Maybe (LogEventIndex), expiredLogEventEndIndex :: Maybe (LogEventIndex) } -> { tooNewLogEventStartIndex :: Maybe (LogEventIndex), tooOldLogEventEndIndex :: Maybe (LogEventIndex), expiredLogEventEndIndex :: Maybe (LogEventIndex) }) -> RejectedLogEventsInfo
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
  = ResourcePolicy { policyName :: Maybe (PolicyName), policyDocument :: Maybe (PolicyDocument), lastUpdatedTime :: Maybe (Timestamp) }
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
newResourcePolicy' :: ({ policyName :: Maybe (PolicyName), policyDocument :: Maybe (PolicyDocument), lastUpdatedTime :: Maybe (Timestamp) } -> { policyName :: Maybe (PolicyName), policyDocument :: Maybe (PolicyDocument), lastUpdatedTime :: Maybe (Timestamp) }) -> ResourcePolicy
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
  = SearchedLogStream { logStreamName :: Maybe (LogStreamName), searchedCompletely :: Maybe (LogStreamSearchedCompletely) }
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
newSearchedLogStream' :: ({ logStreamName :: Maybe (LogStreamName), searchedCompletely :: Maybe (LogStreamSearchedCompletely) } -> { logStreamName :: Maybe (LogStreamName), searchedCompletely :: Maybe (LogStreamSearchedCompletely) }) -> SearchedLogStream
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
  = SubscriptionFilter { filterName :: Maybe (FilterName), logGroupName :: Maybe (LogGroupName), filterPattern :: Maybe (FilterPattern), destinationArn :: Maybe (DestinationArn), roleArn :: Maybe (RoleArn), distribution :: Maybe (Distribution), creationTime :: Maybe (Timestamp) }
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
newSubscriptionFilter' :: ({ filterName :: Maybe (FilterName), logGroupName :: Maybe (LogGroupName), filterPattern :: Maybe (FilterPattern), destinationArn :: Maybe (DestinationArn), roleArn :: Maybe (RoleArn), distribution :: Maybe (Distribution), creationTime :: Maybe (Timestamp) } -> { filterName :: Maybe (FilterName), logGroupName :: Maybe (LogGroupName), filterPattern :: Maybe (FilterPattern), destinationArn :: Maybe (DestinationArn), roleArn :: Maybe (RoleArn), distribution :: Maybe (Distribution), creationTime :: Maybe (Timestamp) }) -> SubscriptionFilter
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
  = TestMetricFilterResponse { matches :: Maybe (MetricFilterMatches) }
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
newTestMetricFilterResponse' :: ({ matches :: Maybe (MetricFilterMatches) } -> { matches :: Maybe (MetricFilterMatches) }) -> TestMetricFilterResponse
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


