import Foundation

// MARK: - StopExportToObjectRequest

public struct StopExportToObjectRequest: Codable, Sendable {
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

extension StopExportToObjectRequest: CustomStringConvertible {
    public var description: String { "StopExportToObjectRequest()" }
}

// MARK: - StopExportToObjectResponse

public struct StopExportToObjectResponse: Codable, Sendable {
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

extension StopExportToObjectResponse: CustomStringConvertible {
    public var description: String { "StopExportToObjectResponse()" }
}