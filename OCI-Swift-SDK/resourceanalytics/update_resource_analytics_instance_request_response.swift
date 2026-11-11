import Foundation

// MARK: - UpdateResourceAnalyticsInstanceRequest

public struct UpdateResourceAnalyticsInstanceRequest: Codable, Sendable {
    public var resourceAnalyticsInstanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateResourceAnalyticsInstanceDetails: UpdateResourceAnalyticsInstanceDetails?

    private enum CodingKeys: String, CodingKey {
        case resourceAnalyticsInstanceId, ifMatch, opcRequestId, updateResourceAnalyticsInstanceDetails
    }

    public init(
                resourceAnalyticsInstanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateResourceAnalyticsInstanceDetails: UpdateResourceAnalyticsInstanceDetails? = nil
    ) {
        self.resourceAnalyticsInstanceId = resourceAnalyticsInstanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateResourceAnalyticsInstanceDetails = updateResourceAnalyticsInstanceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateResourceAnalyticsInstanceRequest: CustomStringConvertible {
    public var description: String { "UpdateResourceAnalyticsInstanceRequest()" }
}

// MARK: - UpdateResourceAnalyticsInstanceResponse

public struct UpdateResourceAnalyticsInstanceResponse: Codable, Sendable {
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

extension UpdateResourceAnalyticsInstanceResponse: CustomStringConvertible {
    public var description: String { "UpdateResourceAnalyticsInstanceResponse()" }
}