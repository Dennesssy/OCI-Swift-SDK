import Foundation

// MARK: - ManagedInstance

public struct ManagedInstance: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var hostName: String?
    public var serverCount: Int?
    public var pluginStatus: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var osName: String?
    public var osArch: String?
    public var configuration: ManagedInstanceConfiguration?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, hostName, serverCount, pluginStatus, timeCreated, timeUpdated, osName, osArch, configuration
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                hostName: String? = nil,
                serverCount: Int? = nil,
                pluginStatus: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                osName: String? = nil,
                osArch: String? = nil,
                configuration: ManagedInstanceConfiguration? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.hostName = hostName
        self.serverCount = serverCount
        self.pluginStatus = pluginStatus
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.osName = osName
        self.osArch = osArch
        self.configuration = configuration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ManagedInstance: CustomStringConvertible {
    public var description: String { "ManagedInstance()" }
}