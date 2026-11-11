import Foundation

// MARK: - ListWlsDomainsWeblogicVersionEnum

public enum ListWlsDomainsWeblogicVersionEnum: String, Codable, Sendable {
    case v12214 = "v12.2.1.4"
    case v14110 = "v14.1.1.0"
    case v14120 = "v14.1.2.0"
}

public extension ListWlsDomainsWeblogicVersionEnum {
    static var allValues: [ListWlsDomainsWeblogicVersionEnum] { [.v12214, .v14110, .v14120] }
    static var allStringValues: [String] { ["v12.2.1.4", "v14.1.1.0", "v14.1.2.0"] }
    static func fromString(_ value: String) -> ListWlsDomainsWeblogicVersionEnum? { ListWlsDomainsWeblogicVersionEnum(rawValue: value) }
}