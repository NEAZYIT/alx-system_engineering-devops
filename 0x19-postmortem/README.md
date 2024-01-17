# Postmortem: Web Stack Outage - alx-system_engineering-devops

## Issue Summary

- **Duration:** 
  - Start Time: January 17, 2024, 14:30 UTC
  - End Time: January 17, 2024, 18:45 UTC

- **Impact:**
  - The authentication service was down, resulting in users unable to log in.
  - Approximately 30% of users were affected, leading to a significant service disruption.

- **Root Cause:**
  - A misconfiguration in the load balancer settings caused an unintended blockage of authentication requests.

## Timeline

- **14:30 UTC: Issue Detected**
  - An increase in error rates was observed in the authentication logs.

- **14:45 UTC: Issue Identification**
  - Monitoring alerts triggered for high error rates.
  - Initial investigation assumed database connectivity issues.

- **15:15 UTC: Misleading Investigation Paths**
  - Database connection parameters were checked, but no anomalies were found.
  - Assumed potential DDoS attack due to increased traffic.

- **16:00 UTC: Escalation**
  - Incident escalated to the DevOps and Networking teams.
  - Load balancer configurations were reviewed, but no issues were identified.

- **17:30 UTC: Corrective Actions**
  - Load balancer logs analyzed, revealing a misconfiguration blocking authentication traffic.
  - Load balancer settings adjusted to allow authentication requests.

- **18:45 UTC: Issue Resolved**
  - Authentication service recovered, error rates returned to normal.

## Root Cause and Resolution

- **Root Cause:**
  - The load balancer was misconfigured, blocking legitimate authentication requests.
  - An unintended rule in the load balancer ACL was denying traffic from the authentication service.

- **Resolution:**
  - Load balancer configurations were corrected to allow authentication traffic.
  - Immediate deployment of corrected settings resolved the issue.

## Corrective and Preventative Measures

- **Improvements/Fixes:**
  - Enhance monitoring to detect ACL misconfigurations promptly.
  - Implement automated testing for load balancer configurations.
  - Review and improve incident response procedures for faster escalations.

- **Tasks to Address the Issue:**
  1. **Monitoring Enhancement:**
     - Implement real-time alerting for ACL changes on the load balancer.
     - Set up automated alerts for deviations in authentication service error rates.

  2. **Automated Testing:**
     - Develop and deploy automated tests to validate load balancer configurations.
     - Include periodic checks for unintended blockages in ACLs.

  3. **Incident Response Review:**
     - Conduct a review of incident response procedures to streamline escalations.
     - Update documentation to include specific steps for load balancer-related incidents.

  4. **Communication Protocol:**
     - Establish a communication protocol for informing users during service disruptions.
     - Improve internal communication channels for faster incident response.
