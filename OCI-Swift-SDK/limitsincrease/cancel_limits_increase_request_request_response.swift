import Foundation

// MARK: - CancelLimitsIncreaseRequestRequest

public struct CancelLimitsIncreaseRequestRequest: Codable, Sendable {
    public var limitsIncreaseRequestId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case limitsIncreaseRequestId, opcRequestId, ifMatch
    }

    public init(
                limitsIncreaseRequestId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.limitsIncreaseRequestId = limitsIncreaseRequestId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelLimitsIncreaseRequestRequest: CustomStringConvertible {
    public var description: String { "CancelLimitsIncreaseRequestRequest()" }
}

// MARK: - CancelLimitsIncreaseRequestResponse

public struct CancelLimitsIncreaseRequestResponse: Codable, Sendable {
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

extension CancelLimitsIncreaseRequestResponse: CustomStringConvertible {
    public var description: String { "CancelLimitsIncreaseRequestResponse()" }
}