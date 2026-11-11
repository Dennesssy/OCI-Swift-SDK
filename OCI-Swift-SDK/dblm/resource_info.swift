import Foundation

// MARK: - ResourceInfo

public struct ResourceInfo: Codable, Sendable {

    public var resourceCompartmentId: String?
    public var resourceName: String?
    public var resourceId: String?
    public var resourceType: String?
    public var deploymentType: String?
    public var connectorId: String?
    public var hostInfo: [HostInfo]
    public var dbVersion: String?
    public var dbPlatformType: String?
    public var licenseType: String?
    public var isClusterDb: Bool?
    public var agentId: String?

    private enum CodingKeys: String, CodingKey {
        case resourceCompartmentId, resourceName, resourceId, resourceType, deploymentType, connectorId, hostInfo, dbVersion, dbPlatformType, licenseType, isClusterDb, agentId
    }

    public init(
                resourceCompartmentId: String? = nil,
                resourceName: String? = nil,
                resourceId: String? = nil,
                resourceType: String? = nil,
                deploymentType: String? = nil,
                connectorId: String? = nil,
                hostInfo: [HostInfo],
                dbVersion: String? = nil,
                dbPlatformType: String? = nil,
                licenseType: String? = nil,
                isClusterDb: Bool? = nil,
                agentId: String? = nil
    ) {
        self.resourceCompartmentId = resourceCompartmentId
        self.resourceName = resourceName
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.deploymentType = deploymentType
        self.connectorId = connectorId
        self.hostInfo = hostInfo
        self.dbVersion = dbVersion
        self.dbPlatformType = dbPlatformType
        self.licenseType = licenseType
        self.isClusterDb = isClusterDb
        self.agentId = agentId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResourceInfo: CustomStringConvertible {
    public var description: String { "ResourceInfo()" }
}