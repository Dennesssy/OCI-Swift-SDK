import Foundation

// MARK: - DeleteGitRefDetails

public struct DeleteGitRefDetails: Codable, Sendable {

    public var refName: String?

    private enum CodingKeys: String, CodingKey {
        case refName
    }

    public init(
                refName: String? = nil
    ) {
        self.refName = refName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteGitRefDetails: CustomStringConvertible {
    public var description: String { "DeleteGitRefDetails()" }
}