import Foundation

// MARK: - OAuth2LoginBackend

public struct OAuth2LoginBackend: Codable, Sendable {

    public init() {}
}

extension OAuth2LoginBackend: CustomStringConvertible {
    public var description: String { "OAuth2LoginBackend()" }
}