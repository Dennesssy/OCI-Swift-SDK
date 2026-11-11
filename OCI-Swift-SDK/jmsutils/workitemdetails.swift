import Foundation

// MARK: - workitemdetails

public struct workitemdetails: Codable, Sendable {

    public var jsonData: Data?
    public var workItemType: WorkItemTypeEnum?
    public var kind: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, workItemType, kind
    }

    public init(
                jsonData: Data? = nil,
                workItemType: WorkItemTypeEnum? = nil,
                kind: String? = nil
    ) {
        self.jsonData = jsonData
        self.workItemType = workItemType
        self.kind = kind
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension workitemdetails: CustomStringConvertible {
    public var description: String { "workitemdetails()" }
}