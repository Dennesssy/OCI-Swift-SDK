import Foundation

// MARK: - DeleteDbCredentialRequest

public struct DeleteDbCredentialRequest: Codable, Sendable {
    public var userId: String?
    public var dbCredentialId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case userId, dbCredentialId, opcRequestId, ifMatch
    }

    public init(
                userId: String? = nil,
                dbCredentialId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.userId = userId
        self.dbCredentialId = dbCredentialId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDbCredentialRequest: CustomStringConvertible {
    public var description: String { "DeleteDbCredentialRequest()" }
}

// MARK: - DeleteDbCredentialResponse

public struct DeleteDbCredentialResponse: Codable, Sendable {
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

extension DeleteDbCredentialResponse: CustomStringConvertible {
    public var description: String { "DeleteDbCredentialResponse()" }
}