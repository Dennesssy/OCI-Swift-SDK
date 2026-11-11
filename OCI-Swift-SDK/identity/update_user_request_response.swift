import Foundation

// MARK: - UpdateUserRequest

public struct UpdateUserRequest: Codable, Sendable {
    public var userId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateUserDetails: UpdateUserDetails?

    private enum CodingKeys: String, CodingKey {
        case userId, ifMatch, opcRequestId, updateUserDetails
    }

    public init(
                userId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateUserDetails: UpdateUserDetails? = nil
    ) {
        self.userId = userId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateUserDetails = updateUserDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateUserRequest: CustomStringConvertible {
    public var description: String { "UpdateUserRequest()" }
}

// MARK: - UpdateUserResponse

public struct UpdateUserResponse: Codable, Sendable {
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

extension UpdateUserResponse: CustomStringConvertible {
    public var description: String { "UpdateUserResponse()" }
}