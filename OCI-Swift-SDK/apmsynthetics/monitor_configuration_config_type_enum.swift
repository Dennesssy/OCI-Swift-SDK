import Foundation

// MARK: - MonitorConfigurationConfigTypeEnum

public enum MonitorConfigurationConfigTypeEnum: String, Codable, Sendable {
    case browserConfig = "BROWSER_CONFIG"
    case scriptedBrowserConfig = "SCRIPTED_BROWSER_CONFIG"
    case restConfig = "REST_CONFIG"
    case scriptedRestConfig = "SCRIPTED_REST_CONFIG"
    case networkConfig = "NETWORK_CONFIG"
    case dnsServerConfig = "DNS_SERVER_CONFIG"
    case dnsTraceConfig = "DNS_TRACE_CONFIG"
    case dnssecConfig = "DNSSEC_CONFIG"
    case ftpConfig = "FTP_CONFIG"
    case sqlConfig = "SQL_CONFIG"
}

public extension MonitorConfigurationConfigTypeEnum {
    static var allValues: [MonitorConfigurationConfigTypeEnum] { [.browserConfig, .scriptedBrowserConfig, .restConfig, .scriptedRestConfig, .networkConfig, .dnsServerConfig, .dnsTraceConfig, .dnssecConfig, .ftpConfig, .sqlConfig] }
    static var allStringValues: [String] { ["BROWSER_CONFIG", "SCRIPTED_BROWSER_CONFIG", "REST_CONFIG", "SCRIPTED_REST_CONFIG", "NETWORK_CONFIG", "DNS_SERVER_CONFIG", "DNS_TRACE_CONFIG", "DNSSEC_CONFIG", "FTP_CONFIG", "SQL_CONFIG"] }
    static func fromString(_ value: String) -> MonitorConfigurationConfigTypeEnum? { MonitorConfigurationConfigTypeEnum(rawValue: value) }
}