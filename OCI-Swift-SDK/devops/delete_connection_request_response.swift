import Foundation

// MARK: - DeleteConnectionRequest

public struct DeleteConnectionRequest: Codable, Sendable {
    public var connectionId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case connectionId, ifMatch, opcRequestId
    }

    public init(
                connectionId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.connectionId = connectionId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteConnectionRequest: CustomStringConvertible {
    public var description: String { "DeleteConnectionRequest()" }
}

// MARK: - DeleteConnectionResponse

public struct DeleteConnectionResponse: Codable, Sendable {
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

extension DeleteConnectionResponse: CustomStringConvertible {
    public var description: String { "DeleteConnectionResponse()" }
}