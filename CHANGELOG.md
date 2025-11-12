# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased] - 2025-11-12

### Added
- **Extensive Script Compatibility System**: Added support for multiple popular scripts
  - Vehicle Keys: wasabi_carlock, qb-vehiclekeys, qbx_vehiclekeys, Renewed-VehicleKeys, cd_garage, qs-vehiclekeys, and custom
  - Fuel Systems: ox_fuel, LegacyFuel, ps-fuel, okokFuel, cdn-fuel, nd_fuel, and custom
  - Notifications: stevo_lib, ox_lib, qb-core, esx, mythic_notify, okokNotify, and custom
  - Text UI: ox_lib, qb-core, esx, okokTextUI, cd_drawtextui, and custom
  - Progress Systems: ox_lib (circle/bar), qb-core, esx, mythic_progbar, and custom
  
- **Configuration Functions**: Added modular functions in config.lua:
  - `giveVehicleKeys()` - Unified vehicle key giving
  - `removeVehicleKeys()` - Unified vehicle key removal
  - `setVehicleFuel()` - Unified fuel setting
  - `sendNotification()` - Unified notifications
  - `showTextUI()` / `hideTextUI()` - Unified text UI
  - `showProgress()` - Unified progress bars/circles
  
- **Documentation**:
  - Created `CONFIGURATION.md` with detailed setup instructions
  - Added framework-specific configuration examples (QBCore, ESX, QBX)
  - Added troubleshooting section
  - Updated `README.md` with new features
  - Added this `CHANGELOG.md`
  
- **Easy Customization**: 
  - All compatibility settings in one place at the top of config.lua
  - Clear comments and structure for adding custom scripts
  - 'custom' option for each system type with placeholder code
  
- **Future-Ready**: 
  - Prepared targetSystem configuration for future target support
  - Modular design makes it easy to add new compatible scripts

### Changed
- Refactored `client.lua` to use configuration functions instead of hardcoded script calls
- Updated all `stevo_lib.Notify()` calls to use `config.sendNotification()`
- Updated all `lib.showTextUI()` / `lib.hideTextUI()` calls to use config functions
- Updated all fuel setting logic to use `config.setVehicleFuel()`
- Removed debug print statements for fuel in favor of unified fuel function
- Deprecated `progressCircle` setting in favor of new `progressSystem` setting

### Fixed
- Fuel now properly sets to 100% on vehicle spawn and repair (using configured fuel system)
- Vehicle keys properly given/removed using configured keys system
- Notifications now work with any configured notification system
- Text UI now works with any configured text UI system
- Progress bars/circles now work with any configured progress system

### Technical Details
- All compatibility logic is now in config.lua for easy maintenance
- Client.lua is cleaner and more maintainable
- Easy to extend with new compatible scripts
- Backward compatible with existing configurations (defaults to original behavior)

---

## [1.0.1] - Previous Version

Initial fork from stevo_jobgarages with basic functionality.
