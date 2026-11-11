import Foundation

// MARK: - AgreementRecordSummary

public struct AgreementRecordSummary: Codable, Sendable {

    public var timeAccepted: Date?
    public var agreementUuid: String?
    public var agreementSignature: String?

    private enum CodingKeys: String, CodingKey {
        case timeAccepted, agreementUuid, agreementSignature
    }

    public init(
                timeAccepted: Date? = nil,
                agreementUuid: String? = nil,
                agreementSignature: String? = nil
    ) {
        self.timeAccepted = timeAccepted
        self.agreementUuid = agreementUuid
        self.agreementSignature = agreementSignature
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AgreementRecordSummary: CustomStringConvertible {
    public var description: String { "AgreementRecordSummary()" }
}