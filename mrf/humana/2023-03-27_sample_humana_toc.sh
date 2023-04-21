#!/bin/bash
count=0
download() {
  count=$((count+1))
  wget -q -O $1 "https://developers.humana.com/syntheticdata/Resource/DownloadTOCFile?fileName=$1"
}

download 2023-03-27_1000th-man-enterprises-ga-humana-npos-lfp-19-copay-rx_index.json.gz
download 2023-03-27_10-rivers-llc-ga-humana-npos-lfp-19-copay-rx_index.json.gz
download 2023-03-27_120-85-llc-co-humana-npos-lfp-19-simplici_index.json.gz
download 2023-03-27_121234-lc-tx-humana-npos-22-lfp-copay_index.json.gz
download 2023-03-27_1244-ocean-drive-llc-fl-humana-hmo-lfp-19-canopy-rx_index.json.gz
download 2023-03-27_1244-ocean-drive-llc-fl-humana-npos-lfp-19-copay-rx_index.json.gz
download 2023-03-27_125-management-llc-fl-humana-hmo-lfp-19-simplicit_index.json.gz
download 2023-03-27_125-management-llc-fl-humana-npos-lfp-19-simplici_index.json.gz
download 2023-03-27_12-oaks-parking-llc-ga-humana-npos-lfp-19-copay-rx_index.json.gz
download 2023-03-27_12-oaks-parking-llc-ga-humana-npos-lfp-19-ehdhp_index.json.gz
