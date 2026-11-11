import Foundation

// MARK: - ContainerRepositoryReadme

public struct ContainerRepositoryReadme: Codable, Sendable {

    public var content: String?
    public var format: ContainerRepositoryReadmeFormatEnum

    private enum CodingKeys: String, CodingKey {
        case content, format
    }

    public init(
                content: String? = nil,
                format: ContainerRepositoryReadmeFormatEnum
    ) {
        self.content = content
        self.format = format
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerRepositoryReadme: CustomStringConvertible {
    public var description: String { "ContainerRepositoryReadme()" }
}