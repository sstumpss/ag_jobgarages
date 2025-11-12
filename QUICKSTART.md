# Quick Start Guide

This guide will help you quickly configure ag_jobgarages for your server.

## 🚀 Quick Setup (3 Steps)

### Step 1: Identify Your Scripts
Determine which scripts you're using for:
- Vehicle Keys
- Fuel System
- Notifications

### Step 2: Edit config.lua
Open `config.lua` and change the settings at the top:

```lua
vehicleKeysSystem = 'your-system-here'
fuelSystem = 'your-system-here'
notifySystem = 'your-system-here'
```

### Step 3: Restart Resource
Restart the resource and test!

---

## 📋 Common Server Setups

### QBCore Server
```lua
vehicleKeysSystem = 'qb-vehiclekeys'
fuelSystem = 'LegacyFuel'
notifySystem = 'qb-core'
textUISystem = 'qb-core'
progressSystem = 'qb-core'
```

### QBX Server
```lua
vehicleKeysSystem = 'qbx_vehiclekeys'
fuelSystem = 'ox_fuel'
notifySystem = 'ox_lib'
textUISystem = 'ox_lib'
progressSystem = 'ox_lib_circle'
```

### ESX Server (Modern)
```lua
vehicleKeysSystem = 'Renewed-VehicleKeys'
fuelSystem = 'LegacyFuel'
notifySystem = 'esx'
textUISystem = 'esx'
progressSystem = 'esx'
```

### ESX Server (with OX)
```lua
vehicleKeysSystem = 'Renewed-VehicleKeys'
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

## ❓ How Do I Know Which Scripts I Have?

### Check Your Resources Folder
Look in your `resources` folder for these names:

**Vehicle Keys:**
- `wasabi_carlock` → use `'wasabi_carlock'`
- `qb-vehiclekeys` → use `'qb-vehiclekeys'`
- `qbx_vehiclekeys` → use `'qbx_vehiclekeys'`
- `Renewed-Vehiclekeys` → use `'Renewed-VehicleKeys'`
- `cd_garage` → use `'cd_garage'`
- `qs-vehiclekeys` → use `'qs-vehiclekeys'`

**Fuel:**
- `ox_fuel` → use `'ox_fuel'`
- `LegacyFuel` → use `'LegacyFuel'`
- `ps-fuel` → use `'ps-fuel'`
- `okokFuel` → use `'okokFuel'`
- `cdn-fuel` → use `'cdn-fuel'`
- `nd_fuel` → use `'nd_fuel'`

**Notifications:**
- Using QB-Core? → use `'qb-core'`
- Using ESX? → use `'esx'`
- `mythic_notify` → use `'mythic_notify'`
- `okokNotify` → use `'okokNotify'`
- Using ox_lib? → use `'ox_lib'`
- Using stevo_lib? → use `'stevo_lib'` (default)

---

## 🔧 Testing Your Configuration

After setting up, test these features:

1. **Vehicle Keys**: Spawn a vehicle and check if you can lock/unlock it
2. **Fuel**: Spawn a vehicle and check if fuel is at 100%
3. **Notifications**: Spawn a vehicle and look for success notification
4. **Text UI**: Walk up to a garage marker and look for text prompt
5. **Repair**: Use the mechanic menu to repair a vehicle

---

## ⚠️ Troubleshooting

### Keys Not Working
- Double-check the resource name matches exactly
- Make sure the keys resource starts BEFORE ag_jobgarages
- Check your server console for errors

### Fuel Stuck at 0%
- Verify your fuel resource is started
- Try setting `fuelSystem = 'none'` to use native fuel
- Check if your fuel resource has recent updates

### No Notifications
- Check browser console (F8 in-game) for errors
- Try `notifySystem = 'ox_lib'` as a fallback
- Verify the notification resource is started

### Text UI Not Showing
- Walk closer to the marker (check `openDistance` setting)
- Try `textUISystem = 'ox_lib'` as a fallback
- Check if you have ox_lib installed

---

## 🆘 Need More Help?

1. Read the full [CONFIGURATION.md](CONFIGURATION.md) guide
2. Check the [CHANGELOG.md](CHANGELOG.md) for recent changes
3. Create an issue on GitHub with:
   - Your framework (QBCore/ESX/QBX)
   - Your current config settings
   - The error message (from server console or F8)
   - Steps to reproduce the issue

---

## ✅ Recommended Setup

For the best compatibility and features, we recommend:

```lua
vehicleKeysSystem = 'wasabi_carlock' -- or Renewed-VehicleKeys
fuelSystem = 'ox_fuel'
notifySystem = 'ox_lib'
textUISystem = 'ox_lib'
progressSystem = 'ox_lib_circle'
```

This setup provides:
- Reliable vehicle key management
- Modern fuel system with statebag API
- Clean, modern UI notifications
- Smooth progress animations

---

## 🎯 Next Steps

1. ✅ Configure compatibility settings
2. ✅ Test basic functionality
3. Configure your garages (locations, vehicles, etc.)
4. Set up job grades and permissions
5. Customize markers and colors
6. Add your custom vehicles

Happy configuring! 🚀
