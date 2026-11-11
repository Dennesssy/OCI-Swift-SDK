import Foundation

// MARK: - UpdateBatchTaskProfileRequest

public struct UpdateBatchTaskProfileRequest: Codable, Sendable {
    public var batchTaskProfileId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateBatchTaskProfileDetails: UpdateBatchTaskProfileDetails?

    private enum CodingKeys: String, CodingKey {
        case batchTaskProfileId, ifMatch, opcRequestId, updateBatchTaskProfileDetails
    }

    public init(
                batchTaskProfileId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateBatchTaskProfileDetails: UpdateBatchTaskProfileDetails? = nil
    ) {
        self.batchTaskProfileId = batchTaskProfileId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateBatchTaskProfileDetails = updateBatchTaskProfileDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateBatchTaskProfileRequest: CustomStringConvertible {
    public var description: String { "UpdateBatchTaskProfileRequest()" }
}

// MARK: - UpdateBatchTaskProfileResponse

public struct UpdateBatchTaskProfileResponse: Codable, Sendable {
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

extension UpdateBatchTaskProfileResponse: CustomStringConvertible {
    public var description: String { "UpdateBatchTaskProfileResponse()" }
}