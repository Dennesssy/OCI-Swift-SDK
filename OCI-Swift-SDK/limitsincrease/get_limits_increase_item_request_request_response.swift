import Foundation

// MARK: - GetLimitsIncreaseItemRequestRequest

public struct GetLimitsIncreaseItemRequestRequest: Codable, Sendable {
    public var limitsIncreaseItemRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case limitsIncreaseItemRequestId, opcRequestId
    }

    public init(
                limitsIncreaseItemRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.limitsIncreaseItemRequestId = limitsIncreaseItemRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetLimitsIncreaseItemRequestRequest: CustomStringConvertible {
    public var description: String { "GetLimitsIncreaseItemRequestRequest()" }
}

// MARK: - GetLimitsIncreaseItemRequestResponse

public struct GetLimitsIncreaseItemRequestResponse: Codable, Sendable {
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

extension GetLimitsIncreaseItemRequestResponse: CustomStringConvertible {
    public var description: String { "GetLimitsIncreaseItemRequestResponse()" }
}