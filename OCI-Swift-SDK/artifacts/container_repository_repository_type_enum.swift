import Foundation

// MARK: - ContainerRepositoryRepositoryTypeEnum

public enum ContainerRepositoryRepositoryTypeEnum: String, Codable, Sendable {
    case standard = "STANDARD"
    case pullThrough = "PULL_THROUGH"
    case multiRegion = "MULTI_REGION"
}

public extension ContainerRepositoryRepositoryTypeEnum {
    static var allValues: [ContainerRepositoryRepositoryTypeEnum] { [.standard, .pullThrough, .multiRegion] }
    static var allStringValues: [String] { ["STANDARD", "PULL_THROUGH", "MULTI_REGION"] }
    static func fromString(_ value: String) -> ContainerRepositoryRepositoryTypeEnum? { ContainerRepositoryRepositoryTypeEnum(rawValue: value) }
}