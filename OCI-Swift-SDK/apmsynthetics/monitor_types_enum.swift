import Foundation

// MARK: - MonitorTypesEnum

public enum MonitorTypesEnum: String, Codable, Sendable {
    case scriptedBrowser = "SCRIPTED_BROWSER"
    case browser = "BROWSER"
    case scriptedRest = "SCRIPTED_REST"
    case rest = "REST"
    case network = "NETWORK"
    case dns = "DNS"
    case ftp = "FTP"
    case sql = "SQL"
}

public extension MonitorTypesEnum {
    static var allValues: [MonitorTypesEnum] { [.scriptedBrowser, .browser, .scriptedRest, .rest, .network, .dns, .ftp, .sql] }
    static var allStringValues: [String] { ["SCRIPTED_BROWSER", "BROWSER", "SCRIPTED_REST", "REST", "NETWORK", "DNS", "FTP", "SQL"] }
    static func fromString(_ value: String) -> MonitorTypesEnum? { MonitorTypesEnum(rawValue: value) }
}