import Foundation

// MARK: - ApproverGroupLevel

public struct ApproverGroupLevel: Codable, Sendable {

    public var groupId: [String]
    public var groupLevel: Int?

    private enum CodingKeys: String, CodingKey {
        case groupId, groupLevel
    }

    public init(
                groupId: [String],
                groupLevel: Int? = nil
    ) {
        self.groupId = groupId
        self.groupLevel = groupLevel
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApproverGroupLevel: CustomStringConvertible {
    public var description: String { "ApproverGroupLevel()" }
}