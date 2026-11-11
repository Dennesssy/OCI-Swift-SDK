import Foundation

// MARK: - ConflictMergeCheck

public struct ConflictMergeCheck: Codable, Sendable {

    public var status: ConflictMergeCheckStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case status
    }

    public init(
                status: ConflictMergeCheckStatusEnum? = nil
    ) {
        self.status = status
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ConflictMergeCheck: CustomStringConvertible {
    public var description: String { "ConflictMergeCheck()" }
}