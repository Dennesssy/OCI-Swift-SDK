import Foundation

// MARK: - ListWlsDomainScanResultsSortByEnum

public enum ListWlsDomainScanResultsSortByEnum: String, Codable, Sendable {
    case timeofservercheck = "timeOfServerCheck"
    case servername = "serverName"
}

public extension ListWlsDomainScanResultsSortByEnum {
    static var allValues: [ListWlsDomainScanResultsSortByEnum] { [.timeofservercheck, .servername] }
    static var allStringValues: [String] { ["timeOfServerCheck", "serverName"] }
    static func fromString(_ value: String) -> ListWlsDomainScanResultsSortByEnum? { ListWlsDomainScanResultsSortByEnum(rawValue: value) }
}