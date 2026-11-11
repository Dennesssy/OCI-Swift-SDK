import Foundation

// MARK: - GetWorkerRequest

public struct GetWorkerRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var onPremiseVantagePointId: String?
    public var workerId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, onPremiseVantagePointId, workerId, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                onPremiseVantagePointId: String? = nil,
                workerId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.onPremiseVantagePointId = onPremiseVantagePointId
        self.workerId = workerId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetWorkerRequest: CustomStringConvertible {
    public var description: String { "GetWorkerRequest()" }
}

// MARK: - GetWorkerResponse

public struct GetWorkerResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var worker: Worker?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, worker
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                worker: Worker? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.worker = worker
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetWorkerResponse: CustomStringConvertible {
    public var description: String { "GetWorkerResponse()" }
}