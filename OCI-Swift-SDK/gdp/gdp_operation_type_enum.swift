import Foundation

// MARK: - GdpOperationTypeEnum

public enum GdpOperationTypeEnum: String, Codable, Sendable {
    case createGdpPipeline = "CREATE_GDP_PIPELINE"
    case startGdpPipeline = "START_GDP_PIPELINE"
    case stopGdpPipeline = "STOP_GDP_PIPELINE"
    case updateGdpPipeline = "UPDATE_GDP_PIPELINE"
    case deleteGdpPipeline = "DELETE_GDP_PIPELINE"
    case peerGdpPipeline = "PEER_GDP_PIPELINE"
    case moveGdpPipeline = "MOVE_GDP_PIPELINE"
    case rotateGdpPipelineKeys = "ROTATE_GDP_PIPELINE_KEYS"
}

public extension GdpOperationTypeEnum {
    static var allValues: [GdpOperationTypeEnum] { [.createGdpPipeline, .startGdpPipeline, .stopGdpPipeline, .updateGdpPipeline, .deleteGdpPipeline, .peerGdpPipeline, .moveGdpPipeline, .rotateGdpPipelineKeys] }
    static var allStringValues: [String] { ["CREATE_GDP_PIPELINE", "START_GDP_PIPELINE", "STOP_GDP_PIPELINE", "UPDATE_GDP_PIPELINE", "DELETE_GDP_PIPELINE", "PEER_GDP_PIPELINE", "MOVE_GDP_PIPELINE", "ROTATE_GDP_PIPELINE_KEYS"] }
    static func fromString(_ value: String) -> GdpOperationTypeEnum? { GdpOperationTypeEnum(rawValue: value) }
}