import Foundation

// MARK: - CreateAgreementRecordRequest

public struct CreateAgreementRecordRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var createAgreementRecordDetails: CreateAgreementRecordDetails?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, ifMatch, opcRequestId, createAgreementRecordDetails
    }

    public init(
                wlsDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                createAgreementRecordDetails: CreateAgreementRecordDetails? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.createAgreementRecordDetails = createAgreementRecordDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateAgreementRecordRequest: CustomStringConvertible {
    public var description: String { "CreateAgreementRecordRequest()" }
}

// MARK: - CreateAgreementRecordResponse

public struct CreateAgreementRecordResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var agreementRecord: AgreementRecord?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, agreementRecord
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                agreementRecord: AgreementRecord? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.agreementRecord = agreementRecord
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateAgreementRecordResponse: CustomStringConvertible {
    public var description: String { "CreateAgreementRecordResponse()" }
}