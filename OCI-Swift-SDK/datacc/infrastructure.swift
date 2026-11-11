import Foundation
import OCICommon

// MARK: - Infrastructure

public struct Infrastructure: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var systemModel: SystemModelEnumEnum
    public var shape: ShapeEnumEnum
    public var cloudControlPlaneServer1: String?
    public var cloudControlPlaneServer2: String?
    public var netmask: String?
    public var gateway: String?
    public var adminNetworkcidr: String?
    public var dnsServers: [String]
    public var ntpServers: [String]
    public var description: String?
    public var version: String?
    public var dataDiskPercentage: Int?
    public var recoDiskPercentage: Int?
    public var contacts: [InfrastructureContact]?
    public var clientNetworkBondingMode: NetworkBondingModeEnum?
    public var backupNetworkBondingMode: NetworkBondingModeEnum?
    public var cpsNetworkBondingMode: NetworkBondingModeEnum?
    public var clientNetworkBondingInterface: NetworkBondingInterfaceEnumEnum?
    public var backupNetworkBondingInterface: NetworkBondingInterfaceEnumEnum?
    public var cpsNetworkBondingInterface: NetworkBondingInterfaceEnumEnum?
    public var acfsFileSystemStorageInGbs: Double?
    public var acfsFileSystemUsedStorageInGbs: Double?
    public var corporateProxy: String?
    public var vlanId: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var maintenanceWindow: MaintenanceWindow?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var timeLastStateUpdated: Date?
    public var timeActivated: Date?
    public var timeValidated: Date?
    public var lifecycleState: InfrastructureLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var rackSerialNumber: String?
    public var servers: [InfrastructureServer]?
    public var computeCapacity: ComputeCapacityDetails?
    public var storageCapacity: [StorageCapacityDetails]?
    public var systemStorageCapacity: SystemStorageCapacityDetails?
    public var networkAdapterConfiguration: String?
    public var subscriptionPlanNumber: String?
    public var ssdConfigurationRequested: ShapeEnumEnum?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, systemModel, shape, cloudControlPlaneServer1, cloudControlPlaneServer2, netmask, gateway, adminNetworkcidr, dnsServers, ntpServers, description, version, dataDiskPercentage, recoDiskPercentage, contacts, clientNetworkBondingMode, backupNetworkBondingMode, cpsNetworkBondingMode, clientNetworkBondingInterface, backupNetworkBondingInterface, cpsNetworkBondingInterface, acfsFileSystemStorageInGbs, acfsFileSystemUsedStorageInGbs, corporateProxy, vlanId, freeformTags, definedTags, systemTags, maintenanceWindow, timeCreated, timeUpdated, timeLastStateUpdated, timeActivated, timeValidated, lifecycleState, lifecycleStateDetails, rackSerialNumber, servers, computeCapacity, storageCapacity, systemStorageCapacity, networkAdapterConfiguration, subscriptionPlanNumber, ssdConfigurationRequested
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                systemModel: SystemModelEnumEnum,
                shape: ShapeEnumEnum,
                cloudControlPlaneServer1: String? = nil,
                cloudControlPlaneServer2: String? = nil,
                netmask: String? = nil,
                gateway: String? = nil,
                adminNetworkcidr: String? = nil,
                dnsServers: [String],
                ntpServers: [String],
                description: String? = nil,
                version: String? = nil,
                dataDiskPercentage: Int? = nil,
                recoDiskPercentage: Int? = nil,
                contacts: [InfrastructureContact]? = nil,
                clientNetworkBondingMode: NetworkBondingModeEnum? = nil,
                backupNetworkBondingMode: NetworkBondingModeEnum? = nil,
                cpsNetworkBondingMode: NetworkBondingModeEnum? = nil,
                clientNetworkBondingInterface: NetworkBondingInterfaceEnumEnum? = nil,
                backupNetworkBondingInterface: NetworkBondingInterfaceEnumEnum? = nil,
                cpsNetworkBondingInterface: NetworkBondingInterfaceEnumEnum? = nil,
                acfsFileSystemStorageInGbs: Double? = nil,
                acfsFileSystemUsedStorageInGbs: Double? = nil,
                corporateProxy: String? = nil,
                vlanId: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                maintenanceWindow: MaintenanceWindow? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                timeLastStateUpdated: Date? = nil,
                timeActivated: Date? = nil,
                timeValidated: Date? = nil,
                lifecycleState: InfrastructureLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                rackSerialNumber: String? = nil,
                servers: [InfrastructureServer]? = nil,
                computeCapacity: ComputeCapacityDetails? = nil,
                storageCapacity: [StorageCapacityDetails]? = nil,
                systemStorageCapacity: SystemStorageCapacityDetails? = nil,
                networkAdapterConfiguration: String? = nil,
                subscriptionPlanNumber: String? = nil,
                ssdConfigurationRequested: ShapeEnumEnum? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.systemModel = systemModel
        self.shape = shape
        self.cloudControlPlaneServer1 = cloudControlPlaneServer1
        self.cloudControlPlaneServer2 = cloudControlPlaneServer2
        self.netmask = netmask
        self.gateway = gateway
        self.adminNetworkcidr = adminNetworkcidr
        self.dnsServers = dnsServers
        self.ntpServers = ntpServers
        self.description = description
        self.version = version
        self.dataDiskPercentage = dataDiskPercentage
        self.recoDiskPercentage = recoDiskPercentage
        self.contacts = contacts
        self.clientNetworkBondingMode = clientNetworkBondingMode
        self.backupNetworkBondingMode = backupNetworkBondingMode
        self.cpsNetworkBondingMode = cpsNetworkBondingMode
        self.clientNetworkBondingInterface = clientNetworkBondingInterface
        self.backupNetworkBondingInterface = backupNetworkBondingInterface
        self.cpsNetworkBondingInterface = cpsNetworkBondingInterface
        self.acfsFileSystemStorageInGbs = acfsFileSystemStorageInGbs
        self.acfsFileSystemUsedStorageInGbs = acfsFileSystemUsedStorageInGbs
        self.corporateProxy = corporateProxy
        self.vlanId = vlanId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.maintenanceWindow = maintenanceWindow
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.timeLastStateUpdated = timeLastStateUpdated
        self.timeActivated = timeActivated
        self.timeValidated = timeValidated
        self.lifecycleState = lifecycleState
        self.lifecycleStateDetails = lifecycleStateDetails
        self.rackSerialNumber = rackSerialNumber
        self.servers = servers
        self.computeCapacity = computeCapacity
        self.storageCapacity = storageCapacity
        self.systemStorageCapacity = systemStorageCapacity
        self.networkAdapterConfiguration = networkAdapterConfiguration
        self.subscriptionPlanNumber = subscriptionPlanNumber
        self.ssdConfigurationRequested = ssdConfigurationRequested
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
