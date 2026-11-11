import Foundation

// MARK: - GdpPipelinePipelineTypeEnum

public enum GdpPipelinePipelineTypeEnum: String, Codable, Sendable {
    case sender = "SENDER"
    case receiver = "RECEIVER"
}

public extension GdpPipelinePipelineTypeEnum {
    static var allValues: [GdpPipelinePipelineTypeEnum] { [.sender, .receiver] }
    static var allStringValues: [String] { ["SENDER", "RECEIVER"] }
    static func fromString(_ value: String) -> GdpPipelinePipelineTypeEnum? { GdpPipelinePipelineTypeEnum(rawValue: value) }
}