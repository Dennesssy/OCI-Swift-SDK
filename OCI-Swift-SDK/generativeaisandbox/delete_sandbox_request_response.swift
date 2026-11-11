import Foundation

// MARK: - DeleteSandboxRequest

public struct DeleteSandboxRequest: Codable, Sendable {
    public var sandboxId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, opcRequestId, ifMatch
    }

    public init(
                sandboxId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.sandboxId = sandboxId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteSandboxRequest: CustomStringConvertible {
    public var description: String { "DeleteSandboxRequest()" }
}

// MARK: - DeleteSandboxResponse

public struct DeleteSandboxResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteSandboxResponse: CustomStringConvertible {
    public var description: String { "DeleteSandboxResponse()" }
}