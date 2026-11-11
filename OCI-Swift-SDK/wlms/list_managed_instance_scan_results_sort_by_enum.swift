import Foundation

// MARK: - ListManagedInstanceScanResultsSortByEnum

public enum ListManagedInstanceScanResultsSortByEnum: String, Codable, Sendable {
    case timeofservercheck = "timeOfServerCheck"
    case servername = "serverName"
}

public extension ListManagedInstanceScanResultsSortByEnum {
    static var allValues: [ListManagedInstanceScanResultsSortByEnum] { [.timeofservercheck, .servername] }
    static var allStringValues: [String] { ["timeOfServerCheck", "serverName"] }
    static func fromString(_ value: String) -> ListManagedInstanceScanResultsSortByEnum? { ListManagedInstanceScanResultsSortByEnum(rawValue: value) }
}