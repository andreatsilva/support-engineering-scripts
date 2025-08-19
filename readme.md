<<<<<<< HEAD
# Support Engineering Scripts

A collection of scripts for application support, CI/CD monitoring, and automation.  
These scripts are designed to improve reliability, reduce manual work, and speed up troubleshooting.

## Scripts

### 1. Log Monitoring
- `log_monitor/monitor_logs.py`  
Continuously monitors logs for `ERROR` or `Exception` entries and prints alerts.  
*(Can be extended to send Slack/email alerts.)*

### 2. CI/CD Pipeline Tools
- `pipeline_tools/check_pipeline.sh`  
Checks the status of the latest GitLab pipeline using the API.  
- `pipeline_tools/cleanup_artifacts.py`  
Deletes old build artifacts to save disk space.

### 3. Deployment
- `deployment/rollback.sh`  
Rolls back to the last successful deployment in case of failure.

### 4. System Health
- `utils/system_health.sh`  
Quick health check of disk, memory, and CPU usage.

---

## Usage

```bash
# Example: Monitor logs
python3 log_monitor/monitor_logs.py

# Example: Check GitLab pipeline
bash pipeline_tools/check_pipeline.sh

# Example: Clean old artifacts
python3 pipeline_tools/cleanup_artifacts.py

# Example: Rollback deployment
bash deployment/rollback.sh
=======
