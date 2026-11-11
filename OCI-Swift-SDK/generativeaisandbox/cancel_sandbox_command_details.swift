import Foundation

// MARK: - CancelSandboxCommandDetails

public struct CancelSandboxCommandDetails: Codable, Sendable {

    public var signal: CancelSandboxCommandDetailsSignalEnum?

    private enum CodingKeys: String, CodingKey {
        case signal
    }

    public init(
                signal: CancelSandboxCommandDetailsSignalEnum? = nil
    ) {
        self.signal = signal
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelSandboxCommandDetails: CustomStringConvertible {
    public var description: String { "CancelSandboxCommandDetails()" }
}