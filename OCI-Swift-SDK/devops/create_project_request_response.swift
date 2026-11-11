import Foundation

// MARK: - CreateProjectRequest

public struct CreateProjectRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createProjectDetails: CreateProjectDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createProjectDetails
    }

    public init(
                opcRequestId: String? = nil,
                createProjectDetails: CreateProjectDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createProjectDetails = createProjectDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateProjectRequest: CustomStringConvertible {
    public var description: String { "CreateProjectRequest()" }
}

// MARK: - CreateProjectResponse

public struct CreateProjectResponse: Codable, Sendable {
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

extension CreateProjectResponse: CustomStringConvertible {
    public var description: String { "CreateProjectResponse()" }
}