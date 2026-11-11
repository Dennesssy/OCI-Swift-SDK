import Foundation
import OCICommon

// MARK: - CreateInfrastructureDetails

public struct CreateInfrastructureDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var systemModel: SystemModelEnumEnum
    public var shape: ShapeEnumEnum
    public var cloudControlPlaneServer1: String?
    public var cloudControlPlaneServer2: String?
    public var netmask: String?
    public var gateway: String?
    public var dnsServers: [String]
    public var ntpServers: [String]
    public var description: String?
    public var adminNetworkcidr: String?
    public var dataDiskPercentage: Int?
    public var contacts: [InfrastructureContact]?
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
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, systemModel, shape, cloudControlPlaneServer1, cloudControlPlaneServer2, netmask, gateway, dnsServers, ntpServers, description, adminNetworkcidr, dataDiskPercentage, contacts, clientNetworkBondingMode, backupNetworkBondingMode, cpsNetworkBondingMode, clientNetworkBondingInterface, backupNetworkBondingInterface, cpsNetworkBondingInterface, acfsFileSystemStorageInGbs, corporateProxy, vlanId, maintenanceWindow, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                systemModel: SystemModelEnumEnum,
                shape: ShapeEnumEnum,
                cloudControlPlaneServer1: String? = nil,
                cloudControlPlaneServer2: String? = nil,
                netmask: String? = nil,
                gateway: String? = nil,
                dnsServers: [String],
                ntpServers: [String],
                description: String? = nil,
                adminNetworkcidr: String? = nil,
                dataDiskPercentage: Int? = nil,
                contacts: [InfrastructureContact]? = nil,
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
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.systemModel = systemModel
        self.shape = shape
        self.cloudControlPlaneServer1 = cloudControlPlaneServer1
        self.cloudControlPlaneServer2 = cloudControlPlaneServer2
        self.netmask = netmask
        self.gateway = gateway
        self.dnsServers = dnsServers
        self.ntpServers = ntpServers
        self.description = description
        self.adminNetworkcidr = adminNetworkcidr
        self.dataDiskPercentage = dataDiskPercentage
        self.contacts = contacts
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
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
