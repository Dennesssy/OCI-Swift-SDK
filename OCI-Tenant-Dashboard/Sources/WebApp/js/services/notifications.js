/**
 * Notifications & Alerts Service Module
 * Handles OCI Notifications (ONS), Alarms, and Events
 */

const NotificationsService = {
    // Notifications (ONS)
    async listTopics(compartmentId) {
        try {
            const response = await OCIBridge.call('ons', 'listTopics', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list topics:', error);
            return [];
        }
    },
    
    async createTopic(config) {
        try {
            const response = await OCIBridge.call('ons', 'createTopic', config);
            return response;
        } catch (error) {
            console.error('Failed to create topic:', error);
            throw error;
        }
    },
    
    async deleteTopic(topicId) {
        try {
            await OCIBridge.call('ons', 'deleteTopic', { topicId });
            return true;
        } catch (error) {
            console.error('Failed to delete topic:', error);
            throw error;
        }
    },
    
    async listSubscriptions(topicId) {
        try {
            const response = await OCIBridge.call('ons', 'listSubscriptions', { topicId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list subscriptions:', error);
            return [];
        }
    },
    
    async createSubscription(config) {
        try {
            const response = await OCIBridge.call('ons', 'createSubscription', config);
            return response;
        } catch (error) {
            console.error('Failed to create subscription:', error);
            throw error;
        }
    },
    
    async deleteSubscription(subscriptionId) {
        try {
            await OCIBridge.call('ons', 'deleteSubscription', { subscriptionId });
            return true;
        } catch (error) {
            console.error('Failed to delete subscription:', error);
            throw error;
        }
    },
    
    // Alarms (Monitoring)
    async listAlarms(compartmentId) {
        try {
            const response = await OCIBridge.call('monitoring', 'listAlarms', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list alarms:', error);
            return [];
        }
    },
    
    async getAlarm(alarmId) {
        try {
            const response = await OCIBridge.call('monitoring', 'getAlarm', { alarmId });
            return response;
        } catch (error) {
            console.error('Failed to get alarm:', error);
            throw error;
        }
    },
    
    async createAlarm(config) {
        try {
            const response = await OCIBridge.call('monitoring', 'createAlarm', config);
            return response;
        } catch (error) {
            console.error('Failed to create alarm:', error);
            throw error;
        }
    },
    
    async updateAlarm(alarmId, config) {
        try {
            const response = await OCIBridge.call('monitoring', 'updateAlarm', {
                alarmId,
                ...config
            });
            return response;
        } catch (error) {
            console.error('Failed to update alarm:', error);
            throw error;
        }
    },
    
    async deleteAlarm(alarmId) {
        try {
            await OCIBridge.call('monitoring', 'deleteAlarm', { alarmId });
            return true;
        } catch (error) {
            console.error('Failed to delete alarm:', error);
            throw error;
        }
    },
    
    async getAlarmHistory(alarmId, startTime, endTime) {
        try {
            const response = await OCIBridge.call('monitoring', 'getAlarmHistory', {
                alarmId,
                startTime,
                endTime
            });
            return response.items || [];
        } catch (error) {
            console.error('Failed to get alarm history:', error);
            return [];
        }
    },
    
    async listAlarmStatus(compartmentId) {
        try {
            const response = await OCIBridge.call('monitoring', 'listAlarmStatus', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list alarm status:', error);
            return [];
        }
    },
    
    // Events
    async listRules(compartmentId) {
        try {
            const response = await OCIBridge.call('events', 'listRules', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list event rules:', error);
            return [];
        }
    },
    
    async createRule(config) {
        try {
            const response = await OCIBridge.call('events', 'createRule', config);
            return response;
        } catch (error) {
            console.error('Failed to create event rule:', error);
            throw error;
        }
    },
    
    async deleteRule(ruleId) {
        try {
            await OCIBridge.call('events', 'deleteRule', { ruleId });
            return true;
        } catch (error) {
            console.error('Failed to delete event rule:', error);
            throw error;
        }
    },
    
    // Status Checks
    async getServiceStatus(serviceName) {
        try {
            const response = await OCIBridge.call('healthchecks', 'listHttpMonitors', {});
            return response.items || [];
        } catch (error) {
            console.error('Failed to get service status:', error);
            return [];
        }
    },
    
    // Helper methods
    getAlarmSeverityColor(severity) {
        const colors = {
            'CRITICAL': 'var(--status-critical)',
            'WARNING': 'var(--status-warning)',
            'INFO': 'var(--status-info)',
            'OK': 'var(--status-healthy)'
        };
        return colors[severity] || 'var(--text-secondary)';
    },
    
    formatAlarmStatus(status) {
        const statuses = {
            'FIRING': '🔥 FIRING',
            'OK': '✓ OK',
            'PENDING': '⏳ PENDING'
        };
        return statuses[status] || status;
    },
    
    getSubscriptionProtocolIcon(protocol) {
        const icons = {
            'EMAIL': '✉️',
            'SMS': '📱',
            'SLACK': '💬',
            'PAGER_DUTY': '🚨',
            'OCI_FUNCTIONS': '⚡',
            'OCI_STREAMS': '📊'
        };
        return icons[protocol] || '📢';
    }
};

window.NotificationsService = NotificationsService;
