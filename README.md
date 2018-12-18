# iperf-server-container

Quickly starts up a server/client (if desired as daemon) on the specified port.

## Usage

The container defaults to `-s` server on `-p` port 5201.
Environment variables can be overwritten using the `-e` option of the `docker
run` command.

These options are configurable:

| Name          | Default       |
|:--------------|:--------------|
| `MODE`        |          `-s` |
| `PORT`        |         `5201`|
| `DAEMON`      |          `""` |
| `OPTIONS`     |          `""` |

`MODE` allows for server or client mode. `-s, --server` run in server mode. `-c, --client` run in client mode.

`PORT`: server port to listen on/connect to.

`DAEMON`: `-D, --daemon` run the server as a daemon.

`OPTIONS`: `-f, --format` [kmgtKMGT] format to report: Kbits, Mbits, Gbits, Tbits. `-i, --interval` seconds between periodic throughput reports. `-F, --file name` xmit/recv the specified file.
