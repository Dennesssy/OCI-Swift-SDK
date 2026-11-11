import Foundation

// MARK: - UpdateContainerConfigurationDetails

public struct UpdateContainerConfigurationDetails: Codable, Sendable {

    public var isRepositoryCreatedOnFirstPush: Bool?

    private enum CodingKeys: String, CodingKey {
        case isRepositoryCreatedOnFirstPush
    }

    public init(
                isRepositoryCreatedOnFirstPush: Bool? = nil
    ) {
        self.isRepositoryCreatedOnFirstPush = isRepositoryCreatedOnFirstPush
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateContainerConfigurationDetails: CustomStringConvertible {
    public var description: String { "UpdateContainerConfigurationDetails()" }
}