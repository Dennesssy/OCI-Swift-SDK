import Foundation

// MARK: - GetBatchTaskProfileRequest

public struct GetBatchTaskProfileRequest: Codable, Sendable {
    public var batchTaskProfileId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case batchTaskProfileId, opcRequestId
    }

    public init(
                batchTaskProfileId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.batchTaskProfileId = batchTaskProfileId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBatchTaskProfileRequest: CustomStringConvertible {
    public var description: String { "GetBatchTaskProfileRequest()" }
}

// MARK: - GetBatchTaskProfileResponse

public struct GetBatchTaskProfileResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var batchTaskProfile: BatchTaskProfile?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, batchTaskProfile
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                batchTaskProfile: BatchTaskProfile? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.batchTaskProfile = batchTaskProfile
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBatchTaskProfileResponse: CustomStringConvertible {
    public var description: String { "GetBatchTaskProfileResponse()" }
}