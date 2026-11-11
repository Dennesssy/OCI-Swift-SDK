import Foundation

// MARK: - CancelLimitsIncreaseItemRequestRequest

public struct CancelLimitsIncreaseItemRequestRequest: Codable, Sendable {
    public var limitsIncreaseItemRequestId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case limitsIncreaseItemRequestId, opcRequestId, ifMatch
    }

    public init(
                limitsIncreaseItemRequestId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.limitsIncreaseItemRequestId = limitsIncreaseItemRequestId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelLimitsIncreaseItemRequestRequest: CustomStringConvertible {
    public var description: String { "CancelLimitsIncreaseItemRequestRequest()" }
}

// MARK: - CancelLimitsIncreaseItemRequestResponse

public struct CancelLimitsIncreaseItemRequestResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var limitsIncreaseItemRequest: LimitsIncreaseItemRequest?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, limitsIncreaseItemRequest
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                limitsIncreaseItemRequest: LimitsIncreaseItemRequest? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.limitsIncreaseItemRequest = limitsIncreaseItemRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelLimitsIncreaseItemRequestResponse: CustomStringConvertible {
    public var description: String { "CancelLimitsIncreaseItemRequestResponse()" }
}