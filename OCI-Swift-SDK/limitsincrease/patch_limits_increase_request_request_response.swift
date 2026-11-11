import Foundation

// MARK: - PatchLimitsIncreaseRequestRequest

public struct PatchLimitsIncreaseRequestRequest: Codable, Sendable {
    public var limitsIncreaseRequestId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var patchLimitsIncreaseRequestDetails: PatchLimitsIncreaseRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case limitsIncreaseRequestId, opcRequestId, ifMatch, patchLimitsIncreaseRequestDetails
    }

    public init(
                limitsIncreaseRequestId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                patchLimitsIncreaseRequestDetails: PatchLimitsIncreaseRequestDetails? = nil
    ) {
        self.limitsIncreaseRequestId = limitsIncreaseRequestId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.patchLimitsIncreaseRequestDetails = patchLimitsIncreaseRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchLimitsIncreaseRequestRequest: CustomStringConvertible {
    public var description: String { "PatchLimitsIncreaseRequestRequest()" }
}

// MARK: - PatchLimitsIncreaseRequestResponse

public struct PatchLimitsIncreaseRequestResponse: Codable, Sendable {
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

extension PatchLimitsIncreaseRequestResponse: CustomStringConvertible {
    public var description: String { "PatchLimitsIncreaseRequestResponse()" }
}