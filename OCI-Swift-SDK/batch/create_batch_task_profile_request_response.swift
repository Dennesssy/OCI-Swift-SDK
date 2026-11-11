import Foundation

// MARK: - CreateBatchTaskProfileRequest

public struct CreateBatchTaskProfileRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createBatchTaskProfileDetails: CreateBatchTaskProfileDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createBatchTaskProfileDetails
    }

    public init(
                opcRequestId: String? = nil,
                createBatchTaskProfileDetails: CreateBatchTaskProfileDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createBatchTaskProfileDetails = createBatchTaskProfileDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateBatchTaskProfileRequest: CustomStringConvertible {
    public var description: String { "CreateBatchTaskProfileRequest()" }
}

// MARK: - CreateBatchTaskProfileResponse

public struct CreateBatchTaskProfileResponse: Codable, Sendable {
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

extension CreateBatchTaskProfileResponse: CustomStringConvertible {
    public var description: String { "CreateBatchTaskProfileResponse()" }
}