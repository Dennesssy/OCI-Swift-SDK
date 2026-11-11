import Foundation

// MARK: - UpdateUserCapabilitiesRequest

public struct UpdateUserCapabilitiesRequest: Codable, Sendable {
    public var userId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateUserCapabilitiesDetails: UpdateUserCapabilitiesDetails?

    private enum CodingKeys: String, CodingKey {
        case userId, ifMatch, opcRequestId, updateUserCapabilitiesDetails
    }

    public init(
                userId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateUserCapabilitiesDetails: UpdateUserCapabilitiesDetails? = nil
    ) {
        self.userId = userId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateUserCapabilitiesDetails = updateUserCapabilitiesDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateUserCapabilitiesRequest: CustomStringConvertible {
    public var description: String { "UpdateUserCapabilitiesRequest()" }
}

// MARK: - UpdateUserCapabilitiesResponse

public struct UpdateUserCapabilitiesResponse: Codable, Sendable {
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

extension UpdateUserCapabilitiesResponse: CustomStringConvertible {
    public var description: String { "UpdateUserCapabilitiesResponse()" }
}