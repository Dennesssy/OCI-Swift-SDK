import Foundation

// MARK: - DeleteApiKeyRequest

public struct DeleteApiKeyRequest: Codable, Sendable {
    public var userId: String?
    public var fingerprint: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, fingerprint, ifMatch, opcRequestId
    }

    public init(
                userId: String? = nil,
                fingerprint: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.fingerprint = fingerprint
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteApiKeyRequest: CustomStringConvertible {
    public var description: String { "DeleteApiKeyRequest()" }
}

// MARK: - DeleteApiKeyResponse

public struct DeleteApiKeyResponse: Codable, Sendable {
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

extension DeleteApiKeyResponse: CustomStringConvertible {
    public var description: String { "DeleteApiKeyResponse()" }
}