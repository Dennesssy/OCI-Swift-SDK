import Foundation
import OCICommon

// MARK: - GetBatchTaskRequest

public struct GetBatchTaskRequest: Codable, Sendable {
    public var batchJobId: String?
    public var taskName: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case batchJobId, taskName, opcRequestId
    }

    public init(
                batchJobId: String? = nil,
                taskName: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.batchJobId = batchJobId
        self.taskName = taskName
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBatchTaskRequest: CustomStringConvertible {
    public var description: String { "GetBatchTaskRequest()" }
}

// MARK: - GetBatchTaskResponse

public struct GetBatchTaskResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var batchTask: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, batchTask
    }

    public init(
                opcRequestId: String? = nil,
                batchTask: JSONValue? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.batchTask = batchTask
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBatchTaskResponse: CustomStringConvertible {
    public var description: String { "GetBatchTaskResponse()" }
}