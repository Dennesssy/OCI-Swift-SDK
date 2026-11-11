import Foundation

// MARK: - CreateWorkerRequest

public struct CreateWorkerRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var onPremiseVantagePointId: String?
    public var opcRequestId: String?
    public var createWorkerDetails: CreateWorkerDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, onPremiseVantagePointId, opcRequestId, createWorkerDetails
    }

    public init(
                apmDomainId: String? = nil,
                onPremiseVantagePointId: String? = nil,
                opcRequestId: String? = nil,
                createWorkerDetails: CreateWorkerDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.onPremiseVantagePointId = onPremiseVantagePointId
        self.opcRequestId = opcRequestId
        self.createWorkerDetails = createWorkerDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateWorkerRequest: CustomStringConvertible {
    public var description: String { "CreateWorkerRequest()" }
}

// MARK: - CreateWorkerResponse

public struct CreateWorkerResponse: Codable, Sendable {
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

extension CreateWorkerResponse: CustomStringConvertible {
    public var description: String { "CreateWorkerResponse()" }
}