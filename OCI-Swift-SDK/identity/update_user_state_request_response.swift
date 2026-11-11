import Foundation

// MARK: - UpdateUserStateRequest

public struct UpdateUserStateRequest: Codable, Sendable {
    public var userId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateStateDetails: UpdateStateDetails?

    private enum CodingKeys: String, CodingKey {
        case userId, ifMatch, opcRequestId, updateStateDetails
    }

    public init(
                userId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateStateDetails: UpdateStateDetails? = nil
    ) {
        self.userId = userId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateStateDetails = updateStateDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateUserStateRequest: CustomStringConvertible {
    public var description: String { "UpdateUserStateRequest()" }
}

// MARK: - UpdateUserStateResponse

public struct UpdateUserStateResponse: Codable, Sendable {
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

extension UpdateUserStateResponse: CustomStringConvertible {
    public var description: String { "UpdateUserStateResponse()" }
}