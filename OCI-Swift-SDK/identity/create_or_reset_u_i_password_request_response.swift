import Foundation

// MARK: - CreateOrResetUIPasswordRequest

public struct CreateOrResetUIPasswordRequest: Codable, Sendable {
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

extension CreateOrResetUIPasswordRequest: CustomStringConvertible {
    public var description: String { "CreateOrResetUIPasswordRequest()" }
}

// MARK: - CreateOrResetUIPasswordResponse

public struct CreateOrResetUIPasswordResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var uiPassword: UiPassword?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, uiPassword
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                uiPassword: UiPassword? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.uiPassword = uiPassword
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOrResetUIPasswordResponse: CustomStringConvertible {
    public var description: String { "CreateOrResetUIPasswordResponse()" }
}