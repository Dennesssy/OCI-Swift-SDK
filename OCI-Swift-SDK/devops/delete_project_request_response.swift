import Foundation

// MARK: - DeleteProjectRequest

public struct DeleteProjectRequest: Codable, Sendable {
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

extension DeleteProjectRequest: CustomStringConvertible {
    public var description: String { "DeleteProjectRequest()" }
}

// MARK: - DeleteProjectResponse

public struct DeleteProjectResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteProjectResponse: CustomStringConvertible {
    public var description: String { "DeleteProjectResponse()" }
}