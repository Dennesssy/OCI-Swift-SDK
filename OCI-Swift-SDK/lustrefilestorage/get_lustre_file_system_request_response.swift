import Foundation

// MARK: - GetLustreFileSystemRequest

public struct GetLustreFileSystemRequest: Codable, Sendable {
    public var lustreFileSystemId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case lustreFileSystemId, opcRequestId
    }

    public init(
                lustreFileSystemId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.lustreFileSystemId = lustreFileSystemId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetLustreFileSystemRequest: CustomStringConvertible {
    public var description: String { "GetLustreFileSystemRequest()" }
}

// MARK: - GetLustreFileSystemResponse

public struct GetLustreFileSystemResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var lustreFileSystem: LustreFileSystem?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, lustreFileSystem
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                lustreFileSystem: LustreFileSystem? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.lustreFileSystem = lustreFileSystem
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetLustreFileSystemResponse: CustomStringConvertible {
    public var description: String { "GetLustreFileSystemResponse()" }
}