nodes=(      
      {
        "node_name": "gNB-101",
        "region": "Bangalore",
        "technology": "5G",
        "vendor": "Nokia"
      },
      {
        "node_name": "gNB-102",
        "region": "Mumbai",
        "technology": "5G",
        "vendor": "Ericsson"
      },
      {
        "node_name": "DU-201",
        "region": "Hyderabad",
        "technology": "4G",
        "vendor": "Samsung"
      },
      {
        "node_name": "CU-301",
        "region": "Chennai",
        "technology": "5G",
        "vendor": "Huawei"
      },
      {
        "node_name": "ORAN-RU-11",
        "region": "Pune",
        "technology": "O-RAN",
        "vendor": "Nokia"
      },
      {
        "node_name": "EDGE-NODE-01",
        "region": "Delhi",
        "technology": "Edge",
        "vendor": "Cisco"
      },
      {
        "node_name": "AMF-01",
        "region": "Bangalore",
        "technology": "5G Core",
        "vendor": "Ericsson"
      },
      {
        "node_name": "SMF-01",
        "region": "Mumbai",
        "technology": "5G Core",
        "vendor": "Nokia"
      },
      {
        "node_name": "UPF-01",
        "region": "Delhi",
        "technology": "5G Core",
        "vendor": "Cisco"
      }
      )

      alarms=(
      {
        "alarm_type": "CPU_HIGH",
        "severity": "MAJOR",
        "message": "CPU utilization exceeded 85%"
      },
      {
        "alarm_type": "MEMORY_HIGH",
        "severity": "MAJOR",
        "message": "Memory utilization exceeded threshold"
      },
      {
        "alarm_type": "DISK_HIGH",
        "severity": "MINOR",
        "message": "Disk usage exceeded 80%"
      },
      {
        "alarm_type": "PROCESS_CRASH",
        "severity": "CRITICAL",
        "message": "Critical process terminated unexpectedly"
      },
      {
        "alarm_type": "SERVICE_DOWN",
        "severity": "CRITICAL",
        "message": "Telecom service unavailable"
      },
      {
        "alarm_type": "LINK_DOWN",
        "severity": "CRITICAL",
        "message": "Backhaul connectivity lost"
      },
      {
        "alarm_type": "PACKET_DROP",
        "severity": "MAJOR",
        "message": "Packet drop rate exceeded threshold"
      },
      {
        "alarm_type": "LATENCY_HIGH",
        "severity": "MAJOR",
        "message": "Network latency above acceptable limit"
      },
      {
        "alarm_type": "INTERFACE_DOWN",
        "severity": "CRITICAL",
        "message": "Ethernet interface is down"
      },
      {
        "alarm_type": "SIGNAL_LOSS",
        "severity": "MAJOR",
        "message": "Signal quality degraded"
      },
      {
        "alarm_type": "POD_CRASHLOOP",
        "severity": "CRITICAL",
        "message": "Pod entered CrashLoopBackOff state"
      },
      {
        "alarm_type": "POD_RESTART",
        "severity": "WARNING",
        "message": "Pod restarted multiple times"
      },
      {
        "alarm_type": "CONTAINER_EXIT",
        "severity": "MAJOR",
        "message": "Container exited unexpectedly"
      },
      {
        "alarm_type": "NODE_NOT_READY",
        "severity": "CRITICAL",
        "message": "Kubernetes node not ready"
      },
      {
        "alarm_type": "IMAGE_PULL_FAIL",
        "severity": "MAJOR",
        "message": "Failed to pull container image"
      },
      {
        "alarm_type": "UE_ATTACH_FAIL",
        "severity": "MAJOR",
        "message": "UE attach procedure failed"
      },
      {
        "alarm_type": "RRC_SETUP_FAIL",
        "severity": "MAJOR",
        "message": "RRC setup failure detected"
      },
      {
        "alarm_type": "HANDOVER_FAIL",
        "severity": "MAJOR",
        "message": "Inter-cell handover failure"
      },
      {
        "alarm_type": "PRB_UTIL_HIGH",
        "severity": "WARNING",
        "message": "PRB utilization exceeded threshold"
      },
      {
        "alarm_type": "CELL_DOWN",
        "severity": "CRITICAL",
        "message": "Cell is unreachable"
      }
   )

   declare -A nodes
   declare -A alarms

   random_node_index= $((RANDOM % 9))
   random_alarm_index=$((RANDOM % 21))

   random_node=${nodes[$random_node_index]}
   random_alarm=${nodes[$random_alarm_index]}

   declare -A alarmsData

   alarmsData[node_name]="$random_node[node_name] $random_node[region] $random_node[technology] $random_node[vendor]"
   alarmsData[alarm_type]=$random_alarm[alarm_type]
   alarmsData[severity]=$random_alarm[severity]
   alarmsData[message]=$random_alarm[message]
   alarmsData[status]='Active'
   alarmsData[created_at]=$(date +%Y%m%d_%H%M%S)



