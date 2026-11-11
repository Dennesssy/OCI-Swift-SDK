import Foundation

// MARK: - buildrunsource

public struct buildrunsource: Codable, Sendable {

    public var jsonData: Data?
    public var sourceType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, sourceType
    }

    public init(
                jsonData: Data? = nil,
                sourceType: String? = nil
    ) {
        self.jsonData = jsonData
        self.sourceType = sourceType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension buildrunsource: CustomStringConvertible {
    public var description: String { "buildrunsource()" }
}