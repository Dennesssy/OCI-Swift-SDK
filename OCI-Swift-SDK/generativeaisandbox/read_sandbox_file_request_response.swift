import Foundation

// MARK: - ReadSandboxFileRequest

public struct ReadSandboxFileRequest: Codable, Sendable {
    public var sandboxId: String?
    public var filePath: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, filePath, opcRequestId
    }

    public init(
                sandboxId: String? = nil,
                filePath: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.sandboxId = sandboxId
        self.filePath = filePath
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReadSandboxFileRequest: CustomStringConvertible {
    public var description: String { "ReadSandboxFileRequest()" }
}

// MARK: - ReadSandboxFileResponse

public struct ReadSandboxFileResponse: Codable, Sendable {
    public var content: Data?
    public var opcRequestId: String?
    public var opcContentSha256: String?

    private enum CodingKeys: String, CodingKey {
        case content, opcRequestId, opcContentSha256
    }

    public init(
                content: Data? = nil,
                opcRequestId: String? = nil,
                opcContentSha256: String? = nil
    ) {
        self.content = content
        self.opcRequestId = opcRequestId
        self.opcContentSha256 = opcContentSha256
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReadSandboxFileResponse: CustomStringConvertible {
    public var description: String { "ReadSandboxFileResponse()" }
}