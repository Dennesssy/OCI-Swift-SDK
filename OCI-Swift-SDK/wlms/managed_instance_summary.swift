import Foundation

// MARK: - ManagedInstanceSummary

public struct ManagedInstanceSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var hostName: String?
    public var serverCount: Int?
    public var pluginStatus: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, hostName, serverCount, pluginStatus, timeCreated, timeUpdated
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                hostName: String? = nil,
                serverCount: Int? = nil,
                pluginStatus: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.hostName = hostName
        self.serverCount = serverCount
        self.pluginStatus = pluginStatus
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ManagedInstanceSummary: CustomStringConvertible {
    public var description: String { "ManagedInstanceSummary()" }
}