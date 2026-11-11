import Foundation

// MARK: - RestartWlsDomainRequest

public struct RestartWlsDomainRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var restartWlsDomainDetails: RestartWlsDomainDetails?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, ifMatch, opcRequestId, restartWlsDomainDetails
    }

    public init(
                wlsDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                restartWlsDomainDetails: RestartWlsDomainDetails? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.restartWlsDomainDetails = restartWlsDomainDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RestartWlsDomainRequest: CustomStringConvertible {
    public var description: String { "RestartWlsDomainRequest()" }
}

// MARK: - RestartWlsDomainResponse

public struct RestartWlsDomainResponse: Codable, Sendable {
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

extension RestartWlsDomainResponse: CustomStringConvertible {
    public var description: String { "RestartWlsDomainResponse()" }
}