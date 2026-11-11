import Foundation

// MARK: - DataRetentionPeriodsInDays

public struct DataRetentionPeriodsInDays: Codable, Sendable {

    public var rawData: Int?
    public var rejectedData: Int?
    public var historizedData: Int?
    public var rawCommandData: Int?

    private enum CodingKeys: String, CodingKey {
        case rawData, rejectedData, historizedData, rawCommandData
    }

    public init(
                rawData: Int? = nil,
                rejectedData: Int? = nil,
                historizedData: Int? = nil,
                rawCommandData: Int? = nil
    ) {
        self.rawData = rawData
        self.rejectedData = rejectedData
        self.historizedData = historizedData
        self.rawCommandData = rawCommandData
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DataRetentionPeriodsInDays: CustomStringConvertible {
    public var description: String { "DataRetentionPeriodsInDays()" }
}