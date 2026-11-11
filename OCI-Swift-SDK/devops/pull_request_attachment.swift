import Foundation

// MARK: - PullRequestAttachment

public struct PullRequestAttachment: Codable, Sendable {

    public var id: String?
    public var pullRequestId: String?
    public var fileName: String?
    public var timeCreated: Date?
    public var createdBy: PrincipalDetails?

    private enum CodingKeys: String, CodingKey {
        case id, pullRequestId, fileName, timeCreated, createdBy
    }

    public init(
                id: String? = nil,
                pullRequestId: String? = nil,
                fileName: String? = nil,
                timeCreated: Date? = nil,
                createdBy: PrincipalDetails? = nil
    ) {
        self.id = id
        self.pullRequestId = pullRequestId
        self.fileName = fileName
        self.timeCreated = timeCreated
        self.createdBy = createdBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PullRequestAttachment: CustomStringConvertible {
    public var description: String { "PullRequestAttachment()" }
}