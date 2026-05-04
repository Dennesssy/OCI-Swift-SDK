/**
 * Secrets Management Service Module
 * Handles OCI Vault, Secrets, and Certificates
 */

const SecretsService = {
    // Vault
    async listVaults(compartmentId) {
        try {
            const response = await OCIBridge.call('keymanagement', 'listVaults', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list vaults:', error);
            return [];
        }
    },
    
    async createVault(config) {
        try {
            const response = await OCIBridge.call('keymanagement', 'createVault', config);
            return response;
        } catch (error) {
            console.error('Failed to create vault:', error);
            throw error;
        }
    },
    
    async deleteVault(vaultId) {
        try {
            await OCIBridge.call('keymanagement', 'deleteVault', { vaultId });
            return true;
        } catch (error) {
            console.error('Failed to delete vault:', error);
            throw error;
        }
    },
    
    // Keys
    async listKeys(vaultId) {
        try {
            const response = await OCIBridge.call('keymanagement', 'listKeys', { vaultId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list keys:', error);
            return [];
        }
    },
    
    async createKey(vaultId, config) {
        try {
            const response = await OCIBridge.call('keymanagement', 'createKey', {
                vaultId,
                ...config
            });
            return response;
        } catch (error) {
            console.error('Failed to create key:', error);
            throw error;
        }
    },
    
    async enableKey(keyId) {
        try {
            const response = await OCIBridge.call('keymanagement', 'enableKey', { keyId });
            return response;
        } catch (error) {
            console.error('Failed to enable key:', error);
            throw error;
        }
    },
    
    async disableKey(keyId) {
        try {
            const response = await OCIBridge.call('keymanagement', 'disableKey', { keyId });
            return response;
        } catch (error) {
            console.error('Failed to disable key:', error);
            throw error;
        }
    },
    
    async rotateKey(keyId) {
        try {
            const response = await OCIBridge.call('keymanagement', 'rotateKey', { keyId });
            return response;
        } catch (error) {
            console.error('Failed to rotate key:', error);
            throw error;
        }
    },
    
    // Secrets
    async listSecrets(vaultId) {
        try {
            const response = await OCIBridge.call('vault', 'listSecrets', { vaultId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list secrets:', error);
            return [];
        }
    },
    
    async getSecret(secretId) {
        try {
            const response = await OCIBridge.call('vault', 'getSecret', { secretId });
            return response;
        } catch (error) {
            console.error('Failed to get secret:', error);
            throw error;
        }
    },
    
    async createSecret(vaultId, config) {
        try {
            const response = await OCIBridge.call('vault', 'createSecret', {
                vaultId,
                ...config
            });
            return response;
        } catch (error) {
            console.error('Failed to create secret:', error);
            throw error;
        }
    },
    
    async updateSecret(secretId, config) {
        try {
            const response = await OCIBridge.call('vault', 'updateSecret', {
                secretId,
                ...config
            });
            return response;
        } catch (error) {
            console.error('Failed to update secret:', error);
            throw error;
        }
    },
    
    async deleteSecret(secretId) {
        try {
            await OCIBridge.call('vault', 'deleteSecret', { secretId });
            return true;
        } catch (error) {
            console.error('Failed to delete secret:', error);
            throw error;
        }
    },
    
    async getSecretVersion(secretId, versionNumber) {
        try {
            const response = await OCIBridge.call('vault', 'getSecretVersion', {
                secretId,
                versionNumber
            });
            return response;
        } catch (error) {
            console.error('Failed to get secret version:', error);
            throw error;
        }
    },
    
    // Certificates
    async listCertificates(compartmentId) {
        try {
            const response = await OCIBridge.call('certificatesmanagement', 'listCertificates', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list certificates:', error);
            return [];
        }
    },
    
    async getCertificate(certificateId) {
        try {
            const response = await OCIBridge.call('certificatesmanagement', 'getCertificate', { certificateId });
            return response;
        } catch (error) {
            console.error('Failed to get certificate:', error);
            throw error;
        }
    },
    
    async createCertificate(config) {
        try {
            const response = await OCIBridge.call('certificatesmanagement', 'createCertificate', config);
            return response;
        } catch (error) {
            console.error('Failed to create certificate:', error);
            throw error;
        }
    },
    
    async scheduleCertificateDeletion(certificateId) {
        try {
            await OCIBridge.call('certificatesmanagement', 'scheduleCertificateDeletion', { certificateId });
            return true;
        } catch (error) {
            console.error('Failed to schedule certificate deletion:', error);
            throw error;
        }
    },
    
    // Certificate Authorities
    async listCertificateAuthorities(compartmentId) {
        try {
            const response = await OCIBridge.call('certificatesmanagement', 'listCertificateAuthorities', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list CAs:', error);
            return [];
        }
    },
    
    // Helper methods
    getVaultTypeIcon(type) {
        return type === 'DEFAULT' ? '🏛️' : '🏢';
    },
    
    getKeyAlgorithmName(algorithm) {
        const names = {
            'AES': 'AES (Symmetric)',
            'RSA': 'RSA (Asymmetric)',
            'ECDSA': 'ECDSA (Elliptic Curve)'
        };
        return names[algorithm] || algorithm;
    },
    
    getDaysUntilExpiry(expiryTime) {
        const expiry = new Date(expiryTime);
        const now = new Date();
        const diff = expiry.getTime() - now.getTime();
        return Math.ceil(diff / (1000 * 60 * 60 * 24));
    },
    
    getExpiryColor(days) {
        if (days < 0) return 'var(--status-critical)';
        if (days < 7) return 'var(--status-critical)';
        if (days < 30) return 'var(--status-warning)';
        return 'var(--status-healthy)';
    }
};

window.SecretsService = SecretsService;
