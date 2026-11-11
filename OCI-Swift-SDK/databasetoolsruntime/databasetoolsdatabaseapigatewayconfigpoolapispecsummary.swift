import Foundation

// MARK: - databasetoolsdatabaseapigatewayconfigpoolapispecsummary

public struct databasetoolsdatabaseapigatewayconfigpoolapispecsummary: Codable, Sendable {

    public var jsonData: Data?
    public var key: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, key, displayName, timeCreated, timeUpdated, type
    }

    public init(
                jsonData: Data? = nil,
                key: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.key = key
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension databasetoolsdatabaseapigatewayconfigpoolapispecsummary: CustomStringConvertible {
    public var description: String { "databasetoolsdatabaseapigatewayconfigpoolapispecsummary()" }
}