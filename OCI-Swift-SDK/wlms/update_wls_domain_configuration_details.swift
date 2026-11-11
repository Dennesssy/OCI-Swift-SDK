import Foundation

// MARK: - UpdateWlsDomainConfigurationDetails

public struct UpdateWlsDomainConfigurationDetails: Codable, Sendable {

    public var isPatchEnabled: Bool?
    public var isRollbackOnFailure: Bool?
    public var serversShutdownTimeout: Int?
    public var adminServerControlMode: ServerControlModeEnum?
    public var managedServerControlMode: ServerControlModeEnum?
    public var adminServerStartScriptPath: String?
    public var adminServerStopScriptPath: String?
    public var managedServerStartScriptPath: String?
    public var managedServerStopScriptPath: String?

    private enum CodingKeys: String, CodingKey {
        case isPatchEnabled, isRollbackOnFailure, serversShutdownTimeout, adminServerControlMode, managedServerControlMode, adminServerStartScriptPath, adminServerStopScriptPath, managedServerStartScriptPath, managedServerStopScriptPath
    }

    public init(
                isPatchEnabled: Bool? = nil,
                isRollbackOnFailure: Bool? = nil,
                serversShutdownTimeout: Int? = nil,
                adminServerControlMode: ServerControlModeEnum? = nil,
                managedServerControlMode: ServerControlModeEnum? = nil,
                adminServerStartScriptPath: String? = nil,
                adminServerStopScriptPath: String? = nil,
                managedServerStartScriptPath: String? = nil,
                managedServerStopScriptPath: String? = nil
    ) {
        self.isPatchEnabled = isPatchEnabled
        self.isRollbackOnFailure = isRollbackOnFailure
        self.serversShutdownTimeout = serversShutdownTimeout
        self.adminServerControlMode = adminServerControlMode
        self.managedServerControlMode = managedServerControlMode
        self.adminServerStartScriptPath = adminServerStartScriptPath
        self.adminServerStopScriptPath = adminServerStopScriptPath
        self.managedServerStartScriptPath = managedServerStartScriptPath
        self.managedServerStopScriptPath = managedServerStopScriptPath
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateWlsDomainConfigurationDetails: CustomStringConvertible {
    public var description: String { "UpdateWlsDomainConfigurationDetails()" }
}