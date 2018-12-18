#!/bin/sh

# FIX: iperf get additional priviledges to write to directories not owned otherwise
chown root:root /logs

#Server or Client:
#  -p, --port      #         server port to listen on/connect to
#  -f, --format   [kmgtKMGT] format to report: Kbits, Mbits, Gbits, Tbits
#  -i, --interval  #         seconds between periodic throughput reports
#  -F, --file name           xmit/recv the specified file
#Server specific:
#  -s, --server              run in server mode
#  -D, --daemon              run the server as a daemon
#  -I, --pidfile file        write PID file
#  -1, --one-off             handle one client connection then exit

/usr/bin/iperf3 $MODE -p $PORT $DAEMON $OPTIONS
