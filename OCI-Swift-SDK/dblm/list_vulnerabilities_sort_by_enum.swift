import Foundation

// MARK: - ListVulnerabilitiesSortByEnum

public enum ListVulnerabilitiesSortByEnum: String, Codable, Sendable {
    case cveid = "cveId"
    case vulnerableresources = "vulnerableResources"
}

public extension ListVulnerabilitiesSortByEnum {
    static var allValues: [ListVulnerabilitiesSortByEnum] { [.cveid, .vulnerableresources] }
    static var allStringValues: [String] { ["cveId", "vulnerableResources"] }
    static func fromString(_ value: String) -> ListVulnerabilitiesSortByEnum? { ListVulnerabilitiesSortByEnum(rawValue: value) }
}