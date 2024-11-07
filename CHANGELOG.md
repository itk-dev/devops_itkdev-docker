# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Updated to PHP 8.3

### Added

- Added `serversTransport.insecureSkipVerifyAdded` in Trafik config (cf.
  <https://doc.traefik.io/traefik/routing/services/#insecureskipverify>).

### Removed

- Removed `nfs` volume usage for better MacOS Ventura compatibility

## [2.0.0] - 2020-11-18

### Changed

- Switch to NFS mounts

## [1.0.0]
