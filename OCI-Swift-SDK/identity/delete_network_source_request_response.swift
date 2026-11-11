import Foundation

// MARK: - DeleteNetworkSourceRequest

public struct DeleteNetworkSourceRequest: Codable, Sendable {
    public var networkSourceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case networkSourceId, ifMatch, opcRequestId
    }

    public init(
                networkSourceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.networkSourceId = networkSourceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteNetworkSourceRequest: CustomStringConvertible {
    public var description: String { "DeleteNetworkSourceRequest()" }
}

// MARK: - DeleteNetworkSourceResponse

public struct DeleteNetworkSourceResponse: Codable, Sendable {
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

extension DeleteNetworkSourceResponse: CustomStringConvertible {
    public var description: String { "DeleteNetworkSourceResponse()" }
}