import Foundation

// MARK: - DeleteObjectStorageLinkRequest

public struct DeleteObjectStorageLinkRequest: Codable, Sendable {
    public var objectStorageLinkId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case objectStorageLinkId, ifMatch, opcRequestId
    }

    public init(
                objectStorageLinkId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.objectStorageLinkId = objectStorageLinkId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteObjectStorageLinkRequest: CustomStringConvertible {
    public var description: String { "DeleteObjectStorageLinkRequest()" }
}

// MARK: - DeleteObjectStorageLinkResponse

public struct DeleteObjectStorageLinkResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteObjectStorageLinkResponse: CustomStringConvertible {
    public var description: String { "DeleteObjectStorageLinkResponse()" }
}