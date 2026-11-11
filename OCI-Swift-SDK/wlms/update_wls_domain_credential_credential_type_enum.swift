import Foundation

// MARK: - UpdateWlsDomainCredentialCredentialTypeEnum

public enum UpdateWlsDomainCredentialCredentialTypeEnum: String, Codable, Sendable {
    case weblogicadminuser = "weblogicAdminUser"
    case nodemanageruser = "nodemanagerUser"
}

public extension UpdateWlsDomainCredentialCredentialTypeEnum {
    static var allValues: [UpdateWlsDomainCredentialCredentialTypeEnum] { [.weblogicadminuser, .nodemanageruser] }
    static var allStringValues: [String] { ["weblogicAdminUser", "nodemanagerUser"] }
    static func fromString(_ value: String) -> UpdateWlsDomainCredentialCredentialTypeEnum? { UpdateWlsDomainCredentialCredentialTypeEnum(rawValue: value) }
}