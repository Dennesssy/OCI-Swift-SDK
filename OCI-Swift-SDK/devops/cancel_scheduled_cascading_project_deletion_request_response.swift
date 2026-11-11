import Foundation

// MARK: - CancelScheduledCascadingProjectDeletionRequest

public struct CancelScheduledCascadingProjectDeletionRequest: Codable, Sendable {
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

extension CancelScheduledCascadingProjectDeletionRequest: CustomStringConvertible {
    public var description: String { "CancelScheduledCascadingProjectDeletionRequest()" }
}

// MARK: - CancelScheduledCascadingProjectDeletionResponse

public struct CancelScheduledCascadingProjectDeletionResponse: Codable, Sendable {
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

extension CancelScheduledCascadingProjectDeletionResponse: CustomStringConvertible {
    public var description: String { "CancelScheduledCascadingProjectDeletionResponse()" }
}