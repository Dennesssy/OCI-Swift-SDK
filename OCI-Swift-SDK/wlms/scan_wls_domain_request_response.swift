import Foundation

// MARK: - ScanWlsDomainRequest

public struct ScanWlsDomainRequest: Codable, Sendable {
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

extension ScanWlsDomainRequest: CustomStringConvertible {
    public var description: String { "ScanWlsDomainRequest()" }
}

// MARK: - ScanWlsDomainResponse

public struct ScanWlsDomainResponse: Codable, Sendable {
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

extension ScanWlsDomainResponse: CustomStringConvertible {
    public var description: String { "ScanWlsDomainResponse()" }
}