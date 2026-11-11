import Foundation

// MARK: - EnableSuperuserRequest

public struct EnableSuperuserRequest: Codable, Sendable {
    public var kafkaClusterId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var enableSuperuserDetails: EnableSuperuserDetails?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterId, ifMatch, opcRequestId, enableSuperuserDetails
    }

    public init(
                kafkaClusterId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                enableSuperuserDetails: EnableSuperuserDetails? = nil
    ) {
        self.kafkaClusterId = kafkaClusterId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.enableSuperuserDetails = enableSuperuserDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension EnableSuperuserRequest: CustomStringConvertible {
    public var description: String { "EnableSuperuserRequest()" }
}

// MARK: - EnableSuperuserResponse

public struct EnableSuperuserResponse: Codable, Sendable {
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

extension EnableSuperuserResponse: CustomStringConvertible {
    public var description: String { "EnableSuperuserResponse()" }
}