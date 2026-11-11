import Foundation

// MARK: - ScheduleCascadingProjectDeletionRequest

public struct ScheduleCascadingProjectDeletionRequest: Codable, Sendable {
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

extension ScheduleCascadingProjectDeletionRequest: CustomStringConvertible {
    public var description: String { "ScheduleCascadingProjectDeletionRequest()" }
}

// MARK: - ScheduleCascadingProjectDeletionResponse

public struct ScheduleCascadingProjectDeletionResponse: Codable, Sendable {
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

extension ScheduleCascadingProjectDeletionResponse: CustomStringConvertible {
    public var description: String { "ScheduleCascadingProjectDeletionResponse()" }
}