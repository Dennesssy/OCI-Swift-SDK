import Foundation

// MARK: - GetLimitsIncreaseRequestRequest

public struct GetLimitsIncreaseRequestRequest: Codable, Sendable {
    public var limitsIncreaseRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case limitsIncreaseRequestId, opcRequestId
    }

    public init(
                limitsIncreaseRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.limitsIncreaseRequestId = limitsIncreaseRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetLimitsIncreaseRequestRequest: CustomStringConvertible {
    public var description: String { "GetLimitsIncreaseRequestRequest()" }
}

// MARK: - GetLimitsIncreaseRequestResponse

public struct GetLimitsIncreaseRequestResponse: Codable, Sendable {
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

extension GetLimitsIncreaseRequestResponse: CustomStringConvertible {
    public var description: String { "GetLimitsIncreaseRequestResponse()" }
}