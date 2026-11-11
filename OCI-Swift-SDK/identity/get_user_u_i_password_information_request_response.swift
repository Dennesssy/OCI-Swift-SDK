import Foundation

// MARK: - GetUserUIPasswordInformationRequest

public struct GetUserUIPasswordInformationRequest: Codable, Sendable {
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

extension GetUserUIPasswordInformationRequest: CustomStringConvertible {
    public var description: String { "GetUserUIPasswordInformationRequest()" }
}

// MARK: - GetUserUIPasswordInformationResponse

public struct GetUserUIPasswordInformationResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var uiPasswordInformation: UiPasswordInformation?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, uiPasswordInformation
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                uiPasswordInformation: UiPasswordInformation? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.uiPasswordInformation = uiPasswordInformation
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetUserUIPasswordInformationResponse: CustomStringConvertible {
    public var description: String { "GetUserUIPasswordInformationResponse()" }
}