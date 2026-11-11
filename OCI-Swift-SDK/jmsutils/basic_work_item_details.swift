import Foundation

// MARK: - BasicWorkItemDetails

public struct BasicWorkItemDetails: Codable, Sendable {

    public var workItemType: WorkItemTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case workItemType
    }

    public init(
                workItemType: WorkItemTypeEnum? = nil
    ) {
        self.workItemType = workItemType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BasicWorkItemDetails: CustomStringConvertible {
    public var description: String { "BasicWorkItemDetails()" }
}