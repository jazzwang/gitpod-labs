#!/bin/bash
count=0
download() {
  count=$((count+1))
  echo "[${count}] downloading $1"
  wget -q -O $1 "https://developers.humana.com/syntheticdata/Resource/DownloadTOCFile?fileName=$1"
}
mkdir -p toc
(
  cd toc
  download 2023-03-27_drainworks-plumbing-services-tx-humana-npos-lfp-19-copay-rx_index.json.gz
  download 2023-03-27_the-underground-detective-oh-humana-npos-lfp-19-copay-rx_index.json.gz
  download 2023-03-27_li-way-transfer-and-stora-ga-humana-npos-lfp-19-copay-rx_index.json.gz
  download 2023-03-27_horticulture-unlimited--i-az-humana-npos-lfp-19-simplici_index.json.gz
  download 2023-03-27_specialty-adhesive-film-c-in-humana-npos-lfp-19-copay-rx_index.json.gz
  download 2023-03-27_choice-payroll-services-ga-humana-npos-lfp-19-ehdhp_index.json.gz
  download 2023-03-27_duckworth-development-llc-ga-humana-npos-lfp-17-rx4_index.json.gz
  download 2023-03-27_tutton-group-llc-ga-humana-npos-lfp-19-canopy-r_index.json.gz
  download 2023-03-27_national-alliance-fl-humana-npos-lfp-17-rx4_index.json.gz
  download 2023-03-27_ith-llc-az-humana-npos-lfp-17-rx4_index.json.gz
  download 2023-03-27_treadwell-ks-humana-ppo-lfp-19-copay-rx4_index.json.gz
  download 2023-03-27_harrison-hardy-company-fl-humana-hmo-lfp-19-simplicit_index.json.gz
  download 2023-03-27_south-dekalb-towing-ga-humana-hmo-lfp-19-canopy-rx_index.json.gz
  download 2023-03-27_MICHIGAN-STATE-UNIVERSITY_index.json.gz
)
