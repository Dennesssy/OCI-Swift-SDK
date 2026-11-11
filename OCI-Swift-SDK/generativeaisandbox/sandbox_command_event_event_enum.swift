import Foundation

// MARK: - SandboxCommandEventEventEnum

public enum SandboxCommandEventEventEnum: String, Codable, Sendable {
    case started = "STARTED"
    case stdout = "STDOUT"
    case stderr = "STDERR"
    case finished = "FINISHED"
}

public extension SandboxCommandEventEventEnum {
    static var allValues: [SandboxCommandEventEventEnum] { [.started, .stdout, .stderr, .finished] }
    static var allStringValues: [String] { ["STARTED", "STDOUT", "STDERR", "FINISHED"] }
    static func fromString(_ value: String) -> SandboxCommandEventEventEnum? { SandboxCommandEventEventEnum(rawValue: value) }
}