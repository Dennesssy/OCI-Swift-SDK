import Foundation

// MARK: - HttpBackend

public struct HttpBackend: Codable, Sendable {

    public var url: String?
    public var connectTimeoutInSeconds: Float?
    public var readTimeoutInSeconds: Float?
    public var sendTimeoutInSeconds: Float?
    public var isSslVerifyDisabled: Bool?

    private enum CodingKeys: String, CodingKey {
        case url, connectTimeoutInSeconds, readTimeoutInSeconds, sendTimeoutInSeconds, isSslVerifyDisabled
    }

    public init(
                url: String? = nil,
                connectTimeoutInSeconds: Float? = nil,
                readTimeoutInSeconds: Float? = nil,
                sendTimeoutInSeconds: Float? = nil,
                isSslVerifyDisabled: Bool? = nil
    ) {
        self.url = url
        self.connectTimeoutInSeconds = connectTimeoutInSeconds
        self.readTimeoutInSeconds = readTimeoutInSeconds
        self.sendTimeoutInSeconds = sendTimeoutInSeconds
        self.isSslVerifyDisabled = isSslVerifyDisabled
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HttpBackend: CustomStringConvertible {
    public var description: String { "HttpBackend()" }
}