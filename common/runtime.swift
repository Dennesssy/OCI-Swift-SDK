// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates.  All rights reserved.
// This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

import Foundation

public protocol HTTPClient {
}

public protocol Signer {
}

public protocol ClientProtocol {
}

public struct Region: Codable, Sendable, Hashable, CustomStringConvertible {
    public let identifier: String

    public init(_ identifier: String) {
        self.identifier = identifier
    }

    public var description: String {
        identifier
    }
}

/// Namespace mirroring the Go `common` package.
public enum common {
    /// Protocol for providing OCI configuration (region, credentials).
    public protocol ConfigurationProvider: Sendable {
        var region: String? { get }
    }

    /// Retry metadata attached to generated OCI requests.
    public struct RequestMetadata: Codable, Sendable {
        public init() {}
    }
}
public typealias ConfigurationProvider = common.ConfigurationProvider

public extension Common {
    static func checkForEnabledServices(_ serviceName: String) -> Bool {
        true
    }

    static func generateRetryToken() -> String {
        UUID().uuidString
    }
}
/// Formats any optional/value for interpolation in generated debug descriptions.
public func optStr(_ value: Any?) -> String {
    guard let value = value else { return "nil" }
    return String(describing: value)
}

/// Namespace mirroring the Go `http` package (net/http).
public enum http {
    /// Low-level response wrapper for generated OCI requests.
    public struct Response: Codable, Sendable {
        public init() {}
    }
}

/// Go `byte` maps to Swift `UInt8`.
public typealias byte = UInt8

// MARK: - Polymorphic (interface) coding helpers

/// Encodes a polymorphic value (a Swift existential holding one of several known
/// concrete types) as a discriminator + payload pair. The concrete type is
/// recovered at runtime by trying each registered conformer.
public func encodePolymorphic<Key: CodingKey, T: Encodable>(
    _ value: T,
    discriminator: String,
    container: inout KeyedEncodingContainer<Key>,
    payloadKey: Key,
    discriminatorKey: Key
) throws {
    try container.encode(discriminator, forKey: discriminatorKey)
    try container.encode(value, forKey: payloadKey)
}

/// Decodes a polymorphic value from a discriminator + payload pair, dispatching
/// to the concrete type registered for the discriminator value.
public func decodePolymorphic<Key: CodingKey, T: Decodable>(
    from container: KeyedDecodingContainer<Key>,
    payloadKey: Key,
    discriminatorKey: Key,
    registry: [String: T.Type]
) throws -> T {
    let discriminator = try container.decodeIfPresent(String.self, forKey: discriminatorKey) ?? ""
    guard let type = registry[discriminator] else {
        throw DecodingError.keyNotFound(
            discriminatorKey,
            DecodingError.Context(codingPath: container.codingPath, debugDescription: "Unknown polymorphic discriminator: \(discriminator)")
        )
    }
    return try container.decode(type, forKey: payloadKey)
}
/// A `CodingKey` that accepts any string key, for dynamic-key containers.
public struct AnyCodingKey: CodingKey, Hashable {
    public var stringValue: String
    public var intValue: Int?

    public init?(stringValue: String) {
        self.stringValue = stringValue
        self.intValue = nil
    }

    public init?(intValue: Int) {
        self.stringValue = "\(intValue)"
        self.intValue = intValue
    }

    public static func key(_ value: String) -> AnyCodingKey {
        AnyCodingKey(stringValue: value)!
    }
}
