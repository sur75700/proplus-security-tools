# ProPlus Security Tools

Directory structure:
- scans/     -> Nmap եւ այլ սկանների արդյունքներ (.nmap, .xml, .gnmap)
- tools/     -> Custom scripts (օր. pscan.sh)
- exploits/  -> PoC / exploit code
- wordlists/ -> Custom wordlists
- captures/  -> pcap / WiFi capture files
- scripts/   -> Automation scripts
- docs/      -> Notes, methodology, reports

Usage quick examples:
- pscan example.com      # fast scan, .nmap saved in scans/
- scanweb example.com    # aggressive -A scan directly from alias
- plast                  # show last scan result (.nmap)
