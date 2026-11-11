import Foundation

// MARK: - ExecuteSqlBindTypeComponent

public struct ExecuteSqlBindTypeComponent: Codable, Sendable {

    public var dataType: String?

    private enum CodingKeys: String, CodingKey {
        case dataType
    }

    public init(
                dataType: String? = nil
    ) {
        self.dataType = dataType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlBindTypeComponent: CustomStringConvertible {
    public var description: String { "ExecuteSqlBindTypeComponent()" }
}