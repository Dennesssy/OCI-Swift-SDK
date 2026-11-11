import Foundation

// MARK: - GetWlsDomainCredentialCredentialTypeEnum

public enum GetWlsDomainCredentialCredentialTypeEnum: String, Codable, Sendable {
    case weblogicadminuser = "weblogicAdminUser"
    case nodemanageruser = "nodemanagerUser"
}

public extension GetWlsDomainCredentialCredentialTypeEnum {
    static var allValues: [GetWlsDomainCredentialCredentialTypeEnum] { [.weblogicadminuser, .nodemanageruser] }
    static var allStringValues: [String] { ["weblogicAdminUser", "nodemanagerUser"] }
    static func fromString(_ value: String) -> GetWlsDomainCredentialCredentialTypeEnum? { GetWlsDomainCredentialCredentialTypeEnum(rawValue: value) }
}