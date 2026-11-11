import Foundation

// MARK: - CreateLimitsIncreaseRequestRequest

public struct CreateLimitsIncreaseRequestRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createLimitsIncreaseRequestDetails: CreateLimitsIncreaseRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createLimitsIncreaseRequestDetails
    }

    public init(
                opcRequestId: String? = nil,
                createLimitsIncreaseRequestDetails: CreateLimitsIncreaseRequestDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createLimitsIncreaseRequestDetails = createLimitsIncreaseRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateLimitsIncreaseRequestRequest: CustomStringConvertible {
    public var description: String { "CreateLimitsIncreaseRequestRequest()" }
}

// MARK: - CreateLimitsIncreaseRequestResponse

public struct CreateLimitsIncreaseRequestResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var limitsIncreaseRequest: LimitsIncreaseRequest?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, limitsIncreaseRequest
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                limitsIncreaseRequest: LimitsIncreaseRequest? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.limitsIncreaseRequest = limitsIncreaseRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateLimitsIncreaseRequestResponse: CustomStringConvertible {
    public var description: String { "CreateLimitsIncreaseRequestResponse()" }
}