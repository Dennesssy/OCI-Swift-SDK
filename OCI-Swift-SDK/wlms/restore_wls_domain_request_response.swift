import Foundation

// MARK: - RestoreWlsDomainRequest

public struct RestoreWlsDomainRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var restoreWlsDomainDetails: RestoreWlsDomainDetails?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, ifMatch, opcRequestId, restoreWlsDomainDetails
    }

    public init(
                wlsDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                restoreWlsDomainDetails: RestoreWlsDomainDetails? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.restoreWlsDomainDetails = restoreWlsDomainDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RestoreWlsDomainRequest: CustomStringConvertible {
    public var description: String { "RestoreWlsDomainRequest()" }
}

// MARK: - RestoreWlsDomainResponse

public struct RestoreWlsDomainResponse: Codable, Sendable {
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

extension RestoreWlsDomainResponse: CustomStringConvertible {
    public var description: String { "RestoreWlsDomainResponse()" }
}