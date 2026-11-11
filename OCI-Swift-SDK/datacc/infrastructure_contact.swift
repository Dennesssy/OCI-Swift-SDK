import Foundation

// MARK: - InfrastructureContact

public struct InfrastructureContact: Codable, Sendable {

    public var name: String?
    public var email: String?
    public var isPrimary: Bool?
    public var phoneNumber: String?
    public var isContactMosValidated: Bool?

    private enum CodingKeys: String, CodingKey {
        case name, email, isPrimary, phoneNumber, isContactMosValidated
    }

    public init(
                name: String? = nil,
                email: String? = nil,
                isPrimary: Bool? = nil,
                phoneNumber: String? = nil,
                isContactMosValidated: Bool? = nil
    ) {
        self.name = name
        self.email = email
        self.isPrimary = isPrimary
        self.phoneNumber = phoneNumber
        self.isContactMosValidated = isContactMosValidated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InfrastructureContact: CustomStringConvertible {
    public var description: String { "InfrastructureContact()" }
}