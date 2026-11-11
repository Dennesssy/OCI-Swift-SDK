import Foundation

// MARK: - UpdateProjectRequest

public struct UpdateProjectRequest: Codable, Sendable {
    public var projectId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateProjectDetails: UpdateProjectDetails?

    private enum CodingKeys: String, CodingKey {
        case projectId, ifMatch, opcRequestId, updateProjectDetails
    }

    public init(
                projectId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateProjectDetails: UpdateProjectDetails? = nil
    ) {
        self.projectId = projectId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateProjectDetails = updateProjectDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateProjectRequest: CustomStringConvertible {
    public var description: String { "UpdateProjectRequest()" }
}

// MARK: - UpdateProjectResponse

public struct UpdateProjectResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var project: Project?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcWorkRequestId, opcRequestId, project
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                project: Project? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.project = project
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateProjectResponse: CustomStringConvertible {
    public var description: String { "UpdateProjectResponse()" }
}