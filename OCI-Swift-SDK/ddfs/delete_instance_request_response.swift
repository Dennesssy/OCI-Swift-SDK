import Foundation

// MARK: - DeleteInstanceRequest

public struct DeleteInstanceRequest: Codable, Sendable {
    public var instanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case instanceId, ifMatch, opcRequestId
    }

    public init(
                instanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.instanceId = instanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteInstanceRequest: CustomStringConvertible {
    public var description: String { "DeleteInstanceRequest()" }
}

// MARK: - DeleteInstanceResponse

public struct DeleteInstanceResponse: Codable, Sendable {
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

extension DeleteInstanceResponse: CustomStringConvertible {
    public var description: String { "DeleteInstanceResponse()" }
}