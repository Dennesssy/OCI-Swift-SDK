import Foundation

// MARK: - StopWlsDomainRequest

public struct StopWlsDomainRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var stopWlsDomainDetails: StopWlsDomainDetails?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, ifMatch, opcRequestId, stopWlsDomainDetails
    }

    public init(
                wlsDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                stopWlsDomainDetails: StopWlsDomainDetails? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.stopWlsDomainDetails = stopWlsDomainDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StopWlsDomainRequest: CustomStringConvertible {
    public var description: String { "StopWlsDomainRequest()" }
}

// MARK: - StopWlsDomainResponse

public struct StopWlsDomainResponse: Codable, Sendable {
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

extension StopWlsDomainResponse: CustomStringConvertible {
    public var description: String { "StopWlsDomainResponse()" }
}