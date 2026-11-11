import Foundation

// MARK: - UpdateWorkerRequest

public struct UpdateWorkerRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var onPremiseVantagePointId: String?
    public var workerId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateWorkerDetails: UpdateWorkerDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, onPremiseVantagePointId, workerId, ifMatch, opcRequestId, updateWorkerDetails
    }

    public init(
                apmDomainId: String? = nil,
                onPremiseVantagePointId: String? = nil,
                workerId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateWorkerDetails: UpdateWorkerDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.onPremiseVantagePointId = onPremiseVantagePointId
        self.workerId = workerId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateWorkerDetails = updateWorkerDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateWorkerRequest: CustomStringConvertible {
    public var description: String { "UpdateWorkerRequest()" }
}

// MARK: - UpdateWorkerResponse

public struct UpdateWorkerResponse: Codable, Sendable {
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

extension UpdateWorkerResponse: CustomStringConvertible {
    public var description: String { "UpdateWorkerResponse()" }
}