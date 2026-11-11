import Foundation

// MARK: - DeleteBatchTaskProfileRequest

public struct DeleteBatchTaskProfileRequest: Codable, Sendable {
    public var batchTaskProfileId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case batchTaskProfileId, ifMatch, opcRequestId
    }

    public init(
                batchTaskProfileId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.batchTaskProfileId = batchTaskProfileId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteBatchTaskProfileRequest: CustomStringConvertible {
    public var description: String { "DeleteBatchTaskProfileRequest()" }
}

// MARK: - DeleteBatchTaskProfileResponse

public struct DeleteBatchTaskProfileResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteBatchTaskProfileResponse: CustomStringConvertible {
    public var description: String { "DeleteBatchTaskProfileResponse()" }
}