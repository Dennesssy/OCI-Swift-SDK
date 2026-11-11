import Foundation

// MARK: - DeleteLustreFileSystemRequest

public struct DeleteLustreFileSystemRequest: Codable, Sendable {
    public var lustreFileSystemId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case lustreFileSystemId, ifMatch, opcRequestId
    }

    public init(
                lustreFileSystemId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.lustreFileSystemId = lustreFileSystemId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteLustreFileSystemRequest: CustomStringConvertible {
    public var description: String { "DeleteLustreFileSystemRequest()" }
}

// MARK: - DeleteLustreFileSystemResponse

public struct DeleteLustreFileSystemResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteLustreFileSystemResponse: CustomStringConvertible {
    public var description: String { "DeleteLustreFileSystemResponse()" }
}