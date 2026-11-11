import Foundation

// MARK: - DeleteResourceAnalyticsInstanceRequest

public struct DeleteResourceAnalyticsInstanceRequest: Codable, Sendable {
    public var resourceAnalyticsInstanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case resourceAnalyticsInstanceId, ifMatch, opcRequestId
    }

    public init(
                resourceAnalyticsInstanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.resourceAnalyticsInstanceId = resourceAnalyticsInstanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteResourceAnalyticsInstanceRequest: CustomStringConvertible {
    public var description: String { "DeleteResourceAnalyticsInstanceRequest()" }
}

// MARK: - DeleteResourceAnalyticsInstanceResponse

public struct DeleteResourceAnalyticsInstanceResponse: Codable, Sendable {
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

extension DeleteResourceAnalyticsInstanceResponse: CustomStringConvertible {
    public var description: String { "DeleteResourceAnalyticsInstanceResponse()" }
}