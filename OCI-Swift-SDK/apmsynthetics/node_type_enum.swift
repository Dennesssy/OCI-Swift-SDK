import Foundation

// MARK: - NodeTypeEnum

public enum NodeTypeEnum: String, Codable, Sendable {
    case source = "SOURCE"
    case destination = "DESTINATION"
    case anonymous = "ANONYMOUS"
    case `internal` = "INTERNAL"
    case dangling = "DANGLING"
}

public extension NodeTypeEnum {
    static var allValues: [NodeTypeEnum] { [.source, .destination, .anonymous, .`internal`, .dangling] }
    static var allStringValues: [String] { ["SOURCE", "DESTINATION", "ANONYMOUS", "INTERNAL", "DANGLING"] }
    static func fromString(_ value: String) -> NodeTypeEnum? { NodeTypeEnum(rawValue: value) }
}