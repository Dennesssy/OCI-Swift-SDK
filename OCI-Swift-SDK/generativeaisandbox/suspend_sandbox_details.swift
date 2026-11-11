import Foundation

// MARK: - SuspendSandboxDetails

public struct SuspendSandboxDetails: Codable, Sendable {

    public init() {}
}

extension SuspendSandboxDetails: CustomStringConvertible {
    public var description: String { "SuspendSandboxDetails()" }
}