import Foundation

// MARK: - ChangeResourceAnalyticsInstanceCompartmentRequest

public struct ChangeResourceAnalyticsInstanceCompartmentRequest: Codable, Sendable {
    public var resourceAnalyticsInstanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeResourceAnalyticsInstanceCompartmentDetails: ChangeResourceAnalyticsInstanceCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case resourceAnalyticsInstanceId, ifMatch, opcRequestId, changeResourceAnalyticsInstanceCompartmentDetails
    }

    public init(
                resourceAnalyticsInstanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeResourceAnalyticsInstanceCompartmentDetails: ChangeResourceAnalyticsInstanceCompartmentDetails? = nil
    ) {
        self.resourceAnalyticsInstanceId = resourceAnalyticsInstanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeResourceAnalyticsInstanceCompartmentDetails = changeResourceAnalyticsInstanceCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeResourceAnalyticsInstanceCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeResourceAnalyticsInstanceCompartmentRequest()" }
}

// MARK: - ChangeResourceAnalyticsInstanceCompartmentResponse

public struct ChangeResourceAnalyticsInstanceCompartmentResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeResourceAnalyticsInstanceCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeResourceAnalyticsInstanceCompartmentResponse()" }
}