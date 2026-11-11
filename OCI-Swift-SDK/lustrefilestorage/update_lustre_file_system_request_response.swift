import Foundation

// MARK: - UpdateLustreFileSystemRequest

public struct UpdateLustreFileSystemRequest: Codable, Sendable {
    public var lustreFileSystemId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateLustreFileSystemDetails: UpdateLustreFileSystemDetails?

    private enum CodingKeys: String, CodingKey {
        case lustreFileSystemId, ifMatch, opcRequestId, updateLustreFileSystemDetails
    }

    public init(
                lustreFileSystemId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateLustreFileSystemDetails: UpdateLustreFileSystemDetails? = nil
    ) {
        self.lustreFileSystemId = lustreFileSystemId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateLustreFileSystemDetails = updateLustreFileSystemDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateLustreFileSystemRequest: CustomStringConvertible {
    public var description: String { "UpdateLustreFileSystemRequest()" }
}

// MARK: - UpdateLustreFileSystemResponse

public struct UpdateLustreFileSystemResponse: Codable, Sendable {
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

extension UpdateLustreFileSystemResponse: CustomStringConvertible {
    public var description: String { "UpdateLustreFileSystemResponse()" }
}