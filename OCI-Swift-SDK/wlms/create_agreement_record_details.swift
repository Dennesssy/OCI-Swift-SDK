import Foundation

// MARK: - CreateAgreementRecordDetails

public struct CreateAgreementRecordDetails: Codable, Sendable {

    public var agreementUuid: String?
    public var agreementSignature: String?

    private enum CodingKeys: String, CodingKey {
        case agreementUuid, agreementSignature
    }

    public init(
                agreementUuid: String? = nil,
                agreementSignature: String? = nil
    ) {
        self.agreementUuid = agreementUuid
        self.agreementSignature = agreementSignature
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateAgreementRecordDetails: CustomStringConvertible {
    public var description: String { "CreateAgreementRecordDetails()" }
}