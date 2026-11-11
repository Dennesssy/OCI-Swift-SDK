import Foundation

// MARK: - ListBatchContextShapesShapeTypeEnum

public enum ListBatchContextShapesShapeTypeEnum: String, Codable, Sendable {
    case cpu = "CPU"
    case gpu = "GPU"
}

public extension ListBatchContextShapesShapeTypeEnum {
    static var allValues: [ListBatchContextShapesShapeTypeEnum] { [.cpu, .gpu] }
    static var allStringValues: [String] { ["CPU", "GPU"] }
    static func fromString(_ value: String) -> ListBatchContextShapesShapeTypeEnum? { ListBatchContextShapesShapeTypeEnum(rawValue: value) }
}