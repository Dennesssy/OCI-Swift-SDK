import Foundation

// MARK: - ChangeDomainLicenseTypeRequest

public struct ChangeDomainLicenseTypeRequest: Codable, Sendable {
    public var domainId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var changeDomainLicenseTypeDetails: ChangeDomainLicenseTypeDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case domainId, opcRequestId, ifMatch, changeDomainLicenseTypeDetails, opcRetryToken
    }

    public init(
                domainId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                changeDomainLicenseTypeDetails: ChangeDomainLicenseTypeDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.domainId = domainId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.changeDomainLicenseTypeDetails = changeDomainLicenseTypeDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeDomainLicenseTypeRequest: CustomStringConvertible {
    public var description: String { "ChangeDomainLicenseTypeRequest()" }
}

// MARK: - ChangeDomainLicenseTypeResponse

public struct ChangeDomainLicenseTypeResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeDomainLicenseTypeResponse: CustomStringConvertible {
    public var description: String { "ChangeDomainLicenseTypeResponse()" }
}