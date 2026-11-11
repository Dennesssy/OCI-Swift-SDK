import Foundation

// MARK: - GetProjectRequest

public struct GetProjectRequest: Codable, Sendable {
    public var projectId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case projectId, opcRequestId
    }

    public init(
                projectId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.projectId = projectId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetProjectRequest: CustomStringConvertible {
    public var description: String { "GetProjectRequest()" }
}

// MARK: - GetProjectResponse

public struct GetProjectResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var project: Project?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, project
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                project: Project? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.project = project
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetProjectResponse: CustomStringConvertible {
    public var description: String { "GetProjectResponse()" }
}