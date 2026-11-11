import Foundation

// MARK: - Server

public struct Server: Codable, Sendable {

    public var name: String?
    public var isAdmin: Bool?
    public var status: String?
    public var id: String?
    public var restartOrder: Int?
    public var middlewarePath: String?
    public var middlewareType: String?
    public var weblogicVersion: String?
    public var jdkPath: String?
    public var jdkVersion: String?
    public var wlsDomainName: String?
    public var wlsDomainId: String?
    public var wlsDomainPath: String?
    public var latestPatchesStatus: ServerLatestPatchesStatusEnum?
    public var patchReadinessStatus: PatchReadinessStatusEnum?
    public var hostName: String?
    public var managedInstanceId: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case name, isAdmin, status, id, restartOrder, middlewarePath, middlewareType, weblogicVersion, jdkPath, jdkVersion, wlsDomainName, wlsDomainId, wlsDomainPath, latestPatchesStatus, patchReadinessStatus, hostName, managedInstanceId, timeCreated, timeUpdated
    }

    public init(
                name: String? = nil,
                isAdmin: Bool? = nil,
                status: String? = nil,
                id: String? = nil,
                restartOrder: Int? = nil,
                middlewarePath: String? = nil,
                middlewareType: String? = nil,
                weblogicVersion: String? = nil,
                jdkPath: String? = nil,
                jdkVersion: String? = nil,
                wlsDomainName: String? = nil,
                wlsDomainId: String? = nil,
                wlsDomainPath: String? = nil,
                latestPatchesStatus: ServerLatestPatchesStatusEnum? = nil,
                patchReadinessStatus: PatchReadinessStatusEnum? = nil,
                hostName: String? = nil,
                managedInstanceId: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil
    ) {
        self.name = name
        self.isAdmin = isAdmin
        self.status = status
        self.id = id
        self.restartOrder = restartOrder
        self.middlewarePath = middlewarePath
        self.middlewareType = middlewareType
        self.weblogicVersion = weblogicVersion
        self.jdkPath = jdkPath
        self.jdkVersion = jdkVersion
        self.wlsDomainName = wlsDomainName
        self.wlsDomainId = wlsDomainId
        self.wlsDomainPath = wlsDomainPath
        self.latestPatchesStatus = latestPatchesStatus
        self.patchReadinessStatus = patchReadinessStatus
        self.hostName = hostName
        self.managedInstanceId = managedInstanceId
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Server: CustomStringConvertible {
    public var description: String { "Server()" }
}