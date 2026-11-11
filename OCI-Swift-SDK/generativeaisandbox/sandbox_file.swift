import Foundation

// MARK: - SandboxFile

public struct SandboxFile: Codable, Sendable {

    public var filePath: String?
    public var sandboxId: String?
    public var contentSha256: String?

    private enum CodingKeys: String, CodingKey {
        case filePath, sandboxId, contentSha256
    }

    public init(
                filePath: String? = nil,
                sandboxId: String? = nil,
                contentSha256: String? = nil
    ) {
        self.filePath = filePath
        self.sandboxId = sandboxId
        self.contentSha256 = contentSha256
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SandboxFile: CustomStringConvertible {
    public var description: String { "SandboxFile()" }
}