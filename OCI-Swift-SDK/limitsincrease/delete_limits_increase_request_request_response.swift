import Foundation

// MARK: - DeleteLimitsIncreaseRequestRequest

public struct DeleteLimitsIncreaseRequestRequest: Codable, Sendable {
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

extension DeleteLimitsIncreaseRequestRequest: CustomStringConvertible {
    public var description: String { "DeleteLimitsIncreaseRequestRequest()" }
}

// MARK: - DeleteLimitsIncreaseRequestResponse

public struct DeleteLimitsIncreaseRequestResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteLimitsIncreaseRequestResponse: CustomStringConvertible {
    public var description: String { "DeleteLimitsIncreaseRequestResponse()" }
}