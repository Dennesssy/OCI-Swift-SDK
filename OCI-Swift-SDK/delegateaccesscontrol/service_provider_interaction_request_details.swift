import Foundation

// MARK: - ServiceProviderInteractionRequestDetails

public struct ServiceProviderInteractionRequestDetails: Codable, Sendable {

    public var moreInfoDetails: String?

    private enum CodingKeys: String, CodingKey {
        case moreInfoDetails
    }

    public init(
                moreInfoDetails: String? = nil
    ) {
        self.moreInfoDetails = moreInfoDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ServiceProviderInteractionRequestDetails: CustomStringConvertible {
    public var description: String { "ServiceProviderInteractionRequestDetails()" }
}