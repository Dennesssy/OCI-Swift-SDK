import Foundation

// MARK: - DisableSuperuserRequest

public struct DisableSuperuserRequest: Codable, Sendable {
    public var kafkaClusterId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterId, ifMatch, opcRequestId
    }

    public init(
                kafkaClusterId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.kafkaClusterId = kafkaClusterId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DisableSuperuserRequest: CustomStringConvertible {
    public var description: String { "DisableSuperuserRequest()" }
}

// MARK: - DisableSuperuserResponse

public struct DisableSuperuserResponse: Codable, Sendable {
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

extension DisableSuperuserResponse: CustomStringConvertible {
    public var description: String { "DisableSuperuserResponse()" }
}