import Foundation

// MARK: - CreateLustreFileSystemRequest

public struct CreateLustreFileSystemRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createLustreFileSystemDetails: CreateLustreFileSystemDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createLustreFileSystemDetails
    }

    public init(
                opcRequestId: String? = nil,
                createLustreFileSystemDetails: CreateLustreFileSystemDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createLustreFileSystemDetails = createLustreFileSystemDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateLustreFileSystemRequest: CustomStringConvertible {
    public var description: String { "CreateLustreFileSystemRequest()" }
}

// MARK: - CreateLustreFileSystemResponse

public struct CreateLustreFileSystemResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var lustreFileSystem: LustreFileSystem?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, lustreFileSystem
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                lustreFileSystem: LustreFileSystem? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.lustreFileSystem = lustreFileSystem
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateLustreFileSystemResponse: CustomStringConvertible {
    public var description: String { "CreateLustreFileSystemResponse()" }
}