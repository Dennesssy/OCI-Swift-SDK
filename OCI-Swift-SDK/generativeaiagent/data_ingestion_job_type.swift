import Foundation

// MARK: - DataIngestionJobType

public struct DataIngestionJobType: Codable, Sendable {

    public var type: DataIngestionJobTypeTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case type
    }

    public init(
                type: DataIngestionJobTypeTypeEnum? = nil
    ) {
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DataIngestionJobType: CustomStringConvertible {
    public var description: String { "DataIngestionJobType()" }
}