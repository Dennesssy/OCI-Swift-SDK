import Foundation

// MARK: - CreateMonitorRequest

public struct CreateMonitorRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var createMonitorDetails: CreateMonitorDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, createMonitorDetails
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                createMonitorDetails: CreateMonitorDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.createMonitorDetails = createMonitorDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateMonitorRequest: CustomStringConvertible {
    public var description: String { "CreateMonitorRequest()" }
}

// MARK: - CreateMonitorResponse

public struct CreateMonitorResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var monitor: Monitor?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, monitor
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                monitor: Monitor? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.monitor = monitor
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateMonitorResponse: CustomStringConvertible {
    public var description: String { "CreateMonitorResponse()" }
}