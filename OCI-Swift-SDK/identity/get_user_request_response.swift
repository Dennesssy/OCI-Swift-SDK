import Foundation

// MARK: - GetUserRequest

public struct GetUserRequest: Codable, Sendable {
    public var userId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, opcRequestId
    }

    public init(
                userId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetUserRequest: CustomStringConvertible {
    public var description: String { "GetUserRequest()" }
}

// MARK: - GetUserResponse

public struct GetUserResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var user: User?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, user
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                user: User? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.user = user
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetUserResponse: CustomStringConvertible {
    public var description: String { "GetUserResponse()" }
}