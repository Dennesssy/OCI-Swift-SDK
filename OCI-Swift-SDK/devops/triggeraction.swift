import Foundation

// MARK: - triggeraction

public struct triggeraction: Codable, Sendable {

    public var jsonData: Data?
    public var filter: filter?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, filter, type
    }

    public init(
                jsonData: Data? = nil,
                filter: filter? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.filter = filter
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension triggeraction: CustomStringConvertible {
    public var description: String { "triggeraction()" }
}