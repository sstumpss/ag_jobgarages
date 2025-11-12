# Configuration Guide

## Script Compatibility Settings

This resource now includes extensive configuration options to make it compatible with various popular scripts and systems. All compatibility settings are located at the top of `config.lua`.

---

## 🔑 Vehicle Keys System

Configure which vehicle keys system you're using:

```lua
vehicleKeysSystem = 'wasabi_carlock'
```

### Supported Options:
- `'wasabi_carlock'` - Wasabi Car Lock
- `'qb-vehiclekeys'` - QB-Core Vehicle Keys
- `'qbx_vehiclekeys'` - QBX Vehicle Keys
- `'Renewed-VehicleKeys'` - Renewed Vehicle Keys
- `'cd_garage'` - CD Garage Keys
- `'qs-vehiclekeys'` - Quasar Vehicle Keys
- `'custom'` - Custom implementation (edit the functions in config.lua)

### Adding Custom Key Systems
If you use a different key system, set `vehicleKeysSystem = 'custom'` and edit the `giveVehicleKeys` and `removeVehicleKeys` functions in `config.lua`:

```lua
elseif system == 'custom' then
    -- Add your custom vehicle keys logic here
    exports['your_keys_script']:GiveKey(plate)
```

---

## ⛽ Fuel System

Configure which fuel system you're using:

```lua
fuelSystem = 'ox_fuel'
```

### Supported Options:
- `'ox_fuel'` - Overextended Fuel (statebag API)
- `'LegacyFuel'` - Legacy Fuel
- `'ps-fuel'` - Project Sloth Fuel
- `'okokFuel'` - okok Fuel
- `'cdn-fuel'` - CDN Fuel
- `'nd_fuel'` - ND Fuel
- `'custom'` - Custom implementation
- `'none'` - No fuel system (uses native SetVehicleFuelLevel)

### Adding Custom Fuel Systems
If you use a different fuel system, set `fuelSystem = 'custom'` and edit the `setVehicleFuel` function in `config.lua`:

```lua
elseif system == 'custom' then
    -- Add your custom fuel system logic here
    exports['your_fuel_script']:SetFuel(vehicle, amount)
```

---

## 📢 Notification System

Configure which notification system you're using:

```lua
notifySystem = 'stevo_lib'
```

### Supported Options:
- `'stevo_lib'` - Stevo Library Notifications (default)
- `'ox_lib'` - Overextended Library Notifications
- `'qb-core'` - QB-Core Notifications
- `'esx'` - ESX Notifications
- `'mythic_notify'` - Mythic Notify
- `'okokNotify'` - okok Notify
- `'custom'` - Custom implementation

### Adding Custom Notification Systems
If you use a different notification system, set `notifySystem = 'custom'` and edit the `sendNotification` function in `config.lua`:

```lua
elseif system == 'custom' then
    -- Add your custom notification system logic here
    exports['your_notify_script']:ShowNotification(message, type)
```

---

## 💬 Text UI System

Configure which text UI system you're using:

```lua
textUISystem = 'ox_lib'
```

### Supported Options:
- `'ox_lib'` - Overextended Library Text UI (default)
- `'qb-core'` - QB-Core DrawText
- `'esx'` - ESX Help Notification
- `'okokTextUI'` - okok Text UI
- `'cd_drawtextui'` - CD DrawText UI
- `'custom'` - Custom implementation

### Adding Custom Text UI Systems
If you use a different text UI system, set `textUISystem = 'custom'` and edit the `showTextUI` and `hideTextUI` functions in `config.lua`:

```lua
elseif system == 'custom' then
    -- Add your custom text UI system logic here
    exports['your_textui_script']:Show(text)
```

---

## ⏳ Progress System

Configure which progress bar/circle system you're using:

```lua
progressSystem = 'ox_lib_circle'
```

### Supported Options:
- `'ox_lib_circle'` - Overextended Library Progress Circle (default)
- `'ox_lib_bar'` - Overextended Library Progress Bar
- `'qb-core'` - QB-Core Progress Bar
- `'esx'` - ESX Progress Bar
- `'mythic_progbar'` - Mythic Progress Bar
- `'custom'` - Custom implementation

### Adding Custom Progress Systems
If you use a different progress system, set `progressSystem = 'custom'` and edit the `showProgress` function in `config.lua`:

```lua
elseif system == 'custom' then
    -- Add your custom progress system logic here
    -- Should return true if completed, false if cancelled
    return exports['your_progress_script']:ShowProgress(data)
```

---

## 🎯 Target System (Future Support)

Currently set to `'none'` but prepared for future implementation:

```lua
targetSystem = 'none'
```

### Supported Options:
- `'ox_target'` - Overextended Target
- `'qb-target'` - QB-Core Target
- `'qtarget'` - qTarget
- `'interact'` - Interact
- `'none'` - No target system (uses markers and distance checks)

---

## 📝 Example Configurations

### QBCore Setup
```lua
vehicleKeysSystem = 'qb-vehiclekeys'
fuelSystem = 'LegacyFuel'
notifySystem = 'qb-core'
textUISystem = 'qb-core'
progressSystem = 'qb-core'
```

### ESX Setup
```lua
vehicleKeysSystem = 'Renewed-VehicleKeys'
fuelSystem = 'LegacyFuel'
notifySystem = 'esx'
textUISystem = 'esx'
progressSystem = 'esx'
```

### QBX Setup
```lua
vehicleKeysSystem = 'qbx_vehiclekeys'
fuelSystem = 'ox_fuel'
notifySystem = 'ox_lib'
textUISystem = 'ox_lib'
progressSystem = 'ox_lib_circle'
```

### Custom Mixed Setup
```lua
vehicleKeysSystem = 'wasabi_carlock'
fuelSystem = 'cdn-fuel'
notifySystem = 'okokNotify'
textUISystem = 'cd_drawtextui'
progressSystem = 'mythic_progbar'
```

---

## 🔧 Troubleshooting

### Vehicle Keys Not Working
1. Make sure your vehicle keys resource is started before `ag_jobgarages`
2. Verify the `vehicleKeysSystem` setting matches your actual resource
3. Check the exports are correct for your version of the keys script

### Fuel Not Setting Correctly
1. Verify your fuel resource is started and working
2. Check the `fuelSystem` setting matches your actual resource
3. Some fuel systems may require additional configuration

### Notifications Not Showing
1. Ensure your notification resource is started
2. Verify the `notifySystem` setting is correct
3. Check browser console (F8) for any errors

### Text UI Not Appearing
1. Make sure your text UI resource is started
2. Verify the `textUISystem` setting is correct
3. Try adjusting the `openDistance` and `vehicleOpenDistance` settings

---

## 🚀 Adding New Compatible Scripts

To add support for a new script:

1. Add a new option to the relevant configuration setting at the top of `config.lua`
2. Find the corresponding function (e.g., `giveVehicleKeys`, `setVehicleFuel`, etc.)
3. Add a new `elseif` condition with your script's export or event
4. Test thoroughly to ensure it works correctly

Example:
```lua
elseif system == 'my_custom_keys' then
    exports['my_custom_keys']:GiveKey(plate)
```

---

## 📞 Support

If you need help configuring compatibility with a specific script that isn't listed here, please create an issue on GitHub with:
- The script name and version
- Export/event information from the script's documentation
- Any error messages you're seeing

This will help us add official support for more scripts!
