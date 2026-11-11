import Foundation

// MARK: - ContainerConfiguration

public struct ContainerConfiguration: Codable, Sendable {

    public var isRepositoryCreatedOnFirstPush: Bool?
    public var namespace: String?

    private enum CodingKeys: String, CodingKey {
        case isRepositoryCreatedOnFirstPush, namespace
    }

    public init(
                isRepositoryCreatedOnFirstPush: Bool? = nil,
                namespace: String? = nil
    ) {
        self.isRepositoryCreatedOnFirstPush = isRepositoryCreatedOnFirstPush
        self.namespace = namespace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerConfiguration: CustomStringConvertible {
    public var description: String { "ContainerConfiguration()" }
}