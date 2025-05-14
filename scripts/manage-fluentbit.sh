#!/bin/bash

# Manage Fluent Bit Service
# Usage: ./manage-fluentbit.sh {start|stop|restart|status|log}

case "$1" in
    start)
        sudo systemctl start fluent-bit
        ;;
    stop)
        sudo systemctl stop fluent-bit
        ;;
    restart)
        sudo systemctl restart fluent-bit
        ;;
    status)
        sudo systemctl status fluent-bit
        ;;
    log)
        journalctl -u fluent-bit -f
        ;;
    *)
        echo "Usage: $0 {start|stop|restart|status|log}"
        exit 1
        ;;
esac
