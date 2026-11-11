import Foundation

// MARK: - DeleteRepositorySettingsRequest

public struct DeleteRepositorySettingsRequest: Codable, Sendable {
    public var repositoryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, ifMatch, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteRepositorySettingsRequest: CustomStringConvertible {
    public var description: String { "DeleteRepositorySettingsRequest()" }
}

// MARK: - DeleteRepositorySettingsResponse

public struct DeleteRepositorySettingsResponse: Codable, Sendable {
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

extension DeleteRepositorySettingsResponse: CustomStringConvertible {
    public var description: String { "DeleteRepositorySettingsResponse()" }
}