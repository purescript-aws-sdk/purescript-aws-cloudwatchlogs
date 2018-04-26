
module AWS.CloudWatchLogs.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AccessPolicy = AccessPolicy String
derive instance newtypeAccessPolicy :: Newtype AccessPolicy _
derive instance repGenericAccessPolicy :: Generic AccessPolicy _
instance showAccessPolicy :: Show AccessPolicy where show = genericShow
instance decodeAccessPolicy :: Decode AccessPolicy where decode = genericDecode options
instance encodeAccessPolicy :: Encode AccessPolicy where encode = genericEncode options



newtype Arn = Arn String
derive instance newtypeArn :: Newtype Arn _
derive instance repGenericArn :: Generic Arn _
instance showArn :: Show Arn where show = genericShow
instance decodeArn :: Decode Arn where decode = genericDecode options
instance encodeArn :: Encode Arn where encode = genericEncode options



newtype AssociateKmsKeyRequest = AssociateKmsKeyRequest 
  { "logGroupName" :: (LogGroupName)
  , "kmsKeyId" :: (KmsKeyId)
  }
derive instance newtypeAssociateKmsKeyRequest :: Newtype AssociateKmsKeyRequest _
derive instance repGenericAssociateKmsKeyRequest :: Generic AssociateKmsKeyRequest _
instance showAssociateKmsKeyRequest :: Show AssociateKmsKeyRequest where show = genericShow
instance decodeAssociateKmsKeyRequest :: Decode AssociateKmsKeyRequest where decode = genericDecode options
instance encodeAssociateKmsKeyRequest :: Encode AssociateKmsKeyRequest where encode = genericEncode options

-- | Constructs AssociateKmsKeyRequest from required parameters
newAssociateKmsKeyRequest :: KmsKeyId -> LogGroupName -> AssociateKmsKeyRequest
newAssociateKmsKeyRequest _kmsKeyId _logGroupName = AssociateKmsKeyRequest { "kmsKeyId": _kmsKeyId, "logGroupName": _logGroupName }

-- | Constructs AssociateKmsKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateKmsKeyRequest' :: KmsKeyId -> LogGroupName -> ( { "logGroupName" :: (LogGroupName) , "kmsKeyId" :: (KmsKeyId) } -> {"logGroupName" :: (LogGroupName) , "kmsKeyId" :: (KmsKeyId) } ) -> AssociateKmsKeyRequest
newAssociateKmsKeyRequest' _kmsKeyId _logGroupName customize = (AssociateKmsKeyRequest <<< customize) { "kmsKeyId": _kmsKeyId, "logGroupName": _logGroupName }



newtype CancelExportTaskRequest = CancelExportTaskRequest 
  { "taskId" :: (ExportTaskId)
  }
derive instance newtypeCancelExportTaskRequest :: Newtype CancelExportTaskRequest _
derive instance repGenericCancelExportTaskRequest :: Generic CancelExportTaskRequest _
instance showCancelExportTaskRequest :: Show CancelExportTaskRequest where show = genericShow
instance decodeCancelExportTaskRequest :: Decode CancelExportTaskRequest where decode = genericDecode options
instance encodeCancelExportTaskRequest :: Encode CancelExportTaskRequest where encode = genericEncode options

-- | Constructs CancelExportTaskRequest from required parameters
newCancelExportTaskRequest :: ExportTaskId -> CancelExportTaskRequest
newCancelExportTaskRequest _taskId = CancelExportTaskRequest { "taskId": _taskId }

-- | Constructs CancelExportTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelExportTaskRequest' :: ExportTaskId -> ( { "taskId" :: (ExportTaskId) } -> {"taskId" :: (ExportTaskId) } ) -> CancelExportTaskRequest
newCancelExportTaskRequest' _taskId customize = (CancelExportTaskRequest <<< customize) { "taskId": _taskId }



newtype CreateExportTaskRequest = CreateExportTaskRequest 
  { "taskName" :: Maybe (ExportTaskName)
  , "logGroupName" :: (LogGroupName)
  , "logStreamNamePrefix" :: Maybe (LogStreamName)
  , "from" :: (Types.Timestamp)
  , "to" :: (Types.Timestamp)
  , "destination" :: (ExportDestinationBucket)
  , "destinationPrefix" :: Maybe (ExportDestinationPrefix)
  }
derive instance newtypeCreateExportTaskRequest :: Newtype CreateExportTaskRequest _
derive instance repGenericCreateExportTaskRequest :: Generic CreateExportTaskRequest _
instance showCreateExportTaskRequest :: Show CreateExportTaskRequest where show = genericShow
instance decodeCreateExportTaskRequest :: Decode CreateExportTaskRequest where decode = genericDecode options
instance encodeCreateExportTaskRequest :: Encode CreateExportTaskRequest where encode = genericEncode options

-- | Constructs CreateExportTaskRequest from required parameters
newCreateExportTaskRequest :: ExportDestinationBucket -> Types.Timestamp -> LogGroupName -> Types.Timestamp -> CreateExportTaskRequest
newCreateExportTaskRequest _destination _from _logGroupName _to = CreateExportTaskRequest { "destination": _destination, "from": _from, "logGroupName": _logGroupName, "to": _to, "destinationPrefix": Nothing, "logStreamNamePrefix": Nothing, "taskName": Nothing }

-- | Constructs CreateExportTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateExportTaskRequest' :: ExportDestinationBucket -> Types.Timestamp -> LogGroupName -> Types.Timestamp -> ( { "taskName" :: Maybe (ExportTaskName) , "logGroupName" :: (LogGroupName) , "logStreamNamePrefix" :: Maybe (LogStreamName) , "from" :: (Types.Timestamp) , "to" :: (Types.Timestamp) , "destination" :: (ExportDestinationBucket) , "destinationPrefix" :: Maybe (ExportDestinationPrefix) } -> {"taskName" :: Maybe (ExportTaskName) , "logGroupName" :: (LogGroupName) , "logStreamNamePrefix" :: Maybe (LogStreamName) , "from" :: (Types.Timestamp) , "to" :: (Types.Timestamp) , "destination" :: (ExportDestinationBucket) , "destinationPrefix" :: Maybe (ExportDestinationPrefix) } ) -> CreateExportTaskRequest
newCreateExportTaskRequest' _destination _from _logGroupName _to customize = (CreateExportTaskRequest <<< customize) { "destination": _destination, "from": _from, "logGroupName": _logGroupName, "to": _to, "destinationPrefix": Nothing, "logStreamNamePrefix": Nothing, "taskName": Nothing }



newtype CreateExportTaskResponse = CreateExportTaskResponse 
  { "taskId" :: Maybe (ExportTaskId)
  }
derive instance newtypeCreateExportTaskResponse :: Newtype CreateExportTaskResponse _
derive instance repGenericCreateExportTaskResponse :: Generic CreateExportTaskResponse _
instance showCreateExportTaskResponse :: Show CreateExportTaskResponse where show = genericShow
instance decodeCreateExportTaskResponse :: Decode CreateExportTaskResponse where decode = genericDecode options
instance encodeCreateExportTaskResponse :: Encode CreateExportTaskResponse where encode = genericEncode options

-- | Constructs CreateExportTaskResponse from required parameters
newCreateExportTaskResponse :: CreateExportTaskResponse
newCreateExportTaskResponse  = CreateExportTaskResponse { "taskId": Nothing }

-- | Constructs CreateExportTaskResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateExportTaskResponse' :: ( { "taskId" :: Maybe (ExportTaskId) } -> {"taskId" :: Maybe (ExportTaskId) } ) -> CreateExportTaskResponse
newCreateExportTaskResponse'  customize = (CreateExportTaskResponse <<< customize) { "taskId": Nothing }



newtype CreateLogGroupRequest = CreateLogGroupRequest 
  { "logGroupName" :: (LogGroupName)
  , "kmsKeyId" :: Maybe (KmsKeyId)
  , "tags" :: Maybe (Tags)
  }
derive instance newtypeCreateLogGroupRequest :: Newtype CreateLogGroupRequest _
derive instance repGenericCreateLogGroupRequest :: Generic CreateLogGroupRequest _
instance showCreateLogGroupRequest :: Show CreateLogGroupRequest where show = genericShow
instance decodeCreateLogGroupRequest :: Decode CreateLogGroupRequest where decode = genericDecode options
instance encodeCreateLogGroupRequest :: Encode CreateLogGroupRequest where encode = genericEncode options

-- | Constructs CreateLogGroupRequest from required parameters
newCreateLogGroupRequest :: LogGroupName -> CreateLogGroupRequest
newCreateLogGroupRequest _logGroupName = CreateLogGroupRequest { "logGroupName": _logGroupName, "kmsKeyId": Nothing, "tags": Nothing }

-- | Constructs CreateLogGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateLogGroupRequest' :: LogGroupName -> ( { "logGroupName" :: (LogGroupName) , "kmsKeyId" :: Maybe (KmsKeyId) , "tags" :: Maybe (Tags) } -> {"logGroupName" :: (LogGroupName) , "kmsKeyId" :: Maybe (KmsKeyId) , "tags" :: Maybe (Tags) } ) -> CreateLogGroupRequest
newCreateLogGroupRequest' _logGroupName customize = (CreateLogGroupRequest <<< customize) { "logGroupName": _logGroupName, "kmsKeyId": Nothing, "tags": Nothing }



newtype CreateLogStreamRequest = CreateLogStreamRequest 
  { "logGroupName" :: (LogGroupName)
  , "logStreamName" :: (LogStreamName)
  }
derive instance newtypeCreateLogStreamRequest :: Newtype CreateLogStreamRequest _
derive instance repGenericCreateLogStreamRequest :: Generic CreateLogStreamRequest _
instance showCreateLogStreamRequest :: Show CreateLogStreamRequest where show = genericShow
instance decodeCreateLogStreamRequest :: Decode CreateLogStreamRequest where decode = genericDecode options
instance encodeCreateLogStreamRequest :: Encode CreateLogStreamRequest where encode = genericEncode options

-- | Constructs CreateLogStreamRequest from required parameters
newCreateLogStreamRequest :: LogGroupName -> LogStreamName -> CreateLogStreamRequest
newCreateLogStreamRequest _logGroupName _logStreamName = CreateLogStreamRequest { "logGroupName": _logGroupName, "logStreamName": _logStreamName }

-- | Constructs CreateLogStreamRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateLogStreamRequest' :: LogGroupName -> LogStreamName -> ( { "logGroupName" :: (LogGroupName) , "logStreamName" :: (LogStreamName) } -> {"logGroupName" :: (LogGroupName) , "logStreamName" :: (LogStreamName) } ) -> CreateLogStreamRequest
newCreateLogStreamRequest' _logGroupName _logStreamName customize = (CreateLogStreamRequest <<< customize) { "logGroupName": _logGroupName, "logStreamName": _logStreamName }



-- | <p>The event was already logged.</p>
newtype DataAlreadyAcceptedException = DataAlreadyAcceptedException 
  { "expectedSequenceToken" :: Maybe (SequenceToken)
  }
derive instance newtypeDataAlreadyAcceptedException :: Newtype DataAlreadyAcceptedException _
derive instance repGenericDataAlreadyAcceptedException :: Generic DataAlreadyAcceptedException _
instance showDataAlreadyAcceptedException :: Show DataAlreadyAcceptedException where show = genericShow
instance decodeDataAlreadyAcceptedException :: Decode DataAlreadyAcceptedException where decode = genericDecode options
instance encodeDataAlreadyAcceptedException :: Encode DataAlreadyAcceptedException where encode = genericEncode options

-- | Constructs DataAlreadyAcceptedException from required parameters
newDataAlreadyAcceptedException :: DataAlreadyAcceptedException
newDataAlreadyAcceptedException  = DataAlreadyAcceptedException { "expectedSequenceToken": Nothing }

-- | Constructs DataAlreadyAcceptedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDataAlreadyAcceptedException' :: ( { "expectedSequenceToken" :: Maybe (SequenceToken) } -> {"expectedSequenceToken" :: Maybe (SequenceToken) } ) -> DataAlreadyAcceptedException
newDataAlreadyAcceptedException'  customize = (DataAlreadyAcceptedException <<< customize) { "expectedSequenceToken": Nothing }



-- | <p>The number of days to retain the log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, and 3653.</p>
newtype Days = Days Int
derive instance newtypeDays :: Newtype Days _
derive instance repGenericDays :: Generic Days _
instance showDays :: Show Days where show = genericShow
instance decodeDays :: Decode Days where decode = genericDecode options
instance encodeDays :: Encode Days where encode = genericEncode options



newtype DefaultValue = DefaultValue Number
derive instance newtypeDefaultValue :: Newtype DefaultValue _
derive instance repGenericDefaultValue :: Generic DefaultValue _
instance showDefaultValue :: Show DefaultValue where show = genericShow
instance decodeDefaultValue :: Decode DefaultValue where decode = genericDecode options
instance encodeDefaultValue :: Encode DefaultValue where encode = genericEncode options



newtype DeleteDestinationRequest = DeleteDestinationRequest 
  { "destinationName" :: (DestinationName)
  }
derive instance newtypeDeleteDestinationRequest :: Newtype DeleteDestinationRequest _
derive instance repGenericDeleteDestinationRequest :: Generic DeleteDestinationRequest _
instance showDeleteDestinationRequest :: Show DeleteDestinationRequest where show = genericShow
instance decodeDeleteDestinationRequest :: Decode DeleteDestinationRequest where decode = genericDecode options
instance encodeDeleteDestinationRequest :: Encode DeleteDestinationRequest where encode = genericEncode options

-- | Constructs DeleteDestinationRequest from required parameters
newDeleteDestinationRequest :: DestinationName -> DeleteDestinationRequest
newDeleteDestinationRequest _destinationName = DeleteDestinationRequest { "destinationName": _destinationName }

-- | Constructs DeleteDestinationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteDestinationRequest' :: DestinationName -> ( { "destinationName" :: (DestinationName) } -> {"destinationName" :: (DestinationName) } ) -> DeleteDestinationRequest
newDeleteDestinationRequest' _destinationName customize = (DeleteDestinationRequest <<< customize) { "destinationName": _destinationName }



newtype DeleteLogGroupRequest = DeleteLogGroupRequest 
  { "logGroupName" :: (LogGroupName)
  }
derive instance newtypeDeleteLogGroupRequest :: Newtype DeleteLogGroupRequest _
derive instance repGenericDeleteLogGroupRequest :: Generic DeleteLogGroupRequest _
instance showDeleteLogGroupRequest :: Show DeleteLogGroupRequest where show = genericShow
instance decodeDeleteLogGroupRequest :: Decode DeleteLogGroupRequest where decode = genericDecode options
instance encodeDeleteLogGroupRequest :: Encode DeleteLogGroupRequest where encode = genericEncode options

-- | Constructs DeleteLogGroupRequest from required parameters
newDeleteLogGroupRequest :: LogGroupName -> DeleteLogGroupRequest
newDeleteLogGroupRequest _logGroupName = DeleteLogGroupRequest { "logGroupName": _logGroupName }

-- | Constructs DeleteLogGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteLogGroupRequest' :: LogGroupName -> ( { "logGroupName" :: (LogGroupName) } -> {"logGroupName" :: (LogGroupName) } ) -> DeleteLogGroupRequest
newDeleteLogGroupRequest' _logGroupName customize = (DeleteLogGroupRequest <<< customize) { "logGroupName": _logGroupName }



newtype DeleteLogStreamRequest = DeleteLogStreamRequest 
  { "logGroupName" :: (LogGroupName)
  , "logStreamName" :: (LogStreamName)
  }
derive instance newtypeDeleteLogStreamRequest :: Newtype DeleteLogStreamRequest _
derive instance repGenericDeleteLogStreamRequest :: Generic DeleteLogStreamRequest _
instance showDeleteLogStreamRequest :: Show DeleteLogStreamRequest where show = genericShow
instance decodeDeleteLogStreamRequest :: Decode DeleteLogStreamRequest where decode = genericDecode options
instance encodeDeleteLogStreamRequest :: Encode DeleteLogStreamRequest where encode = genericEncode options

-- | Constructs DeleteLogStreamRequest from required parameters
newDeleteLogStreamRequest :: LogGroupName -> LogStreamName -> DeleteLogStreamRequest
newDeleteLogStreamRequest _logGroupName _logStreamName = DeleteLogStreamRequest { "logGroupName": _logGroupName, "logStreamName": _logStreamName }

-- | Constructs DeleteLogStreamRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteLogStreamRequest' :: LogGroupName -> LogStreamName -> ( { "logGroupName" :: (LogGroupName) , "logStreamName" :: (LogStreamName) } -> {"logGroupName" :: (LogGroupName) , "logStreamName" :: (LogStreamName) } ) -> DeleteLogStreamRequest
newDeleteLogStreamRequest' _logGroupName _logStreamName customize = (DeleteLogStreamRequest <<< customize) { "logGroupName": _logGroupName, "logStreamName": _logStreamName }



newtype DeleteMetricFilterRequest = DeleteMetricFilterRequest 
  { "logGroupName" :: (LogGroupName)
  , "filterName" :: (FilterName)
  }
derive instance newtypeDeleteMetricFilterRequest :: Newtype DeleteMetricFilterRequest _
derive instance repGenericDeleteMetricFilterRequest :: Generic DeleteMetricFilterRequest _
instance showDeleteMetricFilterRequest :: Show DeleteMetricFilterRequest where show = genericShow
instance decodeDeleteMetricFilterRequest :: Decode DeleteMetricFilterRequest where decode = genericDecode options
instance encodeDeleteMetricFilterRequest :: Encode DeleteMetricFilterRequest where encode = genericEncode options

-- | Constructs DeleteMetricFilterRequest from required parameters
newDeleteMetricFilterRequest :: FilterName -> LogGroupName -> DeleteMetricFilterRequest
newDeleteMetricFilterRequest _filterName _logGroupName = DeleteMetricFilterRequest { "filterName": _filterName, "logGroupName": _logGroupName }

-- | Constructs DeleteMetricFilterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteMetricFilterRequest' :: FilterName -> LogGroupName -> ( { "logGroupName" :: (LogGroupName) , "filterName" :: (FilterName) } -> {"logGroupName" :: (LogGroupName) , "filterName" :: (FilterName) } ) -> DeleteMetricFilterRequest
newDeleteMetricFilterRequest' _filterName _logGroupName customize = (DeleteMetricFilterRequest <<< customize) { "filterName": _filterName, "logGroupName": _logGroupName }



newtype DeleteResourcePolicyRequest = DeleteResourcePolicyRequest 
  { "policyName" :: Maybe (PolicyName)
  }
derive instance newtypeDeleteResourcePolicyRequest :: Newtype DeleteResourcePolicyRequest _
derive instance repGenericDeleteResourcePolicyRequest :: Generic DeleteResourcePolicyRequest _
instance showDeleteResourcePolicyRequest :: Show DeleteResourcePolicyRequest where show = genericShow
instance decodeDeleteResourcePolicyRequest :: Decode DeleteResourcePolicyRequest where decode = genericDecode options
instance encodeDeleteResourcePolicyRequest :: Encode DeleteResourcePolicyRequest where encode = genericEncode options

-- | Constructs DeleteResourcePolicyRequest from required parameters
newDeleteResourcePolicyRequest :: DeleteResourcePolicyRequest
newDeleteResourcePolicyRequest  = DeleteResourcePolicyRequest { "policyName": Nothing }

-- | Constructs DeleteResourcePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteResourcePolicyRequest' :: ( { "policyName" :: Maybe (PolicyName) } -> {"policyName" :: Maybe (PolicyName) } ) -> DeleteResourcePolicyRequest
newDeleteResourcePolicyRequest'  customize = (DeleteResourcePolicyRequest <<< customize) { "policyName": Nothing }



newtype DeleteRetentionPolicyRequest = DeleteRetentionPolicyRequest 
  { "logGroupName" :: (LogGroupName)
  }
derive instance newtypeDeleteRetentionPolicyRequest :: Newtype DeleteRetentionPolicyRequest _
derive instance repGenericDeleteRetentionPolicyRequest :: Generic DeleteRetentionPolicyRequest _
instance showDeleteRetentionPolicyRequest :: Show DeleteRetentionPolicyRequest where show = genericShow
instance decodeDeleteRetentionPolicyRequest :: Decode DeleteRetentionPolicyRequest where decode = genericDecode options
instance encodeDeleteRetentionPolicyRequest :: Encode DeleteRetentionPolicyRequest where encode = genericEncode options

-- | Constructs DeleteRetentionPolicyRequest from required parameters
newDeleteRetentionPolicyRequest :: LogGroupName -> DeleteRetentionPolicyRequest
newDeleteRetentionPolicyRequest _logGroupName = DeleteRetentionPolicyRequest { "logGroupName": _logGroupName }

-- | Constructs DeleteRetentionPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRetentionPolicyRequest' :: LogGroupName -> ( { "logGroupName" :: (LogGroupName) } -> {"logGroupName" :: (LogGroupName) } ) -> DeleteRetentionPolicyRequest
newDeleteRetentionPolicyRequest' _logGroupName customize = (DeleteRetentionPolicyRequest <<< customize) { "logGroupName": _logGroupName }



newtype DeleteSubscriptionFilterRequest = DeleteSubscriptionFilterRequest 
  { "logGroupName" :: (LogGroupName)
  , "filterName" :: (FilterName)
  }
derive instance newtypeDeleteSubscriptionFilterRequest :: Newtype DeleteSubscriptionFilterRequest _
derive instance repGenericDeleteSubscriptionFilterRequest :: Generic DeleteSubscriptionFilterRequest _
instance showDeleteSubscriptionFilterRequest :: Show DeleteSubscriptionFilterRequest where show = genericShow
instance decodeDeleteSubscriptionFilterRequest :: Decode DeleteSubscriptionFilterRequest where decode = genericDecode options
instance encodeDeleteSubscriptionFilterRequest :: Encode DeleteSubscriptionFilterRequest where encode = genericEncode options

-- | Constructs DeleteSubscriptionFilterRequest from required parameters
newDeleteSubscriptionFilterRequest :: FilterName -> LogGroupName -> DeleteSubscriptionFilterRequest
newDeleteSubscriptionFilterRequest _filterName _logGroupName = DeleteSubscriptionFilterRequest { "filterName": _filterName, "logGroupName": _logGroupName }

-- | Constructs DeleteSubscriptionFilterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSubscriptionFilterRequest' :: FilterName -> LogGroupName -> ( { "logGroupName" :: (LogGroupName) , "filterName" :: (FilterName) } -> {"logGroupName" :: (LogGroupName) , "filterName" :: (FilterName) } ) -> DeleteSubscriptionFilterRequest
newDeleteSubscriptionFilterRequest' _filterName _logGroupName customize = (DeleteSubscriptionFilterRequest <<< customize) { "filterName": _filterName, "logGroupName": _logGroupName }



newtype Descending = Descending Boolean
derive instance newtypeDescending :: Newtype Descending _
derive instance repGenericDescending :: Generic Descending _
instance showDescending :: Show Descending where show = genericShow
instance decodeDescending :: Decode Descending where decode = genericDecode options
instance encodeDescending :: Encode Descending where encode = genericEncode options



newtype DescribeDestinationsRequest = DescribeDestinationsRequest 
  { "DestinationNamePrefix" :: Maybe (DestinationName)
  , "nextToken" :: Maybe (NextToken)
  , "limit" :: Maybe (DescribeLimit)
  }
derive instance newtypeDescribeDestinationsRequest :: Newtype DescribeDestinationsRequest _
derive instance repGenericDescribeDestinationsRequest :: Generic DescribeDestinationsRequest _
instance showDescribeDestinationsRequest :: Show DescribeDestinationsRequest where show = genericShow
instance decodeDescribeDestinationsRequest :: Decode DescribeDestinationsRequest where decode = genericDecode options
instance encodeDescribeDestinationsRequest :: Encode DescribeDestinationsRequest where encode = genericEncode options

-- | Constructs DescribeDestinationsRequest from required parameters
newDescribeDestinationsRequest :: DescribeDestinationsRequest
newDescribeDestinationsRequest  = DescribeDestinationsRequest { "DestinationNamePrefix": Nothing, "limit": Nothing, "nextToken": Nothing }

-- | Constructs DescribeDestinationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDestinationsRequest' :: ( { "DestinationNamePrefix" :: Maybe (DestinationName) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) } -> {"DestinationNamePrefix" :: Maybe (DestinationName) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) } ) -> DescribeDestinationsRequest
newDescribeDestinationsRequest'  customize = (DescribeDestinationsRequest <<< customize) { "DestinationNamePrefix": Nothing, "limit": Nothing, "nextToken": Nothing }



newtype DescribeDestinationsResponse = DescribeDestinationsResponse 
  { "destinations" :: Maybe (Destinations)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeDestinationsResponse :: Newtype DescribeDestinationsResponse _
derive instance repGenericDescribeDestinationsResponse :: Generic DescribeDestinationsResponse _
instance showDescribeDestinationsResponse :: Show DescribeDestinationsResponse where show = genericShow
instance decodeDescribeDestinationsResponse :: Decode DescribeDestinationsResponse where decode = genericDecode options
instance encodeDescribeDestinationsResponse :: Encode DescribeDestinationsResponse where encode = genericEncode options

-- | Constructs DescribeDestinationsResponse from required parameters
newDescribeDestinationsResponse :: DescribeDestinationsResponse
newDescribeDestinationsResponse  = DescribeDestinationsResponse { "destinations": Nothing, "nextToken": Nothing }

-- | Constructs DescribeDestinationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDestinationsResponse' :: ( { "destinations" :: Maybe (Destinations) , "nextToken" :: Maybe (NextToken) } -> {"destinations" :: Maybe (Destinations) , "nextToken" :: Maybe (NextToken) } ) -> DescribeDestinationsResponse
newDescribeDestinationsResponse'  customize = (DescribeDestinationsResponse <<< customize) { "destinations": Nothing, "nextToken": Nothing }



newtype DescribeExportTasksRequest = DescribeExportTasksRequest 
  { "taskId" :: Maybe (ExportTaskId)
  , "statusCode" :: Maybe (ExportTaskStatusCode)
  , "nextToken" :: Maybe (NextToken)
  , "limit" :: Maybe (DescribeLimit)
  }
derive instance newtypeDescribeExportTasksRequest :: Newtype DescribeExportTasksRequest _
derive instance repGenericDescribeExportTasksRequest :: Generic DescribeExportTasksRequest _
instance showDescribeExportTasksRequest :: Show DescribeExportTasksRequest where show = genericShow
instance decodeDescribeExportTasksRequest :: Decode DescribeExportTasksRequest where decode = genericDecode options
instance encodeDescribeExportTasksRequest :: Encode DescribeExportTasksRequest where encode = genericEncode options

-- | Constructs DescribeExportTasksRequest from required parameters
newDescribeExportTasksRequest :: DescribeExportTasksRequest
newDescribeExportTasksRequest  = DescribeExportTasksRequest { "limit": Nothing, "nextToken": Nothing, "statusCode": Nothing, "taskId": Nothing }

-- | Constructs DescribeExportTasksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeExportTasksRequest' :: ( { "taskId" :: Maybe (ExportTaskId) , "statusCode" :: Maybe (ExportTaskStatusCode) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) } -> {"taskId" :: Maybe (ExportTaskId) , "statusCode" :: Maybe (ExportTaskStatusCode) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) } ) -> DescribeExportTasksRequest
newDescribeExportTasksRequest'  customize = (DescribeExportTasksRequest <<< customize) { "limit": Nothing, "nextToken": Nothing, "statusCode": Nothing, "taskId": Nothing }



newtype DescribeExportTasksResponse = DescribeExportTasksResponse 
  { "exportTasks" :: Maybe (ExportTasks)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeExportTasksResponse :: Newtype DescribeExportTasksResponse _
derive instance repGenericDescribeExportTasksResponse :: Generic DescribeExportTasksResponse _
instance showDescribeExportTasksResponse :: Show DescribeExportTasksResponse where show = genericShow
instance decodeDescribeExportTasksResponse :: Decode DescribeExportTasksResponse where decode = genericDecode options
instance encodeDescribeExportTasksResponse :: Encode DescribeExportTasksResponse where encode = genericEncode options

-- | Constructs DescribeExportTasksResponse from required parameters
newDescribeExportTasksResponse :: DescribeExportTasksResponse
newDescribeExportTasksResponse  = DescribeExportTasksResponse { "exportTasks": Nothing, "nextToken": Nothing }

-- | Constructs DescribeExportTasksResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeExportTasksResponse' :: ( { "exportTasks" :: Maybe (ExportTasks) , "nextToken" :: Maybe (NextToken) } -> {"exportTasks" :: Maybe (ExportTasks) , "nextToken" :: Maybe (NextToken) } ) -> DescribeExportTasksResponse
newDescribeExportTasksResponse'  customize = (DescribeExportTasksResponse <<< customize) { "exportTasks": Nothing, "nextToken": Nothing }



newtype DescribeLimit = DescribeLimit Int
derive instance newtypeDescribeLimit :: Newtype DescribeLimit _
derive instance repGenericDescribeLimit :: Generic DescribeLimit _
instance showDescribeLimit :: Show DescribeLimit where show = genericShow
instance decodeDescribeLimit :: Decode DescribeLimit where decode = genericDecode options
instance encodeDescribeLimit :: Encode DescribeLimit where encode = genericEncode options



newtype DescribeLogGroupsRequest = DescribeLogGroupsRequest 
  { "logGroupNamePrefix" :: Maybe (LogGroupName)
  , "nextToken" :: Maybe (NextToken)
  , "limit" :: Maybe (DescribeLimit)
  }
derive instance newtypeDescribeLogGroupsRequest :: Newtype DescribeLogGroupsRequest _
derive instance repGenericDescribeLogGroupsRequest :: Generic DescribeLogGroupsRequest _
instance showDescribeLogGroupsRequest :: Show DescribeLogGroupsRequest where show = genericShow
instance decodeDescribeLogGroupsRequest :: Decode DescribeLogGroupsRequest where decode = genericDecode options
instance encodeDescribeLogGroupsRequest :: Encode DescribeLogGroupsRequest where encode = genericEncode options

-- | Constructs DescribeLogGroupsRequest from required parameters
newDescribeLogGroupsRequest :: DescribeLogGroupsRequest
newDescribeLogGroupsRequest  = DescribeLogGroupsRequest { "limit": Nothing, "logGroupNamePrefix": Nothing, "nextToken": Nothing }

-- | Constructs DescribeLogGroupsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLogGroupsRequest' :: ( { "logGroupNamePrefix" :: Maybe (LogGroupName) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) } -> {"logGroupNamePrefix" :: Maybe (LogGroupName) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) } ) -> DescribeLogGroupsRequest
newDescribeLogGroupsRequest'  customize = (DescribeLogGroupsRequest <<< customize) { "limit": Nothing, "logGroupNamePrefix": Nothing, "nextToken": Nothing }



newtype DescribeLogGroupsResponse = DescribeLogGroupsResponse 
  { "logGroups" :: Maybe (LogGroups)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeLogGroupsResponse :: Newtype DescribeLogGroupsResponse _
derive instance repGenericDescribeLogGroupsResponse :: Generic DescribeLogGroupsResponse _
instance showDescribeLogGroupsResponse :: Show DescribeLogGroupsResponse where show = genericShow
instance decodeDescribeLogGroupsResponse :: Decode DescribeLogGroupsResponse where decode = genericDecode options
instance encodeDescribeLogGroupsResponse :: Encode DescribeLogGroupsResponse where encode = genericEncode options

-- | Constructs DescribeLogGroupsResponse from required parameters
newDescribeLogGroupsResponse :: DescribeLogGroupsResponse
newDescribeLogGroupsResponse  = DescribeLogGroupsResponse { "logGroups": Nothing, "nextToken": Nothing }

-- | Constructs DescribeLogGroupsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLogGroupsResponse' :: ( { "logGroups" :: Maybe (LogGroups) , "nextToken" :: Maybe (NextToken) } -> {"logGroups" :: Maybe (LogGroups) , "nextToken" :: Maybe (NextToken) } ) -> DescribeLogGroupsResponse
newDescribeLogGroupsResponse'  customize = (DescribeLogGroupsResponse <<< customize) { "logGroups": Nothing, "nextToken": Nothing }



newtype DescribeLogStreamsRequest = DescribeLogStreamsRequest 
  { "logGroupName" :: (LogGroupName)
  , "logStreamNamePrefix" :: Maybe (LogStreamName)
  , "orderBy" :: Maybe (OrderBy)
  , "descending" :: Maybe (Descending)
  , "nextToken" :: Maybe (NextToken)
  , "limit" :: Maybe (DescribeLimit)
  }
derive instance newtypeDescribeLogStreamsRequest :: Newtype DescribeLogStreamsRequest _
derive instance repGenericDescribeLogStreamsRequest :: Generic DescribeLogStreamsRequest _
instance showDescribeLogStreamsRequest :: Show DescribeLogStreamsRequest where show = genericShow
instance decodeDescribeLogStreamsRequest :: Decode DescribeLogStreamsRequest where decode = genericDecode options
instance encodeDescribeLogStreamsRequest :: Encode DescribeLogStreamsRequest where encode = genericEncode options

-- | Constructs DescribeLogStreamsRequest from required parameters
newDescribeLogStreamsRequest :: LogGroupName -> DescribeLogStreamsRequest
newDescribeLogStreamsRequest _logGroupName = DescribeLogStreamsRequest { "logGroupName": _logGroupName, "descending": Nothing, "limit": Nothing, "logStreamNamePrefix": Nothing, "nextToken": Nothing, "orderBy": Nothing }

-- | Constructs DescribeLogStreamsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLogStreamsRequest' :: LogGroupName -> ( { "logGroupName" :: (LogGroupName) , "logStreamNamePrefix" :: Maybe (LogStreamName) , "orderBy" :: Maybe (OrderBy) , "descending" :: Maybe (Descending) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) } -> {"logGroupName" :: (LogGroupName) , "logStreamNamePrefix" :: Maybe (LogStreamName) , "orderBy" :: Maybe (OrderBy) , "descending" :: Maybe (Descending) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) } ) -> DescribeLogStreamsRequest
newDescribeLogStreamsRequest' _logGroupName customize = (DescribeLogStreamsRequest <<< customize) { "logGroupName": _logGroupName, "descending": Nothing, "limit": Nothing, "logStreamNamePrefix": Nothing, "nextToken": Nothing, "orderBy": Nothing }



newtype DescribeLogStreamsResponse = DescribeLogStreamsResponse 
  { "logStreams" :: Maybe (LogStreams)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeLogStreamsResponse :: Newtype DescribeLogStreamsResponse _
derive instance repGenericDescribeLogStreamsResponse :: Generic DescribeLogStreamsResponse _
instance showDescribeLogStreamsResponse :: Show DescribeLogStreamsResponse where show = genericShow
instance decodeDescribeLogStreamsResponse :: Decode DescribeLogStreamsResponse where decode = genericDecode options
instance encodeDescribeLogStreamsResponse :: Encode DescribeLogStreamsResponse where encode = genericEncode options

-- | Constructs DescribeLogStreamsResponse from required parameters
newDescribeLogStreamsResponse :: DescribeLogStreamsResponse
newDescribeLogStreamsResponse  = DescribeLogStreamsResponse { "logStreams": Nothing, "nextToken": Nothing }

-- | Constructs DescribeLogStreamsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLogStreamsResponse' :: ( { "logStreams" :: Maybe (LogStreams) , "nextToken" :: Maybe (NextToken) } -> {"logStreams" :: Maybe (LogStreams) , "nextToken" :: Maybe (NextToken) } ) -> DescribeLogStreamsResponse
newDescribeLogStreamsResponse'  customize = (DescribeLogStreamsResponse <<< customize) { "logStreams": Nothing, "nextToken": Nothing }



newtype DescribeMetricFiltersRequest = DescribeMetricFiltersRequest 
  { "logGroupName" :: Maybe (LogGroupName)
  , "filterNamePrefix" :: Maybe (FilterName)
  , "nextToken" :: Maybe (NextToken)
  , "limit" :: Maybe (DescribeLimit)
  , "metricName" :: Maybe (MetricName)
  , "metricNamespace" :: Maybe (MetricNamespace)
  }
derive instance newtypeDescribeMetricFiltersRequest :: Newtype DescribeMetricFiltersRequest _
derive instance repGenericDescribeMetricFiltersRequest :: Generic DescribeMetricFiltersRequest _
instance showDescribeMetricFiltersRequest :: Show DescribeMetricFiltersRequest where show = genericShow
instance decodeDescribeMetricFiltersRequest :: Decode DescribeMetricFiltersRequest where decode = genericDecode options
instance encodeDescribeMetricFiltersRequest :: Encode DescribeMetricFiltersRequest where encode = genericEncode options

-- | Constructs DescribeMetricFiltersRequest from required parameters
newDescribeMetricFiltersRequest :: DescribeMetricFiltersRequest
newDescribeMetricFiltersRequest  = DescribeMetricFiltersRequest { "filterNamePrefix": Nothing, "limit": Nothing, "logGroupName": Nothing, "metricName": Nothing, "metricNamespace": Nothing, "nextToken": Nothing }

-- | Constructs DescribeMetricFiltersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMetricFiltersRequest' :: ( { "logGroupName" :: Maybe (LogGroupName) , "filterNamePrefix" :: Maybe (FilterName) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) , "metricName" :: Maybe (MetricName) , "metricNamespace" :: Maybe (MetricNamespace) } -> {"logGroupName" :: Maybe (LogGroupName) , "filterNamePrefix" :: Maybe (FilterName) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) , "metricName" :: Maybe (MetricName) , "metricNamespace" :: Maybe (MetricNamespace) } ) -> DescribeMetricFiltersRequest
newDescribeMetricFiltersRequest'  customize = (DescribeMetricFiltersRequest <<< customize) { "filterNamePrefix": Nothing, "limit": Nothing, "logGroupName": Nothing, "metricName": Nothing, "metricNamespace": Nothing, "nextToken": Nothing }



newtype DescribeMetricFiltersResponse = DescribeMetricFiltersResponse 
  { "metricFilters" :: Maybe (MetricFilters)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeMetricFiltersResponse :: Newtype DescribeMetricFiltersResponse _
derive instance repGenericDescribeMetricFiltersResponse :: Generic DescribeMetricFiltersResponse _
instance showDescribeMetricFiltersResponse :: Show DescribeMetricFiltersResponse where show = genericShow
instance decodeDescribeMetricFiltersResponse :: Decode DescribeMetricFiltersResponse where decode = genericDecode options
instance encodeDescribeMetricFiltersResponse :: Encode DescribeMetricFiltersResponse where encode = genericEncode options

-- | Constructs DescribeMetricFiltersResponse from required parameters
newDescribeMetricFiltersResponse :: DescribeMetricFiltersResponse
newDescribeMetricFiltersResponse  = DescribeMetricFiltersResponse { "metricFilters": Nothing, "nextToken": Nothing }

-- | Constructs DescribeMetricFiltersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMetricFiltersResponse' :: ( { "metricFilters" :: Maybe (MetricFilters) , "nextToken" :: Maybe (NextToken) } -> {"metricFilters" :: Maybe (MetricFilters) , "nextToken" :: Maybe (NextToken) } ) -> DescribeMetricFiltersResponse
newDescribeMetricFiltersResponse'  customize = (DescribeMetricFiltersResponse <<< customize) { "metricFilters": Nothing, "nextToken": Nothing }



newtype DescribeResourcePoliciesRequest = DescribeResourcePoliciesRequest 
  { "nextToken" :: Maybe (NextToken)
  , "limit" :: Maybe (DescribeLimit)
  }
derive instance newtypeDescribeResourcePoliciesRequest :: Newtype DescribeResourcePoliciesRequest _
derive instance repGenericDescribeResourcePoliciesRequest :: Generic DescribeResourcePoliciesRequest _
instance showDescribeResourcePoliciesRequest :: Show DescribeResourcePoliciesRequest where show = genericShow
instance decodeDescribeResourcePoliciesRequest :: Decode DescribeResourcePoliciesRequest where decode = genericDecode options
instance encodeDescribeResourcePoliciesRequest :: Encode DescribeResourcePoliciesRequest where encode = genericEncode options

-- | Constructs DescribeResourcePoliciesRequest from required parameters
newDescribeResourcePoliciesRequest :: DescribeResourcePoliciesRequest
newDescribeResourcePoliciesRequest  = DescribeResourcePoliciesRequest { "limit": Nothing, "nextToken": Nothing }

-- | Constructs DescribeResourcePoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeResourcePoliciesRequest' :: ( { "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) } -> {"nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) } ) -> DescribeResourcePoliciesRequest
newDescribeResourcePoliciesRequest'  customize = (DescribeResourcePoliciesRequest <<< customize) { "limit": Nothing, "nextToken": Nothing }



newtype DescribeResourcePoliciesResponse = DescribeResourcePoliciesResponse 
  { "resourcePolicies" :: Maybe (ResourcePolicies)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeResourcePoliciesResponse :: Newtype DescribeResourcePoliciesResponse _
derive instance repGenericDescribeResourcePoliciesResponse :: Generic DescribeResourcePoliciesResponse _
instance showDescribeResourcePoliciesResponse :: Show DescribeResourcePoliciesResponse where show = genericShow
instance decodeDescribeResourcePoliciesResponse :: Decode DescribeResourcePoliciesResponse where decode = genericDecode options
instance encodeDescribeResourcePoliciesResponse :: Encode DescribeResourcePoliciesResponse where encode = genericEncode options

-- | Constructs DescribeResourcePoliciesResponse from required parameters
newDescribeResourcePoliciesResponse :: DescribeResourcePoliciesResponse
newDescribeResourcePoliciesResponse  = DescribeResourcePoliciesResponse { "nextToken": Nothing, "resourcePolicies": Nothing }

-- | Constructs DescribeResourcePoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeResourcePoliciesResponse' :: ( { "resourcePolicies" :: Maybe (ResourcePolicies) , "nextToken" :: Maybe (NextToken) } -> {"resourcePolicies" :: Maybe (ResourcePolicies) , "nextToken" :: Maybe (NextToken) } ) -> DescribeResourcePoliciesResponse
newDescribeResourcePoliciesResponse'  customize = (DescribeResourcePoliciesResponse <<< customize) { "nextToken": Nothing, "resourcePolicies": Nothing }



newtype DescribeSubscriptionFiltersRequest = DescribeSubscriptionFiltersRequest 
  { "logGroupName" :: (LogGroupName)
  , "filterNamePrefix" :: Maybe (FilterName)
  , "nextToken" :: Maybe (NextToken)
  , "limit" :: Maybe (DescribeLimit)
  }
derive instance newtypeDescribeSubscriptionFiltersRequest :: Newtype DescribeSubscriptionFiltersRequest _
derive instance repGenericDescribeSubscriptionFiltersRequest :: Generic DescribeSubscriptionFiltersRequest _
instance showDescribeSubscriptionFiltersRequest :: Show DescribeSubscriptionFiltersRequest where show = genericShow
instance decodeDescribeSubscriptionFiltersRequest :: Decode DescribeSubscriptionFiltersRequest where decode = genericDecode options
instance encodeDescribeSubscriptionFiltersRequest :: Encode DescribeSubscriptionFiltersRequest where encode = genericEncode options

-- | Constructs DescribeSubscriptionFiltersRequest from required parameters
newDescribeSubscriptionFiltersRequest :: LogGroupName -> DescribeSubscriptionFiltersRequest
newDescribeSubscriptionFiltersRequest _logGroupName = DescribeSubscriptionFiltersRequest { "logGroupName": _logGroupName, "filterNamePrefix": Nothing, "limit": Nothing, "nextToken": Nothing }

-- | Constructs DescribeSubscriptionFiltersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSubscriptionFiltersRequest' :: LogGroupName -> ( { "logGroupName" :: (LogGroupName) , "filterNamePrefix" :: Maybe (FilterName) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) } -> {"logGroupName" :: (LogGroupName) , "filterNamePrefix" :: Maybe (FilterName) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (DescribeLimit) } ) -> DescribeSubscriptionFiltersRequest
newDescribeSubscriptionFiltersRequest' _logGroupName customize = (DescribeSubscriptionFiltersRequest <<< customize) { "logGroupName": _logGroupName, "filterNamePrefix": Nothing, "limit": Nothing, "nextToken": Nothing }



newtype DescribeSubscriptionFiltersResponse = DescribeSubscriptionFiltersResponse 
  { "subscriptionFilters" :: Maybe (SubscriptionFilters)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeSubscriptionFiltersResponse :: Newtype DescribeSubscriptionFiltersResponse _
derive instance repGenericDescribeSubscriptionFiltersResponse :: Generic DescribeSubscriptionFiltersResponse _
instance showDescribeSubscriptionFiltersResponse :: Show DescribeSubscriptionFiltersResponse where show = genericShow
instance decodeDescribeSubscriptionFiltersResponse :: Decode DescribeSubscriptionFiltersResponse where decode = genericDecode options
instance encodeDescribeSubscriptionFiltersResponse :: Encode DescribeSubscriptionFiltersResponse where encode = genericEncode options

-- | Constructs DescribeSubscriptionFiltersResponse from required parameters
newDescribeSubscriptionFiltersResponse :: DescribeSubscriptionFiltersResponse
newDescribeSubscriptionFiltersResponse  = DescribeSubscriptionFiltersResponse { "nextToken": Nothing, "subscriptionFilters": Nothing }

-- | Constructs DescribeSubscriptionFiltersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSubscriptionFiltersResponse' :: ( { "subscriptionFilters" :: Maybe (SubscriptionFilters) , "nextToken" :: Maybe (NextToken) } -> {"subscriptionFilters" :: Maybe (SubscriptionFilters) , "nextToken" :: Maybe (NextToken) } ) -> DescribeSubscriptionFiltersResponse
newDescribeSubscriptionFiltersResponse'  customize = (DescribeSubscriptionFiltersResponse <<< customize) { "nextToken": Nothing, "subscriptionFilters": Nothing }



-- | <p>Represents a cross-account destination that receives subscription log events.</p>
newtype Destination = Destination 
  { "destinationName" :: Maybe (DestinationName)
  , "targetArn" :: Maybe (TargetArn)
  , "roleArn" :: Maybe (RoleArn)
  , "accessPolicy" :: Maybe (AccessPolicy)
  , "arn" :: Maybe (Arn)
  , "creationTime" :: Maybe (Types.Timestamp)
  }
derive instance newtypeDestination :: Newtype Destination _
derive instance repGenericDestination :: Generic Destination _
instance showDestination :: Show Destination where show = genericShow
instance decodeDestination :: Decode Destination where decode = genericDecode options
instance encodeDestination :: Encode Destination where encode = genericEncode options

-- | Constructs Destination from required parameters
newDestination :: Destination
newDestination  = Destination { "accessPolicy": Nothing, "arn": Nothing, "creationTime": Nothing, "destinationName": Nothing, "roleArn": Nothing, "targetArn": Nothing }

-- | Constructs Destination's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDestination' :: ( { "destinationName" :: Maybe (DestinationName) , "targetArn" :: Maybe (TargetArn) , "roleArn" :: Maybe (RoleArn) , "accessPolicy" :: Maybe (AccessPolicy) , "arn" :: Maybe (Arn) , "creationTime" :: Maybe (Types.Timestamp) } -> {"destinationName" :: Maybe (DestinationName) , "targetArn" :: Maybe (TargetArn) , "roleArn" :: Maybe (RoleArn) , "accessPolicy" :: Maybe (AccessPolicy) , "arn" :: Maybe (Arn) , "creationTime" :: Maybe (Types.Timestamp) } ) -> Destination
newDestination'  customize = (Destination <<< customize) { "accessPolicy": Nothing, "arn": Nothing, "creationTime": Nothing, "destinationName": Nothing, "roleArn": Nothing, "targetArn": Nothing }



newtype DestinationArn = DestinationArn String
derive instance newtypeDestinationArn :: Newtype DestinationArn _
derive instance repGenericDestinationArn :: Generic DestinationArn _
instance showDestinationArn :: Show DestinationArn where show = genericShow
instance decodeDestinationArn :: Decode DestinationArn where decode = genericDecode options
instance encodeDestinationArn :: Encode DestinationArn where encode = genericEncode options



newtype DestinationName = DestinationName String
derive instance newtypeDestinationName :: Newtype DestinationName _
derive instance repGenericDestinationName :: Generic DestinationName _
instance showDestinationName :: Show DestinationName where show = genericShow
instance decodeDestinationName :: Decode DestinationName where decode = genericDecode options
instance encodeDestinationName :: Encode DestinationName where encode = genericEncode options



newtype Destinations = Destinations (Array Destination)
derive instance newtypeDestinations :: Newtype Destinations _
derive instance repGenericDestinations :: Generic Destinations _
instance showDestinations :: Show Destinations where show = genericShow
instance decodeDestinations :: Decode Destinations where decode = genericDecode options
instance encodeDestinations :: Encode Destinations where encode = genericEncode options



newtype DisassociateKmsKeyRequest = DisassociateKmsKeyRequest 
  { "logGroupName" :: (LogGroupName)
  }
derive instance newtypeDisassociateKmsKeyRequest :: Newtype DisassociateKmsKeyRequest _
derive instance repGenericDisassociateKmsKeyRequest :: Generic DisassociateKmsKeyRequest _
instance showDisassociateKmsKeyRequest :: Show DisassociateKmsKeyRequest where show = genericShow
instance decodeDisassociateKmsKeyRequest :: Decode DisassociateKmsKeyRequest where decode = genericDecode options
instance encodeDisassociateKmsKeyRequest :: Encode DisassociateKmsKeyRequest where encode = genericEncode options

-- | Constructs DisassociateKmsKeyRequest from required parameters
newDisassociateKmsKeyRequest :: LogGroupName -> DisassociateKmsKeyRequest
newDisassociateKmsKeyRequest _logGroupName = DisassociateKmsKeyRequest { "logGroupName": _logGroupName }

-- | Constructs DisassociateKmsKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateKmsKeyRequest' :: LogGroupName -> ( { "logGroupName" :: (LogGroupName) } -> {"logGroupName" :: (LogGroupName) } ) -> DisassociateKmsKeyRequest
newDisassociateKmsKeyRequest' _logGroupName customize = (DisassociateKmsKeyRequest <<< customize) { "logGroupName": _logGroupName }



-- | <p>The method used to distribute log data to the destination, which can be either random or grouped by log stream.</p>
newtype Distribution = Distribution String
derive instance newtypeDistribution :: Newtype Distribution _
derive instance repGenericDistribution :: Generic Distribution _
instance showDistribution :: Show Distribution where show = genericShow
instance decodeDistribution :: Decode Distribution where decode = genericDecode options
instance encodeDistribution :: Encode Distribution where encode = genericEncode options



newtype EventId = EventId String
derive instance newtypeEventId :: Newtype EventId _
derive instance repGenericEventId :: Generic EventId _
instance showEventId :: Show EventId where show = genericShow
instance decodeEventId :: Decode EventId where decode = genericDecode options
instance encodeEventId :: Encode EventId where encode = genericEncode options



newtype EventMessage = EventMessage String
derive instance newtypeEventMessage :: Newtype EventMessage _
derive instance repGenericEventMessage :: Generic EventMessage _
instance showEventMessage :: Show EventMessage where show = genericShow
instance decodeEventMessage :: Decode EventMessage where decode = genericDecode options
instance encodeEventMessage :: Encode EventMessage where encode = genericEncode options



newtype EventNumber = EventNumber Number
derive instance newtypeEventNumber :: Newtype EventNumber _
derive instance repGenericEventNumber :: Generic EventNumber _
instance showEventNumber :: Show EventNumber where show = genericShow
instance decodeEventNumber :: Decode EventNumber where decode = genericDecode options
instance encodeEventNumber :: Encode EventNumber where encode = genericEncode options



newtype EventsLimit = EventsLimit Int
derive instance newtypeEventsLimit :: Newtype EventsLimit _
derive instance repGenericEventsLimit :: Generic EventsLimit _
instance showEventsLimit :: Show EventsLimit where show = genericShow
instance decodeEventsLimit :: Decode EventsLimit where decode = genericDecode options
instance encodeEventsLimit :: Encode EventsLimit where encode = genericEncode options



newtype ExportDestinationBucket = ExportDestinationBucket String
derive instance newtypeExportDestinationBucket :: Newtype ExportDestinationBucket _
derive instance repGenericExportDestinationBucket :: Generic ExportDestinationBucket _
instance showExportDestinationBucket :: Show ExportDestinationBucket where show = genericShow
instance decodeExportDestinationBucket :: Decode ExportDestinationBucket where decode = genericDecode options
instance encodeExportDestinationBucket :: Encode ExportDestinationBucket where encode = genericEncode options



newtype ExportDestinationPrefix = ExportDestinationPrefix String
derive instance newtypeExportDestinationPrefix :: Newtype ExportDestinationPrefix _
derive instance repGenericExportDestinationPrefix :: Generic ExportDestinationPrefix _
instance showExportDestinationPrefix :: Show ExportDestinationPrefix where show = genericShow
instance decodeExportDestinationPrefix :: Decode ExportDestinationPrefix where decode = genericDecode options
instance encodeExportDestinationPrefix :: Encode ExportDestinationPrefix where encode = genericEncode options



-- | <p>Represents an export task.</p>
newtype ExportTask = ExportTask 
  { "taskId" :: Maybe (ExportTaskId)
  , "taskName" :: Maybe (ExportTaskName)
  , "logGroupName" :: Maybe (LogGroupName)
  , "from" :: Maybe (Types.Timestamp)
  , "to" :: Maybe (Types.Timestamp)
  , "destination" :: Maybe (ExportDestinationBucket)
  , "destinationPrefix" :: Maybe (ExportDestinationPrefix)
  , "status" :: Maybe (ExportTaskStatus)
  , "executionInfo" :: Maybe (ExportTaskExecutionInfo)
  }
derive instance newtypeExportTask :: Newtype ExportTask _
derive instance repGenericExportTask :: Generic ExportTask _
instance showExportTask :: Show ExportTask where show = genericShow
instance decodeExportTask :: Decode ExportTask where decode = genericDecode options
instance encodeExportTask :: Encode ExportTask where encode = genericEncode options

-- | Constructs ExportTask from required parameters
newExportTask :: ExportTask
newExportTask  = ExportTask { "destination": Nothing, "destinationPrefix": Nothing, "executionInfo": Nothing, "from": Nothing, "logGroupName": Nothing, "status": Nothing, "taskId": Nothing, "taskName": Nothing, "to": Nothing }

-- | Constructs ExportTask's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportTask' :: ( { "taskId" :: Maybe (ExportTaskId) , "taskName" :: Maybe (ExportTaskName) , "logGroupName" :: Maybe (LogGroupName) , "from" :: Maybe (Types.Timestamp) , "to" :: Maybe (Types.Timestamp) , "destination" :: Maybe (ExportDestinationBucket) , "destinationPrefix" :: Maybe (ExportDestinationPrefix) , "status" :: Maybe (ExportTaskStatus) , "executionInfo" :: Maybe (ExportTaskExecutionInfo) } -> {"taskId" :: Maybe (ExportTaskId) , "taskName" :: Maybe (ExportTaskName) , "logGroupName" :: Maybe (LogGroupName) , "from" :: Maybe (Types.Timestamp) , "to" :: Maybe (Types.Timestamp) , "destination" :: Maybe (ExportDestinationBucket) , "destinationPrefix" :: Maybe (ExportDestinationPrefix) , "status" :: Maybe (ExportTaskStatus) , "executionInfo" :: Maybe (ExportTaskExecutionInfo) } ) -> ExportTask
newExportTask'  customize = (ExportTask <<< customize) { "destination": Nothing, "destinationPrefix": Nothing, "executionInfo": Nothing, "from": Nothing, "logGroupName": Nothing, "status": Nothing, "taskId": Nothing, "taskName": Nothing, "to": Nothing }



-- | <p>Represents the status of an export task.</p>
newtype ExportTaskExecutionInfo = ExportTaskExecutionInfo 
  { "creationTime" :: Maybe (Types.Timestamp)
  , "completionTime" :: Maybe (Types.Timestamp)
  }
derive instance newtypeExportTaskExecutionInfo :: Newtype ExportTaskExecutionInfo _
derive instance repGenericExportTaskExecutionInfo :: Generic ExportTaskExecutionInfo _
instance showExportTaskExecutionInfo :: Show ExportTaskExecutionInfo where show = genericShow
instance decodeExportTaskExecutionInfo :: Decode ExportTaskExecutionInfo where decode = genericDecode options
instance encodeExportTaskExecutionInfo :: Encode ExportTaskExecutionInfo where encode = genericEncode options

-- | Constructs ExportTaskExecutionInfo from required parameters
newExportTaskExecutionInfo :: ExportTaskExecutionInfo
newExportTaskExecutionInfo  = ExportTaskExecutionInfo { "completionTime": Nothing, "creationTime": Nothing }

-- | Constructs ExportTaskExecutionInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportTaskExecutionInfo' :: ( { "creationTime" :: Maybe (Types.Timestamp) , "completionTime" :: Maybe (Types.Timestamp) } -> {"creationTime" :: Maybe (Types.Timestamp) , "completionTime" :: Maybe (Types.Timestamp) } ) -> ExportTaskExecutionInfo
newExportTaskExecutionInfo'  customize = (ExportTaskExecutionInfo <<< customize) { "completionTime": Nothing, "creationTime": Nothing }



newtype ExportTaskId = ExportTaskId String
derive instance newtypeExportTaskId :: Newtype ExportTaskId _
derive instance repGenericExportTaskId :: Generic ExportTaskId _
instance showExportTaskId :: Show ExportTaskId where show = genericShow
instance decodeExportTaskId :: Decode ExportTaskId where decode = genericDecode options
instance encodeExportTaskId :: Encode ExportTaskId where encode = genericEncode options



newtype ExportTaskName = ExportTaskName String
derive instance newtypeExportTaskName :: Newtype ExportTaskName _
derive instance repGenericExportTaskName :: Generic ExportTaskName _
instance showExportTaskName :: Show ExportTaskName where show = genericShow
instance decodeExportTaskName :: Decode ExportTaskName where decode = genericDecode options
instance encodeExportTaskName :: Encode ExportTaskName where encode = genericEncode options



-- | <p>Represents the status of an export task.</p>
newtype ExportTaskStatus = ExportTaskStatus 
  { "code" :: Maybe (ExportTaskStatusCode)
  , "message" :: Maybe (ExportTaskStatusMessage)
  }
derive instance newtypeExportTaskStatus :: Newtype ExportTaskStatus _
derive instance repGenericExportTaskStatus :: Generic ExportTaskStatus _
instance showExportTaskStatus :: Show ExportTaskStatus where show = genericShow
instance decodeExportTaskStatus :: Decode ExportTaskStatus where decode = genericDecode options
instance encodeExportTaskStatus :: Encode ExportTaskStatus where encode = genericEncode options

-- | Constructs ExportTaskStatus from required parameters
newExportTaskStatus :: ExportTaskStatus
newExportTaskStatus  = ExportTaskStatus { "code": Nothing, "message": Nothing }

-- | Constructs ExportTaskStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportTaskStatus' :: ( { "code" :: Maybe (ExportTaskStatusCode) , "message" :: Maybe (ExportTaskStatusMessage) } -> {"code" :: Maybe (ExportTaskStatusCode) , "message" :: Maybe (ExportTaskStatusMessage) } ) -> ExportTaskStatus
newExportTaskStatus'  customize = (ExportTaskStatus <<< customize) { "code": Nothing, "message": Nothing }



newtype ExportTaskStatusCode = ExportTaskStatusCode String
derive instance newtypeExportTaskStatusCode :: Newtype ExportTaskStatusCode _
derive instance repGenericExportTaskStatusCode :: Generic ExportTaskStatusCode _
instance showExportTaskStatusCode :: Show ExportTaskStatusCode where show = genericShow
instance decodeExportTaskStatusCode :: Decode ExportTaskStatusCode where decode = genericDecode options
instance encodeExportTaskStatusCode :: Encode ExportTaskStatusCode where encode = genericEncode options



newtype ExportTaskStatusMessage = ExportTaskStatusMessage String
derive instance newtypeExportTaskStatusMessage :: Newtype ExportTaskStatusMessage _
derive instance repGenericExportTaskStatusMessage :: Generic ExportTaskStatusMessage _
instance showExportTaskStatusMessage :: Show ExportTaskStatusMessage where show = genericShow
instance decodeExportTaskStatusMessage :: Decode ExportTaskStatusMessage where decode = genericDecode options
instance encodeExportTaskStatusMessage :: Encode ExportTaskStatusMessage where encode = genericEncode options



newtype ExportTasks = ExportTasks (Array ExportTask)
derive instance newtypeExportTasks :: Newtype ExportTasks _
derive instance repGenericExportTasks :: Generic ExportTasks _
instance showExportTasks :: Show ExportTasks where show = genericShow
instance decodeExportTasks :: Decode ExportTasks where decode = genericDecode options
instance encodeExportTasks :: Encode ExportTasks where encode = genericEncode options



newtype ExtractedValues = ExtractedValues (StrMap.StrMap Value)
derive instance newtypeExtractedValues :: Newtype ExtractedValues _
derive instance repGenericExtractedValues :: Generic ExtractedValues _
instance showExtractedValues :: Show ExtractedValues where show = genericShow
instance decodeExtractedValues :: Decode ExtractedValues where decode = genericDecode options
instance encodeExtractedValues :: Encode ExtractedValues where encode = genericEncode options



newtype FilterCount = FilterCount Int
derive instance newtypeFilterCount :: Newtype FilterCount _
derive instance repGenericFilterCount :: Generic FilterCount _
instance showFilterCount :: Show FilterCount where show = genericShow
instance decodeFilterCount :: Decode FilterCount where decode = genericDecode options
instance encodeFilterCount :: Encode FilterCount where encode = genericEncode options



newtype FilterLogEventsRequest = FilterLogEventsRequest 
  { "logGroupName" :: (LogGroupName)
  , "logStreamNames" :: Maybe (InputLogStreamNames)
  , "startTime" :: Maybe (Types.Timestamp)
  , "endTime" :: Maybe (Types.Timestamp)
  , "filterPattern" :: Maybe (FilterPattern)
  , "nextToken" :: Maybe (NextToken)
  , "limit" :: Maybe (EventsLimit)
  , "interleaved" :: Maybe (Interleaved)
  }
derive instance newtypeFilterLogEventsRequest :: Newtype FilterLogEventsRequest _
derive instance repGenericFilterLogEventsRequest :: Generic FilterLogEventsRequest _
instance showFilterLogEventsRequest :: Show FilterLogEventsRequest where show = genericShow
instance decodeFilterLogEventsRequest :: Decode FilterLogEventsRequest where decode = genericDecode options
instance encodeFilterLogEventsRequest :: Encode FilterLogEventsRequest where encode = genericEncode options

-- | Constructs FilterLogEventsRequest from required parameters
newFilterLogEventsRequest :: LogGroupName -> FilterLogEventsRequest
newFilterLogEventsRequest _logGroupName = FilterLogEventsRequest { "logGroupName": _logGroupName, "endTime": Nothing, "filterPattern": Nothing, "interleaved": Nothing, "limit": Nothing, "logStreamNames": Nothing, "nextToken": Nothing, "startTime": Nothing }

-- | Constructs FilterLogEventsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFilterLogEventsRequest' :: LogGroupName -> ( { "logGroupName" :: (LogGroupName) , "logStreamNames" :: Maybe (InputLogStreamNames) , "startTime" :: Maybe (Types.Timestamp) , "endTime" :: Maybe (Types.Timestamp) , "filterPattern" :: Maybe (FilterPattern) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (EventsLimit) , "interleaved" :: Maybe (Interleaved) } -> {"logGroupName" :: (LogGroupName) , "logStreamNames" :: Maybe (InputLogStreamNames) , "startTime" :: Maybe (Types.Timestamp) , "endTime" :: Maybe (Types.Timestamp) , "filterPattern" :: Maybe (FilterPattern) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (EventsLimit) , "interleaved" :: Maybe (Interleaved) } ) -> FilterLogEventsRequest
newFilterLogEventsRequest' _logGroupName customize = (FilterLogEventsRequest <<< customize) { "logGroupName": _logGroupName, "endTime": Nothing, "filterPattern": Nothing, "interleaved": Nothing, "limit": Nothing, "logStreamNames": Nothing, "nextToken": Nothing, "startTime": Nothing }



newtype FilterLogEventsResponse = FilterLogEventsResponse 
  { "events" :: Maybe (FilteredLogEvents)
  , "searchedLogStreams" :: Maybe (SearchedLogStreams)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeFilterLogEventsResponse :: Newtype FilterLogEventsResponse _
derive instance repGenericFilterLogEventsResponse :: Generic FilterLogEventsResponse _
instance showFilterLogEventsResponse :: Show FilterLogEventsResponse where show = genericShow
instance decodeFilterLogEventsResponse :: Decode FilterLogEventsResponse where decode = genericDecode options
instance encodeFilterLogEventsResponse :: Encode FilterLogEventsResponse where encode = genericEncode options

-- | Constructs FilterLogEventsResponse from required parameters
newFilterLogEventsResponse :: FilterLogEventsResponse
newFilterLogEventsResponse  = FilterLogEventsResponse { "events": Nothing, "nextToken": Nothing, "searchedLogStreams": Nothing }

-- | Constructs FilterLogEventsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFilterLogEventsResponse' :: ( { "events" :: Maybe (FilteredLogEvents) , "searchedLogStreams" :: Maybe (SearchedLogStreams) , "nextToken" :: Maybe (NextToken) } -> {"events" :: Maybe (FilteredLogEvents) , "searchedLogStreams" :: Maybe (SearchedLogStreams) , "nextToken" :: Maybe (NextToken) } ) -> FilterLogEventsResponse
newFilterLogEventsResponse'  customize = (FilterLogEventsResponse <<< customize) { "events": Nothing, "nextToken": Nothing, "searchedLogStreams": Nothing }



newtype FilterName = FilterName String
derive instance newtypeFilterName :: Newtype FilterName _
derive instance repGenericFilterName :: Generic FilterName _
instance showFilterName :: Show FilterName where show = genericShow
instance decodeFilterName :: Decode FilterName where decode = genericDecode options
instance encodeFilterName :: Encode FilterName where encode = genericEncode options



-- | <p>A symbolic description of how CloudWatch Logs should interpret the data in each log event. For example, a log event may contain time stamps, IP addresses, strings, and so on. You use the filter pattern to specify what to look for in the log event message.</p>
newtype FilterPattern = FilterPattern String
derive instance newtypeFilterPattern :: Newtype FilterPattern _
derive instance repGenericFilterPattern :: Generic FilterPattern _
instance showFilterPattern :: Show FilterPattern where show = genericShow
instance decodeFilterPattern :: Decode FilterPattern where decode = genericDecode options
instance encodeFilterPattern :: Encode FilterPattern where encode = genericEncode options



-- | <p>Represents a matched event.</p>
newtype FilteredLogEvent = FilteredLogEvent 
  { "logStreamName" :: Maybe (LogStreamName)
  , "timestamp" :: Maybe (Types.Timestamp)
  , "message" :: Maybe (EventMessage)
  , "ingestionTime" :: Maybe (Types.Timestamp)
  , "eventId" :: Maybe (EventId)
  }
derive instance newtypeFilteredLogEvent :: Newtype FilteredLogEvent _
derive instance repGenericFilteredLogEvent :: Generic FilteredLogEvent _
instance showFilteredLogEvent :: Show FilteredLogEvent where show = genericShow
instance decodeFilteredLogEvent :: Decode FilteredLogEvent where decode = genericDecode options
instance encodeFilteredLogEvent :: Encode FilteredLogEvent where encode = genericEncode options

-- | Constructs FilteredLogEvent from required parameters
newFilteredLogEvent :: FilteredLogEvent
newFilteredLogEvent  = FilteredLogEvent { "eventId": Nothing, "ingestionTime": Nothing, "logStreamName": Nothing, "message": Nothing, "timestamp": Nothing }

-- | Constructs FilteredLogEvent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFilteredLogEvent' :: ( { "logStreamName" :: Maybe (LogStreamName) , "timestamp" :: Maybe (Types.Timestamp) , "message" :: Maybe (EventMessage) , "ingestionTime" :: Maybe (Types.Timestamp) , "eventId" :: Maybe (EventId) } -> {"logStreamName" :: Maybe (LogStreamName) , "timestamp" :: Maybe (Types.Timestamp) , "message" :: Maybe (EventMessage) , "ingestionTime" :: Maybe (Types.Timestamp) , "eventId" :: Maybe (EventId) } ) -> FilteredLogEvent
newFilteredLogEvent'  customize = (FilteredLogEvent <<< customize) { "eventId": Nothing, "ingestionTime": Nothing, "logStreamName": Nothing, "message": Nothing, "timestamp": Nothing }



newtype FilteredLogEvents = FilteredLogEvents (Array FilteredLogEvent)
derive instance newtypeFilteredLogEvents :: Newtype FilteredLogEvents _
derive instance repGenericFilteredLogEvents :: Generic FilteredLogEvents _
instance showFilteredLogEvents :: Show FilteredLogEvents where show = genericShow
instance decodeFilteredLogEvents :: Decode FilteredLogEvents where decode = genericDecode options
instance encodeFilteredLogEvents :: Encode FilteredLogEvents where encode = genericEncode options



newtype GetLogEventsRequest = GetLogEventsRequest 
  { "logGroupName" :: (LogGroupName)
  , "logStreamName" :: (LogStreamName)
  , "startTime" :: Maybe (Types.Timestamp)
  , "endTime" :: Maybe (Types.Timestamp)
  , "nextToken" :: Maybe (NextToken)
  , "limit" :: Maybe (EventsLimit)
  , "startFromHead" :: Maybe (StartFromHead)
  }
derive instance newtypeGetLogEventsRequest :: Newtype GetLogEventsRequest _
derive instance repGenericGetLogEventsRequest :: Generic GetLogEventsRequest _
instance showGetLogEventsRequest :: Show GetLogEventsRequest where show = genericShow
instance decodeGetLogEventsRequest :: Decode GetLogEventsRequest where decode = genericDecode options
instance encodeGetLogEventsRequest :: Encode GetLogEventsRequest where encode = genericEncode options

-- | Constructs GetLogEventsRequest from required parameters
newGetLogEventsRequest :: LogGroupName -> LogStreamName -> GetLogEventsRequest
newGetLogEventsRequest _logGroupName _logStreamName = GetLogEventsRequest { "logGroupName": _logGroupName, "logStreamName": _logStreamName, "endTime": Nothing, "limit": Nothing, "nextToken": Nothing, "startFromHead": Nothing, "startTime": Nothing }

-- | Constructs GetLogEventsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLogEventsRequest' :: LogGroupName -> LogStreamName -> ( { "logGroupName" :: (LogGroupName) , "logStreamName" :: (LogStreamName) , "startTime" :: Maybe (Types.Timestamp) , "endTime" :: Maybe (Types.Timestamp) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (EventsLimit) , "startFromHead" :: Maybe (StartFromHead) } -> {"logGroupName" :: (LogGroupName) , "logStreamName" :: (LogStreamName) , "startTime" :: Maybe (Types.Timestamp) , "endTime" :: Maybe (Types.Timestamp) , "nextToken" :: Maybe (NextToken) , "limit" :: Maybe (EventsLimit) , "startFromHead" :: Maybe (StartFromHead) } ) -> GetLogEventsRequest
newGetLogEventsRequest' _logGroupName _logStreamName customize = (GetLogEventsRequest <<< customize) { "logGroupName": _logGroupName, "logStreamName": _logStreamName, "endTime": Nothing, "limit": Nothing, "nextToken": Nothing, "startFromHead": Nothing, "startTime": Nothing }



newtype GetLogEventsResponse = GetLogEventsResponse 
  { "events" :: Maybe (OutputLogEvents)
  , "nextForwardToken" :: Maybe (NextToken)
  , "nextBackwardToken" :: Maybe (NextToken)
  }
derive instance newtypeGetLogEventsResponse :: Newtype GetLogEventsResponse _
derive instance repGenericGetLogEventsResponse :: Generic GetLogEventsResponse _
instance showGetLogEventsResponse :: Show GetLogEventsResponse where show = genericShow
instance decodeGetLogEventsResponse :: Decode GetLogEventsResponse where decode = genericDecode options
instance encodeGetLogEventsResponse :: Encode GetLogEventsResponse where encode = genericEncode options

-- | Constructs GetLogEventsResponse from required parameters
newGetLogEventsResponse :: GetLogEventsResponse
newGetLogEventsResponse  = GetLogEventsResponse { "events": Nothing, "nextBackwardToken": Nothing, "nextForwardToken": Nothing }

-- | Constructs GetLogEventsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLogEventsResponse' :: ( { "events" :: Maybe (OutputLogEvents) , "nextForwardToken" :: Maybe (NextToken) , "nextBackwardToken" :: Maybe (NextToken) } -> {"events" :: Maybe (OutputLogEvents) , "nextForwardToken" :: Maybe (NextToken) , "nextBackwardToken" :: Maybe (NextToken) } ) -> GetLogEventsResponse
newGetLogEventsResponse'  customize = (GetLogEventsResponse <<< customize) { "events": Nothing, "nextBackwardToken": Nothing, "nextForwardToken": Nothing }



-- | <p>Represents a log event, which is a record of activity that was recorded by the application or resource being monitored.</p>
newtype InputLogEvent = InputLogEvent 
  { "timestamp" :: (Types.Timestamp)
  , "message" :: (EventMessage)
  }
derive instance newtypeInputLogEvent :: Newtype InputLogEvent _
derive instance repGenericInputLogEvent :: Generic InputLogEvent _
instance showInputLogEvent :: Show InputLogEvent where show = genericShow
instance decodeInputLogEvent :: Decode InputLogEvent where decode = genericDecode options
instance encodeInputLogEvent :: Encode InputLogEvent where encode = genericEncode options

-- | Constructs InputLogEvent from required parameters
newInputLogEvent :: EventMessage -> Types.Timestamp -> InputLogEvent
newInputLogEvent _message _timestamp = InputLogEvent { "message": _message, "timestamp": _timestamp }

-- | Constructs InputLogEvent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInputLogEvent' :: EventMessage -> Types.Timestamp -> ( { "timestamp" :: (Types.Timestamp) , "message" :: (EventMessage) } -> {"timestamp" :: (Types.Timestamp) , "message" :: (EventMessage) } ) -> InputLogEvent
newInputLogEvent' _message _timestamp customize = (InputLogEvent <<< customize) { "message": _message, "timestamp": _timestamp }



newtype InputLogEvents = InputLogEvents (Array InputLogEvent)
derive instance newtypeInputLogEvents :: Newtype InputLogEvents _
derive instance repGenericInputLogEvents :: Generic InputLogEvents _
instance showInputLogEvents :: Show InputLogEvents where show = genericShow
instance decodeInputLogEvents :: Decode InputLogEvents where decode = genericDecode options
instance encodeInputLogEvents :: Encode InputLogEvents where encode = genericEncode options



newtype InputLogStreamNames = InputLogStreamNames (Array LogStreamName)
derive instance newtypeInputLogStreamNames :: Newtype InputLogStreamNames _
derive instance repGenericInputLogStreamNames :: Generic InputLogStreamNames _
instance showInputLogStreamNames :: Show InputLogStreamNames where show = genericShow
instance decodeInputLogStreamNames :: Decode InputLogStreamNames where decode = genericDecode options
instance encodeInputLogStreamNames :: Encode InputLogStreamNames where encode = genericEncode options



newtype Interleaved = Interleaved Boolean
derive instance newtypeInterleaved :: Newtype Interleaved _
derive instance repGenericInterleaved :: Generic Interleaved _
instance showInterleaved :: Show Interleaved where show = genericShow
instance decodeInterleaved :: Decode Interleaved where decode = genericDecode options
instance encodeInterleaved :: Encode Interleaved where encode = genericEncode options



-- | <p>The operation is not valid on the specified resource.</p>
newtype InvalidOperationException = InvalidOperationException Types.NoArguments
derive instance newtypeInvalidOperationException :: Newtype InvalidOperationException _
derive instance repGenericInvalidOperationException :: Generic InvalidOperationException _
instance showInvalidOperationException :: Show InvalidOperationException where show = genericShow
instance decodeInvalidOperationException :: Decode InvalidOperationException where decode = genericDecode options
instance encodeInvalidOperationException :: Encode InvalidOperationException where encode = genericEncode options



-- | <p>A parameter is specified incorrectly.</p>
newtype InvalidParameterException = InvalidParameterException Types.NoArguments
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options



-- | <p>The sequence token is not valid.</p>
newtype InvalidSequenceTokenException = InvalidSequenceTokenException 
  { "expectedSequenceToken" :: Maybe (SequenceToken)
  }
derive instance newtypeInvalidSequenceTokenException :: Newtype InvalidSequenceTokenException _
derive instance repGenericInvalidSequenceTokenException :: Generic InvalidSequenceTokenException _
instance showInvalidSequenceTokenException :: Show InvalidSequenceTokenException where show = genericShow
instance decodeInvalidSequenceTokenException :: Decode InvalidSequenceTokenException where decode = genericDecode options
instance encodeInvalidSequenceTokenException :: Encode InvalidSequenceTokenException where encode = genericEncode options

-- | Constructs InvalidSequenceTokenException from required parameters
newInvalidSequenceTokenException :: InvalidSequenceTokenException
newInvalidSequenceTokenException  = InvalidSequenceTokenException { "expectedSequenceToken": Nothing }

-- | Constructs InvalidSequenceTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidSequenceTokenException' :: ( { "expectedSequenceToken" :: Maybe (SequenceToken) } -> {"expectedSequenceToken" :: Maybe (SequenceToken) } ) -> InvalidSequenceTokenException
newInvalidSequenceTokenException'  customize = (InvalidSequenceTokenException <<< customize) { "expectedSequenceToken": Nothing }



newtype KmsKeyId = KmsKeyId String
derive instance newtypeKmsKeyId :: Newtype KmsKeyId _
derive instance repGenericKmsKeyId :: Generic KmsKeyId _
instance showKmsKeyId :: Show KmsKeyId where show = genericShow
instance decodeKmsKeyId :: Decode KmsKeyId where decode = genericDecode options
instance encodeKmsKeyId :: Encode KmsKeyId where encode = genericEncode options



-- | <p>You have reached the maximum number of resources that can be created.</p>
newtype LimitExceededException = LimitExceededException Types.NoArguments
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options



newtype ListTagsLogGroupRequest = ListTagsLogGroupRequest 
  { "logGroupName" :: (LogGroupName)
  }
derive instance newtypeListTagsLogGroupRequest :: Newtype ListTagsLogGroupRequest _
derive instance repGenericListTagsLogGroupRequest :: Generic ListTagsLogGroupRequest _
instance showListTagsLogGroupRequest :: Show ListTagsLogGroupRequest where show = genericShow
instance decodeListTagsLogGroupRequest :: Decode ListTagsLogGroupRequest where decode = genericDecode options
instance encodeListTagsLogGroupRequest :: Encode ListTagsLogGroupRequest where encode = genericEncode options

-- | Constructs ListTagsLogGroupRequest from required parameters
newListTagsLogGroupRequest :: LogGroupName -> ListTagsLogGroupRequest
newListTagsLogGroupRequest _logGroupName = ListTagsLogGroupRequest { "logGroupName": _logGroupName }

-- | Constructs ListTagsLogGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsLogGroupRequest' :: LogGroupName -> ( { "logGroupName" :: (LogGroupName) } -> {"logGroupName" :: (LogGroupName) } ) -> ListTagsLogGroupRequest
newListTagsLogGroupRequest' _logGroupName customize = (ListTagsLogGroupRequest <<< customize) { "logGroupName": _logGroupName }



newtype ListTagsLogGroupResponse = ListTagsLogGroupResponse 
  { "tags" :: Maybe (Tags)
  }
derive instance newtypeListTagsLogGroupResponse :: Newtype ListTagsLogGroupResponse _
derive instance repGenericListTagsLogGroupResponse :: Generic ListTagsLogGroupResponse _
instance showListTagsLogGroupResponse :: Show ListTagsLogGroupResponse where show = genericShow
instance decodeListTagsLogGroupResponse :: Decode ListTagsLogGroupResponse where decode = genericDecode options
instance encodeListTagsLogGroupResponse :: Encode ListTagsLogGroupResponse where encode = genericEncode options

-- | Constructs ListTagsLogGroupResponse from required parameters
newListTagsLogGroupResponse :: ListTagsLogGroupResponse
newListTagsLogGroupResponse  = ListTagsLogGroupResponse { "tags": Nothing }

-- | Constructs ListTagsLogGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsLogGroupResponse' :: ( { "tags" :: Maybe (Tags) } -> {"tags" :: Maybe (Tags) } ) -> ListTagsLogGroupResponse
newListTagsLogGroupResponse'  customize = (ListTagsLogGroupResponse <<< customize) { "tags": Nothing }



newtype LogEventIndex = LogEventIndex Int
derive instance newtypeLogEventIndex :: Newtype LogEventIndex _
derive instance repGenericLogEventIndex :: Generic LogEventIndex _
instance showLogEventIndex :: Show LogEventIndex where show = genericShow
instance decodeLogEventIndex :: Decode LogEventIndex where decode = genericDecode options
instance encodeLogEventIndex :: Encode LogEventIndex where encode = genericEncode options



-- | <p>Represents a log group.</p>
newtype LogGroup = LogGroup 
  { "logGroupName" :: Maybe (LogGroupName)
  , "creationTime" :: Maybe (Types.Timestamp)
  , "retentionInDays" :: Maybe (Days)
  , "metricFilterCount" :: Maybe (FilterCount)
  , "arn" :: Maybe (Arn)
  , "storedBytes" :: Maybe (StoredBytes)
  , "kmsKeyId" :: Maybe (KmsKeyId)
  }
derive instance newtypeLogGroup :: Newtype LogGroup _
derive instance repGenericLogGroup :: Generic LogGroup _
instance showLogGroup :: Show LogGroup where show = genericShow
instance decodeLogGroup :: Decode LogGroup where decode = genericDecode options
instance encodeLogGroup :: Encode LogGroup where encode = genericEncode options

-- | Constructs LogGroup from required parameters
newLogGroup :: LogGroup
newLogGroup  = LogGroup { "arn": Nothing, "creationTime": Nothing, "kmsKeyId": Nothing, "logGroupName": Nothing, "metricFilterCount": Nothing, "retentionInDays": Nothing, "storedBytes": Nothing }

-- | Constructs LogGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLogGroup' :: ( { "logGroupName" :: Maybe (LogGroupName) , "creationTime" :: Maybe (Types.Timestamp) , "retentionInDays" :: Maybe (Days) , "metricFilterCount" :: Maybe (FilterCount) , "arn" :: Maybe (Arn) , "storedBytes" :: Maybe (StoredBytes) , "kmsKeyId" :: Maybe (KmsKeyId) } -> {"logGroupName" :: Maybe (LogGroupName) , "creationTime" :: Maybe (Types.Timestamp) , "retentionInDays" :: Maybe (Days) , "metricFilterCount" :: Maybe (FilterCount) , "arn" :: Maybe (Arn) , "storedBytes" :: Maybe (StoredBytes) , "kmsKeyId" :: Maybe (KmsKeyId) } ) -> LogGroup
newLogGroup'  customize = (LogGroup <<< customize) { "arn": Nothing, "creationTime": Nothing, "kmsKeyId": Nothing, "logGroupName": Nothing, "metricFilterCount": Nothing, "retentionInDays": Nothing, "storedBytes": Nothing }



newtype LogGroupName = LogGroupName String
derive instance newtypeLogGroupName :: Newtype LogGroupName _
derive instance repGenericLogGroupName :: Generic LogGroupName _
instance showLogGroupName :: Show LogGroupName where show = genericShow
instance decodeLogGroupName :: Decode LogGroupName where decode = genericDecode options
instance encodeLogGroupName :: Encode LogGroupName where encode = genericEncode options



newtype LogGroups = LogGroups (Array LogGroup)
derive instance newtypeLogGroups :: Newtype LogGroups _
derive instance repGenericLogGroups :: Generic LogGroups _
instance showLogGroups :: Show LogGroups where show = genericShow
instance decodeLogGroups :: Decode LogGroups where decode = genericDecode options
instance encodeLogGroups :: Encode LogGroups where encode = genericEncode options



-- | <p>Represents a log stream, which is a sequence of log events from a single emitter of logs.</p>
newtype LogStream = LogStream 
  { "logStreamName" :: Maybe (LogStreamName)
  , "creationTime" :: Maybe (Types.Timestamp)
  , "firstEventTimestamp" :: Maybe (Types.Timestamp)
  , "lastEventTimestamp" :: Maybe (Types.Timestamp)
  , "lastIngestionTime" :: Maybe (Types.Timestamp)
  , "uploadSequenceToken" :: Maybe (SequenceToken)
  , "arn" :: Maybe (Arn)
  , "storedBytes" :: Maybe (StoredBytes)
  }
derive instance newtypeLogStream :: Newtype LogStream _
derive instance repGenericLogStream :: Generic LogStream _
instance showLogStream :: Show LogStream where show = genericShow
instance decodeLogStream :: Decode LogStream where decode = genericDecode options
instance encodeLogStream :: Encode LogStream where encode = genericEncode options

-- | Constructs LogStream from required parameters
newLogStream :: LogStream
newLogStream  = LogStream { "arn": Nothing, "creationTime": Nothing, "firstEventTimestamp": Nothing, "lastEventTimestamp": Nothing, "lastIngestionTime": Nothing, "logStreamName": Nothing, "storedBytes": Nothing, "uploadSequenceToken": Nothing }

-- | Constructs LogStream's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLogStream' :: ( { "logStreamName" :: Maybe (LogStreamName) , "creationTime" :: Maybe (Types.Timestamp) , "firstEventTimestamp" :: Maybe (Types.Timestamp) , "lastEventTimestamp" :: Maybe (Types.Timestamp) , "lastIngestionTime" :: Maybe (Types.Timestamp) , "uploadSequenceToken" :: Maybe (SequenceToken) , "arn" :: Maybe (Arn) , "storedBytes" :: Maybe (StoredBytes) } -> {"logStreamName" :: Maybe (LogStreamName) , "creationTime" :: Maybe (Types.Timestamp) , "firstEventTimestamp" :: Maybe (Types.Timestamp) , "lastEventTimestamp" :: Maybe (Types.Timestamp) , "lastIngestionTime" :: Maybe (Types.Timestamp) , "uploadSequenceToken" :: Maybe (SequenceToken) , "arn" :: Maybe (Arn) , "storedBytes" :: Maybe (StoredBytes) } ) -> LogStream
newLogStream'  customize = (LogStream <<< customize) { "arn": Nothing, "creationTime": Nothing, "firstEventTimestamp": Nothing, "lastEventTimestamp": Nothing, "lastIngestionTime": Nothing, "logStreamName": Nothing, "storedBytes": Nothing, "uploadSequenceToken": Nothing }



newtype LogStreamName = LogStreamName String
derive instance newtypeLogStreamName :: Newtype LogStreamName _
derive instance repGenericLogStreamName :: Generic LogStreamName _
instance showLogStreamName :: Show LogStreamName where show = genericShow
instance decodeLogStreamName :: Decode LogStreamName where decode = genericDecode options
instance encodeLogStreamName :: Encode LogStreamName where encode = genericEncode options



newtype LogStreamSearchedCompletely = LogStreamSearchedCompletely Boolean
derive instance newtypeLogStreamSearchedCompletely :: Newtype LogStreamSearchedCompletely _
derive instance repGenericLogStreamSearchedCompletely :: Generic LogStreamSearchedCompletely _
instance showLogStreamSearchedCompletely :: Show LogStreamSearchedCompletely where show = genericShow
instance decodeLogStreamSearchedCompletely :: Decode LogStreamSearchedCompletely where decode = genericDecode options
instance encodeLogStreamSearchedCompletely :: Encode LogStreamSearchedCompletely where encode = genericEncode options



newtype LogStreams = LogStreams (Array LogStream)
derive instance newtypeLogStreams :: Newtype LogStreams _
derive instance repGenericLogStreams :: Generic LogStreams _
instance showLogStreams :: Show LogStreams where show = genericShow
instance decodeLogStreams :: Decode LogStreams where decode = genericDecode options
instance encodeLogStreams :: Encode LogStreams where encode = genericEncode options



-- | <p>Metric filters express how CloudWatch Logs would extract metric observations from ingested log events and transform them into metric data in a CloudWatch metric.</p>
newtype MetricFilter = MetricFilter 
  { "filterName" :: Maybe (FilterName)
  , "filterPattern" :: Maybe (FilterPattern)
  , "metricTransformations" :: Maybe (MetricTransformations)
  , "creationTime" :: Maybe (Types.Timestamp)
  , "logGroupName" :: Maybe (LogGroupName)
  }
derive instance newtypeMetricFilter :: Newtype MetricFilter _
derive instance repGenericMetricFilter :: Generic MetricFilter _
instance showMetricFilter :: Show MetricFilter where show = genericShow
instance decodeMetricFilter :: Decode MetricFilter where decode = genericDecode options
instance encodeMetricFilter :: Encode MetricFilter where encode = genericEncode options

-- | Constructs MetricFilter from required parameters
newMetricFilter :: MetricFilter
newMetricFilter  = MetricFilter { "creationTime": Nothing, "filterName": Nothing, "filterPattern": Nothing, "logGroupName": Nothing, "metricTransformations": Nothing }

-- | Constructs MetricFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMetricFilter' :: ( { "filterName" :: Maybe (FilterName) , "filterPattern" :: Maybe (FilterPattern) , "metricTransformations" :: Maybe (MetricTransformations) , "creationTime" :: Maybe (Types.Timestamp) , "logGroupName" :: Maybe (LogGroupName) } -> {"filterName" :: Maybe (FilterName) , "filterPattern" :: Maybe (FilterPattern) , "metricTransformations" :: Maybe (MetricTransformations) , "creationTime" :: Maybe (Types.Timestamp) , "logGroupName" :: Maybe (LogGroupName) } ) -> MetricFilter
newMetricFilter'  customize = (MetricFilter <<< customize) { "creationTime": Nothing, "filterName": Nothing, "filterPattern": Nothing, "logGroupName": Nothing, "metricTransformations": Nothing }



-- | <p>Represents a matched event.</p>
newtype MetricFilterMatchRecord = MetricFilterMatchRecord 
  { "eventNumber" :: Maybe (EventNumber)
  , "eventMessage" :: Maybe (EventMessage)
  , "extractedValues" :: Maybe (ExtractedValues)
  }
derive instance newtypeMetricFilterMatchRecord :: Newtype MetricFilterMatchRecord _
derive instance repGenericMetricFilterMatchRecord :: Generic MetricFilterMatchRecord _
instance showMetricFilterMatchRecord :: Show MetricFilterMatchRecord where show = genericShow
instance decodeMetricFilterMatchRecord :: Decode MetricFilterMatchRecord where decode = genericDecode options
instance encodeMetricFilterMatchRecord :: Encode MetricFilterMatchRecord where encode = genericEncode options

-- | Constructs MetricFilterMatchRecord from required parameters
newMetricFilterMatchRecord :: MetricFilterMatchRecord
newMetricFilterMatchRecord  = MetricFilterMatchRecord { "eventMessage": Nothing, "eventNumber": Nothing, "extractedValues": Nothing }

-- | Constructs MetricFilterMatchRecord's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMetricFilterMatchRecord' :: ( { "eventNumber" :: Maybe (EventNumber) , "eventMessage" :: Maybe (EventMessage) , "extractedValues" :: Maybe (ExtractedValues) } -> {"eventNumber" :: Maybe (EventNumber) , "eventMessage" :: Maybe (EventMessage) , "extractedValues" :: Maybe (ExtractedValues) } ) -> MetricFilterMatchRecord
newMetricFilterMatchRecord'  customize = (MetricFilterMatchRecord <<< customize) { "eventMessage": Nothing, "eventNumber": Nothing, "extractedValues": Nothing }



newtype MetricFilterMatches = MetricFilterMatches (Array MetricFilterMatchRecord)
derive instance newtypeMetricFilterMatches :: Newtype MetricFilterMatches _
derive instance repGenericMetricFilterMatches :: Generic MetricFilterMatches _
instance showMetricFilterMatches :: Show MetricFilterMatches where show = genericShow
instance decodeMetricFilterMatches :: Decode MetricFilterMatches where decode = genericDecode options
instance encodeMetricFilterMatches :: Encode MetricFilterMatches where encode = genericEncode options



newtype MetricFilters = MetricFilters (Array MetricFilter)
derive instance newtypeMetricFilters :: Newtype MetricFilters _
derive instance repGenericMetricFilters :: Generic MetricFilters _
instance showMetricFilters :: Show MetricFilters where show = genericShow
instance decodeMetricFilters :: Decode MetricFilters where decode = genericDecode options
instance encodeMetricFilters :: Encode MetricFilters where encode = genericEncode options



-- | <p>The name of the CloudWatch metric to which the monitored log information should be published. For example, you may publish to a metric called ErrorCount.</p>
newtype MetricName = MetricName String
derive instance newtypeMetricName :: Newtype MetricName _
derive instance repGenericMetricName :: Generic MetricName _
instance showMetricName :: Show MetricName where show = genericShow
instance decodeMetricName :: Decode MetricName where decode = genericDecode options
instance encodeMetricName :: Encode MetricName where encode = genericEncode options



newtype MetricNamespace = MetricNamespace String
derive instance newtypeMetricNamespace :: Newtype MetricNamespace _
derive instance repGenericMetricNamespace :: Generic MetricNamespace _
instance showMetricNamespace :: Show MetricNamespace where show = genericShow
instance decodeMetricNamespace :: Decode MetricNamespace where decode = genericDecode options
instance encodeMetricNamespace :: Encode MetricNamespace where encode = genericEncode options



-- | <p>Indicates how to transform ingested log events in to metric data in a CloudWatch metric.</p>
newtype MetricTransformation = MetricTransformation 
  { "metricName" :: (MetricName)
  , "metricNamespace" :: (MetricNamespace)
  , "metricValue" :: (MetricValue)
  , "defaultValue" :: Maybe (DefaultValue)
  }
derive instance newtypeMetricTransformation :: Newtype MetricTransformation _
derive instance repGenericMetricTransformation :: Generic MetricTransformation _
instance showMetricTransformation :: Show MetricTransformation where show = genericShow
instance decodeMetricTransformation :: Decode MetricTransformation where decode = genericDecode options
instance encodeMetricTransformation :: Encode MetricTransformation where encode = genericEncode options

-- | Constructs MetricTransformation from required parameters
newMetricTransformation :: MetricName -> MetricNamespace -> MetricValue -> MetricTransformation
newMetricTransformation _metricName _metricNamespace _metricValue = MetricTransformation { "metricName": _metricName, "metricNamespace": _metricNamespace, "metricValue": _metricValue, "defaultValue": Nothing }

-- | Constructs MetricTransformation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMetricTransformation' :: MetricName -> MetricNamespace -> MetricValue -> ( { "metricName" :: (MetricName) , "metricNamespace" :: (MetricNamespace) , "metricValue" :: (MetricValue) , "defaultValue" :: Maybe (DefaultValue) } -> {"metricName" :: (MetricName) , "metricNamespace" :: (MetricNamespace) , "metricValue" :: (MetricValue) , "defaultValue" :: Maybe (DefaultValue) } ) -> MetricTransformation
newMetricTransformation' _metricName _metricNamespace _metricValue customize = (MetricTransformation <<< customize) { "metricName": _metricName, "metricNamespace": _metricNamespace, "metricValue": _metricValue, "defaultValue": Nothing }



newtype MetricTransformations = MetricTransformations (Array MetricTransformation)
derive instance newtypeMetricTransformations :: Newtype MetricTransformations _
derive instance repGenericMetricTransformations :: Generic MetricTransformations _
instance showMetricTransformations :: Show MetricTransformations where show = genericShow
instance decodeMetricTransformations :: Decode MetricTransformations where decode = genericDecode options
instance encodeMetricTransformations :: Encode MetricTransformations where encode = genericEncode options



-- | <p>The value to publish to the CloudWatch metric. For example, if you're counting the occurrences of a term like "Error", the value is "1" for each occurrence. If you're counting the bytes transferred, the value is the value in the log event.</p>
newtype MetricValue = MetricValue String
derive instance newtypeMetricValue :: Newtype MetricValue _
derive instance repGenericMetricValue :: Generic MetricValue _
instance showMetricValue :: Show MetricValue where show = genericShow
instance decodeMetricValue :: Decode MetricValue where decode = genericDecode options
instance encodeMetricValue :: Encode MetricValue where encode = genericEncode options



-- | <p>The token for the next set of items to return. The token expires after 24 hours.</p>
newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>Multiple requests to update the same resource were in conflict.</p>
newtype OperationAbortedException = OperationAbortedException Types.NoArguments
derive instance newtypeOperationAbortedException :: Newtype OperationAbortedException _
derive instance repGenericOperationAbortedException :: Generic OperationAbortedException _
instance showOperationAbortedException :: Show OperationAbortedException where show = genericShow
instance decodeOperationAbortedException :: Decode OperationAbortedException where decode = genericDecode options
instance encodeOperationAbortedException :: Encode OperationAbortedException where encode = genericEncode options



newtype OrderBy = OrderBy String
derive instance newtypeOrderBy :: Newtype OrderBy _
derive instance repGenericOrderBy :: Generic OrderBy _
instance showOrderBy :: Show OrderBy where show = genericShow
instance decodeOrderBy :: Decode OrderBy where decode = genericDecode options
instance encodeOrderBy :: Encode OrderBy where encode = genericEncode options



-- | <p>Represents a log event.</p>
newtype OutputLogEvent = OutputLogEvent 
  { "timestamp" :: Maybe (Types.Timestamp)
  , "message" :: Maybe (EventMessage)
  , "ingestionTime" :: Maybe (Types.Timestamp)
  }
derive instance newtypeOutputLogEvent :: Newtype OutputLogEvent _
derive instance repGenericOutputLogEvent :: Generic OutputLogEvent _
instance showOutputLogEvent :: Show OutputLogEvent where show = genericShow
instance decodeOutputLogEvent :: Decode OutputLogEvent where decode = genericDecode options
instance encodeOutputLogEvent :: Encode OutputLogEvent where encode = genericEncode options

-- | Constructs OutputLogEvent from required parameters
newOutputLogEvent :: OutputLogEvent
newOutputLogEvent  = OutputLogEvent { "ingestionTime": Nothing, "message": Nothing, "timestamp": Nothing }

-- | Constructs OutputLogEvent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOutputLogEvent' :: ( { "timestamp" :: Maybe (Types.Timestamp) , "message" :: Maybe (EventMessage) , "ingestionTime" :: Maybe (Types.Timestamp) } -> {"timestamp" :: Maybe (Types.Timestamp) , "message" :: Maybe (EventMessage) , "ingestionTime" :: Maybe (Types.Timestamp) } ) -> OutputLogEvent
newOutputLogEvent'  customize = (OutputLogEvent <<< customize) { "ingestionTime": Nothing, "message": Nothing, "timestamp": Nothing }



newtype OutputLogEvents = OutputLogEvents (Array OutputLogEvent)
derive instance newtypeOutputLogEvents :: Newtype OutputLogEvents _
derive instance repGenericOutputLogEvents :: Generic OutputLogEvents _
instance showOutputLogEvents :: Show OutputLogEvents where show = genericShow
instance decodeOutputLogEvents :: Decode OutputLogEvents where decode = genericDecode options
instance encodeOutputLogEvents :: Encode OutputLogEvents where encode = genericEncode options



newtype PolicyDocument = PolicyDocument String
derive instance newtypePolicyDocument :: Newtype PolicyDocument _
derive instance repGenericPolicyDocument :: Generic PolicyDocument _
instance showPolicyDocument :: Show PolicyDocument where show = genericShow
instance decodePolicyDocument :: Decode PolicyDocument where decode = genericDecode options
instance encodePolicyDocument :: Encode PolicyDocument where encode = genericEncode options



newtype PolicyName = PolicyName String
derive instance newtypePolicyName :: Newtype PolicyName _
derive instance repGenericPolicyName :: Generic PolicyName _
instance showPolicyName :: Show PolicyName where show = genericShow
instance decodePolicyName :: Decode PolicyName where decode = genericDecode options
instance encodePolicyName :: Encode PolicyName where encode = genericEncode options



newtype PutDestinationPolicyRequest = PutDestinationPolicyRequest 
  { "destinationName" :: (DestinationName)
  , "accessPolicy" :: (AccessPolicy)
  }
derive instance newtypePutDestinationPolicyRequest :: Newtype PutDestinationPolicyRequest _
derive instance repGenericPutDestinationPolicyRequest :: Generic PutDestinationPolicyRequest _
instance showPutDestinationPolicyRequest :: Show PutDestinationPolicyRequest where show = genericShow
instance decodePutDestinationPolicyRequest :: Decode PutDestinationPolicyRequest where decode = genericDecode options
instance encodePutDestinationPolicyRequest :: Encode PutDestinationPolicyRequest where encode = genericEncode options

-- | Constructs PutDestinationPolicyRequest from required parameters
newPutDestinationPolicyRequest :: AccessPolicy -> DestinationName -> PutDestinationPolicyRequest
newPutDestinationPolicyRequest _accessPolicy _destinationName = PutDestinationPolicyRequest { "accessPolicy": _accessPolicy, "destinationName": _destinationName }

-- | Constructs PutDestinationPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutDestinationPolicyRequest' :: AccessPolicy -> DestinationName -> ( { "destinationName" :: (DestinationName) , "accessPolicy" :: (AccessPolicy) } -> {"destinationName" :: (DestinationName) , "accessPolicy" :: (AccessPolicy) } ) -> PutDestinationPolicyRequest
newPutDestinationPolicyRequest' _accessPolicy _destinationName customize = (PutDestinationPolicyRequest <<< customize) { "accessPolicy": _accessPolicy, "destinationName": _destinationName }



newtype PutDestinationRequest = PutDestinationRequest 
  { "destinationName" :: (DestinationName)
  , "targetArn" :: (TargetArn)
  , "roleArn" :: (RoleArn)
  }
derive instance newtypePutDestinationRequest :: Newtype PutDestinationRequest _
derive instance repGenericPutDestinationRequest :: Generic PutDestinationRequest _
instance showPutDestinationRequest :: Show PutDestinationRequest where show = genericShow
instance decodePutDestinationRequest :: Decode PutDestinationRequest where decode = genericDecode options
instance encodePutDestinationRequest :: Encode PutDestinationRequest where encode = genericEncode options

-- | Constructs PutDestinationRequest from required parameters
newPutDestinationRequest :: DestinationName -> RoleArn -> TargetArn -> PutDestinationRequest
newPutDestinationRequest _destinationName _roleArn _targetArn = PutDestinationRequest { "destinationName": _destinationName, "roleArn": _roleArn, "targetArn": _targetArn }

-- | Constructs PutDestinationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutDestinationRequest' :: DestinationName -> RoleArn -> TargetArn -> ( { "destinationName" :: (DestinationName) , "targetArn" :: (TargetArn) , "roleArn" :: (RoleArn) } -> {"destinationName" :: (DestinationName) , "targetArn" :: (TargetArn) , "roleArn" :: (RoleArn) } ) -> PutDestinationRequest
newPutDestinationRequest' _destinationName _roleArn _targetArn customize = (PutDestinationRequest <<< customize) { "destinationName": _destinationName, "roleArn": _roleArn, "targetArn": _targetArn }



newtype PutDestinationResponse = PutDestinationResponse 
  { "destination" :: Maybe (Destination)
  }
derive instance newtypePutDestinationResponse :: Newtype PutDestinationResponse _
derive instance repGenericPutDestinationResponse :: Generic PutDestinationResponse _
instance showPutDestinationResponse :: Show PutDestinationResponse where show = genericShow
instance decodePutDestinationResponse :: Decode PutDestinationResponse where decode = genericDecode options
instance encodePutDestinationResponse :: Encode PutDestinationResponse where encode = genericEncode options

-- | Constructs PutDestinationResponse from required parameters
newPutDestinationResponse :: PutDestinationResponse
newPutDestinationResponse  = PutDestinationResponse { "destination": Nothing }

-- | Constructs PutDestinationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutDestinationResponse' :: ( { "destination" :: Maybe (Destination) } -> {"destination" :: Maybe (Destination) } ) -> PutDestinationResponse
newPutDestinationResponse'  customize = (PutDestinationResponse <<< customize) { "destination": Nothing }



newtype PutLogEventsRequest = PutLogEventsRequest 
  { "logGroupName" :: (LogGroupName)
  , "logStreamName" :: (LogStreamName)
  , "logEvents" :: (InputLogEvents)
  , "sequenceToken" :: Maybe (SequenceToken)
  }
derive instance newtypePutLogEventsRequest :: Newtype PutLogEventsRequest _
derive instance repGenericPutLogEventsRequest :: Generic PutLogEventsRequest _
instance showPutLogEventsRequest :: Show PutLogEventsRequest where show = genericShow
instance decodePutLogEventsRequest :: Decode PutLogEventsRequest where decode = genericDecode options
instance encodePutLogEventsRequest :: Encode PutLogEventsRequest where encode = genericEncode options

-- | Constructs PutLogEventsRequest from required parameters
newPutLogEventsRequest :: InputLogEvents -> LogGroupName -> LogStreamName -> PutLogEventsRequest
newPutLogEventsRequest _logEvents _logGroupName _logStreamName = PutLogEventsRequest { "logEvents": _logEvents, "logGroupName": _logGroupName, "logStreamName": _logStreamName, "sequenceToken": Nothing }

-- | Constructs PutLogEventsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutLogEventsRequest' :: InputLogEvents -> LogGroupName -> LogStreamName -> ( { "logGroupName" :: (LogGroupName) , "logStreamName" :: (LogStreamName) , "logEvents" :: (InputLogEvents) , "sequenceToken" :: Maybe (SequenceToken) } -> {"logGroupName" :: (LogGroupName) , "logStreamName" :: (LogStreamName) , "logEvents" :: (InputLogEvents) , "sequenceToken" :: Maybe (SequenceToken) } ) -> PutLogEventsRequest
newPutLogEventsRequest' _logEvents _logGroupName _logStreamName customize = (PutLogEventsRequest <<< customize) { "logEvents": _logEvents, "logGroupName": _logGroupName, "logStreamName": _logStreamName, "sequenceToken": Nothing }



newtype PutLogEventsResponse = PutLogEventsResponse 
  { "nextSequenceToken" :: Maybe (SequenceToken)
  , "rejectedLogEventsInfo" :: Maybe (RejectedLogEventsInfo)
  }
derive instance newtypePutLogEventsResponse :: Newtype PutLogEventsResponse _
derive instance repGenericPutLogEventsResponse :: Generic PutLogEventsResponse _
instance showPutLogEventsResponse :: Show PutLogEventsResponse where show = genericShow
instance decodePutLogEventsResponse :: Decode PutLogEventsResponse where decode = genericDecode options
instance encodePutLogEventsResponse :: Encode PutLogEventsResponse where encode = genericEncode options

-- | Constructs PutLogEventsResponse from required parameters
newPutLogEventsResponse :: PutLogEventsResponse
newPutLogEventsResponse  = PutLogEventsResponse { "nextSequenceToken": Nothing, "rejectedLogEventsInfo": Nothing }

-- | Constructs PutLogEventsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutLogEventsResponse' :: ( { "nextSequenceToken" :: Maybe (SequenceToken) , "rejectedLogEventsInfo" :: Maybe (RejectedLogEventsInfo) } -> {"nextSequenceToken" :: Maybe (SequenceToken) , "rejectedLogEventsInfo" :: Maybe (RejectedLogEventsInfo) } ) -> PutLogEventsResponse
newPutLogEventsResponse'  customize = (PutLogEventsResponse <<< customize) { "nextSequenceToken": Nothing, "rejectedLogEventsInfo": Nothing }



newtype PutMetricFilterRequest = PutMetricFilterRequest 
  { "logGroupName" :: (LogGroupName)
  , "filterName" :: (FilterName)
  , "filterPattern" :: (FilterPattern)
  , "metricTransformations" :: (MetricTransformations)
  }
derive instance newtypePutMetricFilterRequest :: Newtype PutMetricFilterRequest _
derive instance repGenericPutMetricFilterRequest :: Generic PutMetricFilterRequest _
instance showPutMetricFilterRequest :: Show PutMetricFilterRequest where show = genericShow
instance decodePutMetricFilterRequest :: Decode PutMetricFilterRequest where decode = genericDecode options
instance encodePutMetricFilterRequest :: Encode PutMetricFilterRequest where encode = genericEncode options

-- | Constructs PutMetricFilterRequest from required parameters
newPutMetricFilterRequest :: FilterName -> FilterPattern -> LogGroupName -> MetricTransformations -> PutMetricFilterRequest
newPutMetricFilterRequest _filterName _filterPattern _logGroupName _metricTransformations = PutMetricFilterRequest { "filterName": _filterName, "filterPattern": _filterPattern, "logGroupName": _logGroupName, "metricTransformations": _metricTransformations }

-- | Constructs PutMetricFilterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutMetricFilterRequest' :: FilterName -> FilterPattern -> LogGroupName -> MetricTransformations -> ( { "logGroupName" :: (LogGroupName) , "filterName" :: (FilterName) , "filterPattern" :: (FilterPattern) , "metricTransformations" :: (MetricTransformations) } -> {"logGroupName" :: (LogGroupName) , "filterName" :: (FilterName) , "filterPattern" :: (FilterPattern) , "metricTransformations" :: (MetricTransformations) } ) -> PutMetricFilterRequest
newPutMetricFilterRequest' _filterName _filterPattern _logGroupName _metricTransformations customize = (PutMetricFilterRequest <<< customize) { "filterName": _filterName, "filterPattern": _filterPattern, "logGroupName": _logGroupName, "metricTransformations": _metricTransformations }



newtype PutResourcePolicyRequest = PutResourcePolicyRequest 
  { "policyName" :: Maybe (PolicyName)
  , "policyDocument" :: Maybe (PolicyDocument)
  }
derive instance newtypePutResourcePolicyRequest :: Newtype PutResourcePolicyRequest _
derive instance repGenericPutResourcePolicyRequest :: Generic PutResourcePolicyRequest _
instance showPutResourcePolicyRequest :: Show PutResourcePolicyRequest where show = genericShow
instance decodePutResourcePolicyRequest :: Decode PutResourcePolicyRequest where decode = genericDecode options
instance encodePutResourcePolicyRequest :: Encode PutResourcePolicyRequest where encode = genericEncode options

-- | Constructs PutResourcePolicyRequest from required parameters
newPutResourcePolicyRequest :: PutResourcePolicyRequest
newPutResourcePolicyRequest  = PutResourcePolicyRequest { "policyDocument": Nothing, "policyName": Nothing }

-- | Constructs PutResourcePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutResourcePolicyRequest' :: ( { "policyName" :: Maybe (PolicyName) , "policyDocument" :: Maybe (PolicyDocument) } -> {"policyName" :: Maybe (PolicyName) , "policyDocument" :: Maybe (PolicyDocument) } ) -> PutResourcePolicyRequest
newPutResourcePolicyRequest'  customize = (PutResourcePolicyRequest <<< customize) { "policyDocument": Nothing, "policyName": Nothing }



newtype PutResourcePolicyResponse = PutResourcePolicyResponse 
  { "resourcePolicy" :: Maybe (ResourcePolicy)
  }
derive instance newtypePutResourcePolicyResponse :: Newtype PutResourcePolicyResponse _
derive instance repGenericPutResourcePolicyResponse :: Generic PutResourcePolicyResponse _
instance showPutResourcePolicyResponse :: Show PutResourcePolicyResponse where show = genericShow
instance decodePutResourcePolicyResponse :: Decode PutResourcePolicyResponse where decode = genericDecode options
instance encodePutResourcePolicyResponse :: Encode PutResourcePolicyResponse where encode = genericEncode options

-- | Constructs PutResourcePolicyResponse from required parameters
newPutResourcePolicyResponse :: PutResourcePolicyResponse
newPutResourcePolicyResponse  = PutResourcePolicyResponse { "resourcePolicy": Nothing }

-- | Constructs PutResourcePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutResourcePolicyResponse' :: ( { "resourcePolicy" :: Maybe (ResourcePolicy) } -> {"resourcePolicy" :: Maybe (ResourcePolicy) } ) -> PutResourcePolicyResponse
newPutResourcePolicyResponse'  customize = (PutResourcePolicyResponse <<< customize) { "resourcePolicy": Nothing }



newtype PutRetentionPolicyRequest = PutRetentionPolicyRequest 
  { "logGroupName" :: (LogGroupName)
  , "retentionInDays" :: (Days)
  }
derive instance newtypePutRetentionPolicyRequest :: Newtype PutRetentionPolicyRequest _
derive instance repGenericPutRetentionPolicyRequest :: Generic PutRetentionPolicyRequest _
instance showPutRetentionPolicyRequest :: Show PutRetentionPolicyRequest where show = genericShow
instance decodePutRetentionPolicyRequest :: Decode PutRetentionPolicyRequest where decode = genericDecode options
instance encodePutRetentionPolicyRequest :: Encode PutRetentionPolicyRequest where encode = genericEncode options

-- | Constructs PutRetentionPolicyRequest from required parameters
newPutRetentionPolicyRequest :: LogGroupName -> Days -> PutRetentionPolicyRequest
newPutRetentionPolicyRequest _logGroupName _retentionInDays = PutRetentionPolicyRequest { "logGroupName": _logGroupName, "retentionInDays": _retentionInDays }

-- | Constructs PutRetentionPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutRetentionPolicyRequest' :: LogGroupName -> Days -> ( { "logGroupName" :: (LogGroupName) , "retentionInDays" :: (Days) } -> {"logGroupName" :: (LogGroupName) , "retentionInDays" :: (Days) } ) -> PutRetentionPolicyRequest
newPutRetentionPolicyRequest' _logGroupName _retentionInDays customize = (PutRetentionPolicyRequest <<< customize) { "logGroupName": _logGroupName, "retentionInDays": _retentionInDays }



newtype PutSubscriptionFilterRequest = PutSubscriptionFilterRequest 
  { "logGroupName" :: (LogGroupName)
  , "filterName" :: (FilterName)
  , "filterPattern" :: (FilterPattern)
  , "destinationArn" :: (DestinationArn)
  , "roleArn" :: Maybe (RoleArn)
  , "distribution" :: Maybe (Distribution)
  }
derive instance newtypePutSubscriptionFilterRequest :: Newtype PutSubscriptionFilterRequest _
derive instance repGenericPutSubscriptionFilterRequest :: Generic PutSubscriptionFilterRequest _
instance showPutSubscriptionFilterRequest :: Show PutSubscriptionFilterRequest where show = genericShow
instance decodePutSubscriptionFilterRequest :: Decode PutSubscriptionFilterRequest where decode = genericDecode options
instance encodePutSubscriptionFilterRequest :: Encode PutSubscriptionFilterRequest where encode = genericEncode options

-- | Constructs PutSubscriptionFilterRequest from required parameters
newPutSubscriptionFilterRequest :: DestinationArn -> FilterName -> FilterPattern -> LogGroupName -> PutSubscriptionFilterRequest
newPutSubscriptionFilterRequest _destinationArn _filterName _filterPattern _logGroupName = PutSubscriptionFilterRequest { "destinationArn": _destinationArn, "filterName": _filterName, "filterPattern": _filterPattern, "logGroupName": _logGroupName, "distribution": Nothing, "roleArn": Nothing }

-- | Constructs PutSubscriptionFilterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutSubscriptionFilterRequest' :: DestinationArn -> FilterName -> FilterPattern -> LogGroupName -> ( { "logGroupName" :: (LogGroupName) , "filterName" :: (FilterName) , "filterPattern" :: (FilterPattern) , "destinationArn" :: (DestinationArn) , "roleArn" :: Maybe (RoleArn) , "distribution" :: Maybe (Distribution) } -> {"logGroupName" :: (LogGroupName) , "filterName" :: (FilterName) , "filterPattern" :: (FilterPattern) , "destinationArn" :: (DestinationArn) , "roleArn" :: Maybe (RoleArn) , "distribution" :: Maybe (Distribution) } ) -> PutSubscriptionFilterRequest
newPutSubscriptionFilterRequest' _destinationArn _filterName _filterPattern _logGroupName customize = (PutSubscriptionFilterRequest <<< customize) { "destinationArn": _destinationArn, "filterName": _filterName, "filterPattern": _filterPattern, "logGroupName": _logGroupName, "distribution": Nothing, "roleArn": Nothing }



-- | <p>Represents the rejected events.</p>
newtype RejectedLogEventsInfo = RejectedLogEventsInfo 
  { "tooNewLogEventStartIndex" :: Maybe (LogEventIndex)
  , "tooOldLogEventEndIndex" :: Maybe (LogEventIndex)
  , "expiredLogEventEndIndex" :: Maybe (LogEventIndex)
  }
derive instance newtypeRejectedLogEventsInfo :: Newtype RejectedLogEventsInfo _
derive instance repGenericRejectedLogEventsInfo :: Generic RejectedLogEventsInfo _
instance showRejectedLogEventsInfo :: Show RejectedLogEventsInfo where show = genericShow
instance decodeRejectedLogEventsInfo :: Decode RejectedLogEventsInfo where decode = genericDecode options
instance encodeRejectedLogEventsInfo :: Encode RejectedLogEventsInfo where encode = genericEncode options

-- | Constructs RejectedLogEventsInfo from required parameters
newRejectedLogEventsInfo :: RejectedLogEventsInfo
newRejectedLogEventsInfo  = RejectedLogEventsInfo { "expiredLogEventEndIndex": Nothing, "tooNewLogEventStartIndex": Nothing, "tooOldLogEventEndIndex": Nothing }

-- | Constructs RejectedLogEventsInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRejectedLogEventsInfo' :: ( { "tooNewLogEventStartIndex" :: Maybe (LogEventIndex) , "tooOldLogEventEndIndex" :: Maybe (LogEventIndex) , "expiredLogEventEndIndex" :: Maybe (LogEventIndex) } -> {"tooNewLogEventStartIndex" :: Maybe (LogEventIndex) , "tooOldLogEventEndIndex" :: Maybe (LogEventIndex) , "expiredLogEventEndIndex" :: Maybe (LogEventIndex) } ) -> RejectedLogEventsInfo
newRejectedLogEventsInfo'  customize = (RejectedLogEventsInfo <<< customize) { "expiredLogEventEndIndex": Nothing, "tooNewLogEventStartIndex": Nothing, "tooOldLogEventEndIndex": Nothing }



-- | <p>The specified resource already exists.</p>
newtype ResourceAlreadyExistsException = ResourceAlreadyExistsException Types.NoArguments
derive instance newtypeResourceAlreadyExistsException :: Newtype ResourceAlreadyExistsException _
derive instance repGenericResourceAlreadyExistsException :: Generic ResourceAlreadyExistsException _
instance showResourceAlreadyExistsException :: Show ResourceAlreadyExistsException where show = genericShow
instance decodeResourceAlreadyExistsException :: Decode ResourceAlreadyExistsException where decode = genericDecode options
instance encodeResourceAlreadyExistsException :: Encode ResourceAlreadyExistsException where encode = genericEncode options



-- | <p>The specified resource does not exist.</p>
newtype ResourceNotFoundException = ResourceNotFoundException Types.NoArguments
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options



newtype ResourcePolicies = ResourcePolicies (Array ResourcePolicy)
derive instance newtypeResourcePolicies :: Newtype ResourcePolicies _
derive instance repGenericResourcePolicies :: Generic ResourcePolicies _
instance showResourcePolicies :: Show ResourcePolicies where show = genericShow
instance decodeResourcePolicies :: Decode ResourcePolicies where decode = genericDecode options
instance encodeResourcePolicies :: Encode ResourcePolicies where encode = genericEncode options



-- | <p>A policy enabling one or more entities to put logs to a log group in this account.</p>
newtype ResourcePolicy = ResourcePolicy 
  { "policyName" :: Maybe (PolicyName)
  , "policyDocument" :: Maybe (PolicyDocument)
  , "lastUpdatedTime" :: Maybe (Types.Timestamp)
  }
derive instance newtypeResourcePolicy :: Newtype ResourcePolicy _
derive instance repGenericResourcePolicy :: Generic ResourcePolicy _
instance showResourcePolicy :: Show ResourcePolicy where show = genericShow
instance decodeResourcePolicy :: Decode ResourcePolicy where decode = genericDecode options
instance encodeResourcePolicy :: Encode ResourcePolicy where encode = genericEncode options

-- | Constructs ResourcePolicy from required parameters
newResourcePolicy :: ResourcePolicy
newResourcePolicy  = ResourcePolicy { "lastUpdatedTime": Nothing, "policyDocument": Nothing, "policyName": Nothing }

-- | Constructs ResourcePolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourcePolicy' :: ( { "policyName" :: Maybe (PolicyName) , "policyDocument" :: Maybe (PolicyDocument) , "lastUpdatedTime" :: Maybe (Types.Timestamp) } -> {"policyName" :: Maybe (PolicyName) , "policyDocument" :: Maybe (PolicyDocument) , "lastUpdatedTime" :: Maybe (Types.Timestamp) } ) -> ResourcePolicy
newResourcePolicy'  customize = (ResourcePolicy <<< customize) { "lastUpdatedTime": Nothing, "policyDocument": Nothing, "policyName": Nothing }



newtype RoleArn = RoleArn String
derive instance newtypeRoleArn :: Newtype RoleArn _
derive instance repGenericRoleArn :: Generic RoleArn _
instance showRoleArn :: Show RoleArn where show = genericShow
instance decodeRoleArn :: Decode RoleArn where decode = genericDecode options
instance encodeRoleArn :: Encode RoleArn where encode = genericEncode options



-- | <p>Represents the search status of a log stream.</p>
newtype SearchedLogStream = SearchedLogStream 
  { "logStreamName" :: Maybe (LogStreamName)
  , "searchedCompletely" :: Maybe (LogStreamSearchedCompletely)
  }
derive instance newtypeSearchedLogStream :: Newtype SearchedLogStream _
derive instance repGenericSearchedLogStream :: Generic SearchedLogStream _
instance showSearchedLogStream :: Show SearchedLogStream where show = genericShow
instance decodeSearchedLogStream :: Decode SearchedLogStream where decode = genericDecode options
instance encodeSearchedLogStream :: Encode SearchedLogStream where encode = genericEncode options

-- | Constructs SearchedLogStream from required parameters
newSearchedLogStream :: SearchedLogStream
newSearchedLogStream  = SearchedLogStream { "logStreamName": Nothing, "searchedCompletely": Nothing }

-- | Constructs SearchedLogStream's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchedLogStream' :: ( { "logStreamName" :: Maybe (LogStreamName) , "searchedCompletely" :: Maybe (LogStreamSearchedCompletely) } -> {"logStreamName" :: Maybe (LogStreamName) , "searchedCompletely" :: Maybe (LogStreamSearchedCompletely) } ) -> SearchedLogStream
newSearchedLogStream'  customize = (SearchedLogStream <<< customize) { "logStreamName": Nothing, "searchedCompletely": Nothing }



newtype SearchedLogStreams = SearchedLogStreams (Array SearchedLogStream)
derive instance newtypeSearchedLogStreams :: Newtype SearchedLogStreams _
derive instance repGenericSearchedLogStreams :: Generic SearchedLogStreams _
instance showSearchedLogStreams :: Show SearchedLogStreams where show = genericShow
instance decodeSearchedLogStreams :: Decode SearchedLogStreams where decode = genericDecode options
instance encodeSearchedLogStreams :: Encode SearchedLogStreams where encode = genericEncode options



newtype SequenceToken = SequenceToken String
derive instance newtypeSequenceToken :: Newtype SequenceToken _
derive instance repGenericSequenceToken :: Generic SequenceToken _
instance showSequenceToken :: Show SequenceToken where show = genericShow
instance decodeSequenceToken :: Decode SequenceToken where decode = genericDecode options
instance encodeSequenceToken :: Encode SequenceToken where encode = genericEncode options



-- | <p>The service cannot complete the request.</p>
newtype ServiceUnavailableException = ServiceUnavailableException Types.NoArguments
derive instance newtypeServiceUnavailableException :: Newtype ServiceUnavailableException _
derive instance repGenericServiceUnavailableException :: Generic ServiceUnavailableException _
instance showServiceUnavailableException :: Show ServiceUnavailableException where show = genericShow
instance decodeServiceUnavailableException :: Decode ServiceUnavailableException where decode = genericDecode options
instance encodeServiceUnavailableException :: Encode ServiceUnavailableException where encode = genericEncode options



newtype StartFromHead = StartFromHead Boolean
derive instance newtypeStartFromHead :: Newtype StartFromHead _
derive instance repGenericStartFromHead :: Generic StartFromHead _
instance showStartFromHead :: Show StartFromHead where show = genericShow
instance decodeStartFromHead :: Decode StartFromHead where decode = genericDecode options
instance encodeStartFromHead :: Encode StartFromHead where encode = genericEncode options



newtype StoredBytes = StoredBytes Number
derive instance newtypeStoredBytes :: Newtype StoredBytes _
derive instance repGenericStoredBytes :: Generic StoredBytes _
instance showStoredBytes :: Show StoredBytes where show = genericShow
instance decodeStoredBytes :: Decode StoredBytes where decode = genericDecode options
instance encodeStoredBytes :: Encode StoredBytes where encode = genericEncode options



-- | <p>Represents a subscription filter.</p>
newtype SubscriptionFilter = SubscriptionFilter 
  { "filterName" :: Maybe (FilterName)
  , "logGroupName" :: Maybe (LogGroupName)
  , "filterPattern" :: Maybe (FilterPattern)
  , "destinationArn" :: Maybe (DestinationArn)
  , "roleArn" :: Maybe (RoleArn)
  , "distribution" :: Maybe (Distribution)
  , "creationTime" :: Maybe (Types.Timestamp)
  }
derive instance newtypeSubscriptionFilter :: Newtype SubscriptionFilter _
derive instance repGenericSubscriptionFilter :: Generic SubscriptionFilter _
instance showSubscriptionFilter :: Show SubscriptionFilter where show = genericShow
instance decodeSubscriptionFilter :: Decode SubscriptionFilter where decode = genericDecode options
instance encodeSubscriptionFilter :: Encode SubscriptionFilter where encode = genericEncode options

-- | Constructs SubscriptionFilter from required parameters
newSubscriptionFilter :: SubscriptionFilter
newSubscriptionFilter  = SubscriptionFilter { "creationTime": Nothing, "destinationArn": Nothing, "distribution": Nothing, "filterName": Nothing, "filterPattern": Nothing, "logGroupName": Nothing, "roleArn": Nothing }

-- | Constructs SubscriptionFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscriptionFilter' :: ( { "filterName" :: Maybe (FilterName) , "logGroupName" :: Maybe (LogGroupName) , "filterPattern" :: Maybe (FilterPattern) , "destinationArn" :: Maybe (DestinationArn) , "roleArn" :: Maybe (RoleArn) , "distribution" :: Maybe (Distribution) , "creationTime" :: Maybe (Types.Timestamp) } -> {"filterName" :: Maybe (FilterName) , "logGroupName" :: Maybe (LogGroupName) , "filterPattern" :: Maybe (FilterPattern) , "destinationArn" :: Maybe (DestinationArn) , "roleArn" :: Maybe (RoleArn) , "distribution" :: Maybe (Distribution) , "creationTime" :: Maybe (Types.Timestamp) } ) -> SubscriptionFilter
newSubscriptionFilter'  customize = (SubscriptionFilter <<< customize) { "creationTime": Nothing, "destinationArn": Nothing, "distribution": Nothing, "filterName": Nothing, "filterPattern": Nothing, "logGroupName": Nothing, "roleArn": Nothing }



newtype SubscriptionFilters = SubscriptionFilters (Array SubscriptionFilter)
derive instance newtypeSubscriptionFilters :: Newtype SubscriptionFilters _
derive instance repGenericSubscriptionFilters :: Generic SubscriptionFilters _
instance showSubscriptionFilters :: Show SubscriptionFilters where show = genericShow
instance decodeSubscriptionFilters :: Decode SubscriptionFilters where decode = genericDecode options
instance encodeSubscriptionFilters :: Encode SubscriptionFilters where encode = genericEncode options



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagList = TagList (Array TagKey)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



newtype TagLogGroupRequest = TagLogGroupRequest 
  { "logGroupName" :: (LogGroupName)
  , "tags" :: (Tags)
  }
derive instance newtypeTagLogGroupRequest :: Newtype TagLogGroupRequest _
derive instance repGenericTagLogGroupRequest :: Generic TagLogGroupRequest _
instance showTagLogGroupRequest :: Show TagLogGroupRequest where show = genericShow
instance decodeTagLogGroupRequest :: Decode TagLogGroupRequest where decode = genericDecode options
instance encodeTagLogGroupRequest :: Encode TagLogGroupRequest where encode = genericEncode options

-- | Constructs TagLogGroupRequest from required parameters
newTagLogGroupRequest :: LogGroupName -> Tags -> TagLogGroupRequest
newTagLogGroupRequest _logGroupName _tags = TagLogGroupRequest { "logGroupName": _logGroupName, "tags": _tags }

-- | Constructs TagLogGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagLogGroupRequest' :: LogGroupName -> Tags -> ( { "logGroupName" :: (LogGroupName) , "tags" :: (Tags) } -> {"logGroupName" :: (LogGroupName) , "tags" :: (Tags) } ) -> TagLogGroupRequest
newTagLogGroupRequest' _logGroupName _tags customize = (TagLogGroupRequest <<< customize) { "logGroupName": _logGroupName, "tags": _tags }



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



newtype Tags = Tags (StrMap.StrMap TagValue)
derive instance newtypeTags :: Newtype Tags _
derive instance repGenericTags :: Generic Tags _
instance showTags :: Show Tags where show = genericShow
instance decodeTags :: Decode Tags where decode = genericDecode options
instance encodeTags :: Encode Tags where encode = genericEncode options



newtype TargetArn = TargetArn String
derive instance newtypeTargetArn :: Newtype TargetArn _
derive instance repGenericTargetArn :: Generic TargetArn _
instance showTargetArn :: Show TargetArn where show = genericShow
instance decodeTargetArn :: Decode TargetArn where decode = genericDecode options
instance encodeTargetArn :: Encode TargetArn where encode = genericEncode options



newtype TestEventMessages = TestEventMessages (Array EventMessage)
derive instance newtypeTestEventMessages :: Newtype TestEventMessages _
derive instance repGenericTestEventMessages :: Generic TestEventMessages _
instance showTestEventMessages :: Show TestEventMessages where show = genericShow
instance decodeTestEventMessages :: Decode TestEventMessages where decode = genericDecode options
instance encodeTestEventMessages :: Encode TestEventMessages where encode = genericEncode options



newtype TestMetricFilterRequest = TestMetricFilterRequest 
  { "filterPattern" :: (FilterPattern)
  , "logEventMessages" :: (TestEventMessages)
  }
derive instance newtypeTestMetricFilterRequest :: Newtype TestMetricFilterRequest _
derive instance repGenericTestMetricFilterRequest :: Generic TestMetricFilterRequest _
instance showTestMetricFilterRequest :: Show TestMetricFilterRequest where show = genericShow
instance decodeTestMetricFilterRequest :: Decode TestMetricFilterRequest where decode = genericDecode options
instance encodeTestMetricFilterRequest :: Encode TestMetricFilterRequest where encode = genericEncode options

-- | Constructs TestMetricFilterRequest from required parameters
newTestMetricFilterRequest :: FilterPattern -> TestEventMessages -> TestMetricFilterRequest
newTestMetricFilterRequest _filterPattern _logEventMessages = TestMetricFilterRequest { "filterPattern": _filterPattern, "logEventMessages": _logEventMessages }

-- | Constructs TestMetricFilterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTestMetricFilterRequest' :: FilterPattern -> TestEventMessages -> ( { "filterPattern" :: (FilterPattern) , "logEventMessages" :: (TestEventMessages) } -> {"filterPattern" :: (FilterPattern) , "logEventMessages" :: (TestEventMessages) } ) -> TestMetricFilterRequest
newTestMetricFilterRequest' _filterPattern _logEventMessages customize = (TestMetricFilterRequest <<< customize) { "filterPattern": _filterPattern, "logEventMessages": _logEventMessages }



newtype TestMetricFilterResponse = TestMetricFilterResponse 
  { "matches" :: Maybe (MetricFilterMatches)
  }
derive instance newtypeTestMetricFilterResponse :: Newtype TestMetricFilterResponse _
derive instance repGenericTestMetricFilterResponse :: Generic TestMetricFilterResponse _
instance showTestMetricFilterResponse :: Show TestMetricFilterResponse where show = genericShow
instance decodeTestMetricFilterResponse :: Decode TestMetricFilterResponse where decode = genericDecode options
instance encodeTestMetricFilterResponse :: Encode TestMetricFilterResponse where encode = genericEncode options

-- | Constructs TestMetricFilterResponse from required parameters
newTestMetricFilterResponse :: TestMetricFilterResponse
newTestMetricFilterResponse  = TestMetricFilterResponse { "matches": Nothing }

-- | Constructs TestMetricFilterResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTestMetricFilterResponse' :: ( { "matches" :: Maybe (MetricFilterMatches) } -> {"matches" :: Maybe (MetricFilterMatches) } ) -> TestMetricFilterResponse
newTestMetricFilterResponse'  customize = (TestMetricFilterResponse <<< customize) { "matches": Nothing }



newtype Token = Token String
derive instance newtypeToken :: Newtype Token _
derive instance repGenericToken :: Generic Token _
instance showToken :: Show Token where show = genericShow
instance decodeToken :: Decode Token where decode = genericDecode options
instance encodeToken :: Encode Token where encode = genericEncode options



newtype UntagLogGroupRequest = UntagLogGroupRequest 
  { "logGroupName" :: (LogGroupName)
  , "tags" :: (TagList)
  }
derive instance newtypeUntagLogGroupRequest :: Newtype UntagLogGroupRequest _
derive instance repGenericUntagLogGroupRequest :: Generic UntagLogGroupRequest _
instance showUntagLogGroupRequest :: Show UntagLogGroupRequest where show = genericShow
instance decodeUntagLogGroupRequest :: Decode UntagLogGroupRequest where decode = genericDecode options
instance encodeUntagLogGroupRequest :: Encode UntagLogGroupRequest where encode = genericEncode options

-- | Constructs UntagLogGroupRequest from required parameters
newUntagLogGroupRequest :: LogGroupName -> TagList -> UntagLogGroupRequest
newUntagLogGroupRequest _logGroupName _tags = UntagLogGroupRequest { "logGroupName": _logGroupName, "tags": _tags }

-- | Constructs UntagLogGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUntagLogGroupRequest' :: LogGroupName -> TagList -> ( { "logGroupName" :: (LogGroupName) , "tags" :: (TagList) } -> {"logGroupName" :: (LogGroupName) , "tags" :: (TagList) } ) -> UntagLogGroupRequest
newUntagLogGroupRequest' _logGroupName _tags customize = (UntagLogGroupRequest <<< customize) { "logGroupName": _logGroupName, "tags": _tags }



newtype Value = Value String
derive instance newtypeValue :: Newtype Value _
derive instance repGenericValue :: Generic Value _
instance showValue :: Show Value where show = genericShow
instance decodeValue :: Decode Value where decode = genericDecode options
instance encodeValue :: Encode Value where encode = genericEncode options

