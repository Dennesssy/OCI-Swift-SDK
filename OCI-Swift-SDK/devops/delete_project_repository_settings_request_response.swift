import Foundation

// MARK: - DeleteProjectRepositorySettingsRequest

public struct DeleteProjectRepositorySettingsRequest: Codable, Sendable {
    public var projectId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case projectId, ifMatch, opcRequestId
    }

    public init(
                projectId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.projectId = projectId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteProjectRepositorySettingsRequest: CustomStringConvertible {
    public var description: String { "DeleteProjectRepositorySettingsRequest()" }
}

// MARK: - DeleteProjectRepositorySettingsResponse

public struct DeleteProjectRepositorySettingsResponse: Codable, Sendable {
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

extension DeleteProjectRepositorySettingsResponse: CustomStringConvertible {
    public var description: String { "DeleteProjectRepositorySettingsResponse()" }
}