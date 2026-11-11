import Foundation

// MARK: - StartBatchJobPoolRequest

public struct StartBatchJobPoolRequest: Codable, Sendable {
    public var batchJobPoolId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var startBatchJobPoolDetails: StartBatchJobPoolDetails?

    private enum CodingKeys: String, CodingKey {
        case batchJobPoolId, ifMatch, opcRequestId, startBatchJobPoolDetails
    }

    public init(
                batchJobPoolId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                startBatchJobPoolDetails: StartBatchJobPoolDetails? = nil
    ) {
        self.batchJobPoolId = batchJobPoolId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.startBatchJobPoolDetails = startBatchJobPoolDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StartBatchJobPoolRequest: CustomStringConvertible {
    public var description: String { "StartBatchJobPoolRequest()" }
}

// MARK: - StartBatchJobPoolResponse

public struct StartBatchJobPoolResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StartBatchJobPoolResponse: CustomStringConvertible {
    public var description: String { "StartBatchJobPoolResponse()" }
}