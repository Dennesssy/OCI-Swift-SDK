import Foundation

// MARK: - DeleteUserRequest

public struct DeleteUserRequest: Codable, Sendable {
    public var userId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, ifMatch, opcRequestId
    }

    public init(
                userId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteUserRequest: CustomStringConvertible {
    public var description: String { "DeleteUserRequest()" }
}

// MARK: - DeleteUserResponse

public struct DeleteUserResponse: Codable, Sendable {
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

extension DeleteUserResponse: CustomStringConvertible {
    public var description: String { "DeleteUserResponse()" }
}