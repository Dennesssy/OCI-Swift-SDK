import Foundation

// MARK: - CreateUserRequest

public struct CreateUserRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createUserDetails: CreateUserDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createUserDetails, opcRetryToken
    }

    public init(
                opcRequestId: String? = nil,
                createUserDetails: CreateUserDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createUserDetails = createUserDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateUserRequest: CustomStringConvertible {
    public var description: String { "CreateUserRequest()" }
}

// MARK: - CreateUserResponse

public struct CreateUserResponse: Codable, Sendable {
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

extension CreateUserResponse: CustomStringConvertible {
    public var description: String { "CreateUserResponse()" }
}