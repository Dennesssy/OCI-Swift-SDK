import Foundation

// MARK: - WriteSandboxFileRequest

public struct WriteSandboxFileRequest: Codable, Sendable {
    public var sandboxId: String?
    public var filePath: String?
    public var writeSandboxFileContentDetails: Data
    public var opcRequestId: String?
    public var opcContentSha256: String?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, filePath, writeSandboxFileContentDetails, opcRequestId, opcContentSha256
    }

    public init(
                sandboxId: String? = nil,
                filePath: String? = nil,
                writeSandboxFileContentDetails: Data,
                opcRequestId: String? = nil,
                opcContentSha256: String? = nil
    ) {
        self.sandboxId = sandboxId
        self.filePath = filePath
        self.writeSandboxFileContentDetails = writeSandboxFileContentDetails
        self.opcRequestId = opcRequestId
        self.opcContentSha256 = opcContentSha256
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WriteSandboxFileRequest: CustomStringConvertible {
    public var description: String { "WriteSandboxFileRequest()" }
}

// MARK: - WriteSandboxFileResponse

public struct WriteSandboxFileResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcContentSha256: String?
    public var sandboxFile: SandboxFile?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcContentSha256, sandboxFile
    }

    public init(
                opcRequestId: String? = nil,
                opcContentSha256: String? = nil,
                sandboxFile: SandboxFile? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcContentSha256 = opcContentSha256
        self.sandboxFile = sandboxFile
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WriteSandboxFileResponse: CustomStringConvertible {
    public var description: String { "WriteSandboxFileResponse()" }
}