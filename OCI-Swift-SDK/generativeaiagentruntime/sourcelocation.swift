import Foundation

// MARK: - sourcelocation

public struct sourcelocation: Codable, Sendable {

    public var jsonData: Data?
    public var sourceLocationType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, sourceLocationType
    }

    public init(
                jsonData: Data? = nil,
                sourceLocationType: String? = nil
    ) {
        self.jsonData = jsonData
        self.sourceLocationType = sourceLocationType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension sourcelocation: CustomStringConvertible {
    public var description: String { "sourcelocation()" }
}