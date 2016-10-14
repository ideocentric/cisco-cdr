# cisco-cdr
Cisco CDR Processing for logstash

This collection contains the necessary items to configure the parsing of Cisco Call Manager CDR output in a fashion that can be stored and searched in Elastic Search.

The Call Manager can be scheduled to deposit via SFTP or FTP to a remote server.  This implementation uses PureFTPd, primary for it’s ability to execute a script upon upload.  The script in this case is cisco-log stored in /usr/local/bin.  The script removes the header line and writes line by line via the logger to a designated log file.

Logstash follows this log file and performs a translation on the various fields and commits to Elastic Search. Included are the YAML files used by the Logstash dictionary plugin. These YAML files essentially map the integer index to the the text values they represent.  Additional Logstash configuration files are included to watch the log, filter the content as well as the ability to enable the files via stdout.

Hopefully this will be of some use to others.
