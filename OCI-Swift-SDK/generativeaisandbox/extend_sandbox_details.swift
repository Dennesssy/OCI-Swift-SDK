import Foundation

// MARK: - ExtendSandboxDetails

public struct ExtendSandboxDetails: Codable, Sendable {

    public var additionalDuration: String?

    private enum CodingKeys: String, CodingKey {
        case additionalDuration
    }

    public init(
                additionalDuration: String? = nil
    ) {
        self.additionalDuration = additionalDuration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExtendSandboxDetails: CustomStringConvertible {
    public var description: String { "ExtendSandboxDetails()" }
}