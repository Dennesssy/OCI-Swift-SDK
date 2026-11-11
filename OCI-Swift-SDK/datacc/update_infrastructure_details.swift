import Foundation
import OCICommon

// MARK: - UpdateInfrastructureDetails

public struct UpdateInfrastructureDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var systemModel: SystemModelEnumEnum?
    public var shape: ShapeEnumEnum?
    public var cloudControlPlaneServer1: String?
    public var cloudControlPlaneServer2: String?
    public var netmask: String?
    public var gateway: String?
    public var adminNetworkcidr: String?
    public var dataDiskPercentage: Int?
    public var contacts: [InfrastructureContact]?
    public var dnsServers: [String]?
    public var ntpServers: [String]?
    public var clientNetworkBondingMode: NetworkBondingModeEnum?
    public var backupNetworkBondingMode: NetworkBondingModeEnum?
    public var cpsNetworkBondingMode: NetworkBondingModeEnum?
    public var clientNetworkBondingInterface: NetworkBondingInterfaceEnumEnum?
    public var backupNetworkBondingInterface: NetworkBondingInterfaceEnumEnum?
    public var cpsNetworkBondingInterface: NetworkBondingInterfaceEnumEnum?
    public var acfsFileSystemStorageInGbs: Double?
    public var corporateProxy: String?
    public var vlanId: String?
    public var maintenanceWindow: MaintenanceWindow?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, systemModel, shape, cloudControlPlaneServer1, cloudControlPlaneServer2, netmask, gateway, adminNetworkcidr, dataDiskPercentage, contacts, dnsServers, ntpServers, clientNetworkBondingMode, backupNetworkBondingMode, cpsNetworkBondingMode, clientNetworkBondingInterface, backupNetworkBondingInterface, cpsNetworkBondingInterface, acfsFileSystemStorageInGbs, corporateProxy, vlanId, maintenanceWindow, definedTags, freeformTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                systemModel: SystemModelEnumEnum? = nil,
                shape: ShapeEnumEnum? = nil,
                cloudControlPlaneServer1: String? = nil,
                cloudControlPlaneServer2: String? = nil,
                netmask: String? = nil,
                gateway: String? = nil,
                adminNetworkcidr: String? = nil,
                dataDiskPercentage: Int? = nil,
                contacts: [InfrastructureContact]? = nil,
                dnsServers: [String]? = nil,
                ntpServers: [String]? = nil,
                clientNetworkBondingMode: NetworkBondingModeEnum? = nil,
                backupNetworkBondingMode: NetworkBondingModeEnum? = nil,
                cpsNetworkBondingMode: NetworkBondingModeEnum? = nil,
                clientNetworkBondingInterface: NetworkBondingInterfaceEnumEnum? = nil,
                backupNetworkBondingInterface: NetworkBondingInterfaceEnumEnum? = nil,
                cpsNetworkBondingInterface: NetworkBondingInterfaceEnumEnum? = nil,
                acfsFileSystemStorageInGbs: Double? = nil,
                corporateProxy: String? = nil,
                vlanId: String? = nil,
                maintenanceWindow: MaintenanceWindow? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.systemModel = systemModel
        self.shape = shape
        self.cloudControlPlaneServer1 = cloudControlPlaneServer1
        self.cloudControlPlaneServer2 = cloudControlPlaneServer2
        self.netmask = netmask
        self.gateway = gateway
        self.adminNetworkcidr = adminNetworkcidr
        self.dataDiskPercentage = dataDiskPercentage
        self.contacts = contacts
        self.dnsServers = dnsServers
        self.ntpServers = ntpServers
        self.clientNetworkBondingMode = clientNetworkBondingMode
        self.backupNetworkBondingMode = backupNetworkBondingMode
        self.cpsNetworkBondingMode = cpsNetworkBondingMode
        self.clientNetworkBondingInterface = clientNetworkBondingInterface
        self.backupNetworkBondingInterface = backupNetworkBondingInterface
        self.cpsNetworkBondingInterface = cpsNetworkBondingInterface
        self.acfsFileSystemStorageInGbs = acfsFileSystemStorageInGbs
        self.corporateProxy = corporateProxy
        self.vlanId = vlanId
        self.maintenanceWindow = maintenanceWindow
        self.definedTags = definedTags
        self.freeformTags = freeformTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
