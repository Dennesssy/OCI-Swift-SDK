import Foundation

// MARK: - SecurityContext

public struct SecurityContext: Codable, Sendable {

    public var runAsUser: Int?
    public var runAsGroup: Int?
    public var fsGroup: Int?

    private enum CodingKeys: String, CodingKey {
        case runAsUser, runAsGroup, fsGroup
    }

    public init(
                runAsUser: Int? = nil,
                runAsGroup: Int? = nil,
                fsGroup: Int? = nil
    ) {
        self.runAsUser = runAsUser
        self.runAsGroup = runAsGroup
        self.fsGroup = fsGroup
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SecurityContext: CustomStringConvertible {
    public var description: String { "SecurityContext()" }
}