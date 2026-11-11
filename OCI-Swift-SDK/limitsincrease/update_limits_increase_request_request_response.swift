import Foundation

// MARK: - UpdateLimitsIncreaseRequestRequest

public struct UpdateLimitsIncreaseRequestRequest: Codable, Sendable {
    public var limitsIncreaseRequestId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var updateLimitsIncreaseRequestDetails: UpdateLimitsIncreaseRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case limitsIncreaseRequestId, opcRequestId, ifMatch, updateLimitsIncreaseRequestDetails
    }

    public init(
                limitsIncreaseRequestId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                updateLimitsIncreaseRequestDetails: UpdateLimitsIncreaseRequestDetails? = nil
    ) {
        self.limitsIncreaseRequestId = limitsIncreaseRequestId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.updateLimitsIncreaseRequestDetails = updateLimitsIncreaseRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateLimitsIncreaseRequestRequest: CustomStringConvertible {
    public var description: String { "UpdateLimitsIncreaseRequestRequest()" }
}

// MARK: - UpdateLimitsIncreaseRequestResponse

public struct UpdateLimitsIncreaseRequestResponse: Codable, Sendable {
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

extension UpdateLimitsIncreaseRequestResponse: CustomStringConvertible {
    public var description: String { "UpdateLimitsIncreaseRequestResponse()" }
}