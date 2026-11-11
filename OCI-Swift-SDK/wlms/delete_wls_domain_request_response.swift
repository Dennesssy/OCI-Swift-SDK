import Foundation

// MARK: - DeleteWlsDomainRequest

public struct DeleteWlsDomainRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, ifMatch, opcRequestId
    }

    public init(
                wlsDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteWlsDomainRequest: CustomStringConvertible {
    public var description: String { "DeleteWlsDomainRequest()" }
}

// MARK: - DeleteWlsDomainResponse

public struct DeleteWlsDomainResponse: Codable, Sendable {
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

extension DeleteWlsDomainResponse: CustomStringConvertible {
    public var description: String { "DeleteWlsDomainResponse()" }
}