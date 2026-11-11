import Foundation

// MARK: - ResumeSandboxDetails

public struct ResumeSandboxDetails: Codable, Sendable {

    public init() {}
}

extension ResumeSandboxDetails: CustomStringConvertible {
    public var description: String { "ResumeSandboxDetails()" }
}