--[[
    ╔═══════════════════════════════════════════════════════════╗
    ║              AG JOB GARAGES - CONFIGURATION               ║
    ╠═══════════════════════════════════════════════════════════╣
    ║  Easy configuration for multiple script compatibility     ║
    ║                                                           ║
    ║  📖 Full documentation: See CONFIGURATION.md             ║
    ║                                                           ║
    ║  🔧 To add custom scripts:                               ║
    ║     1. Set the system to 'custom' below                  ║
    ║     2. Scroll down to the function section               ║
    ║     3. Find the 'custom' section in the function         ║
    ║     4. Add your export/event/logic there                 ║
    ║                                                           ║
    ║  💡 Tip: Use CTRL+F to search for "custom" to find       ║
    ║     all the places where you can add your scripts        ║
    ╚═══════════════════════════════════════════════════════════╝
--]]

return {

    -- ====================================
    -- SCRIPT COMPATIBILITY SETTINGS
    -- ====================================
    
    -- Framework
    -- Options: 'auto', 'esx', 'qbcore', 'qbx', 'ox_core', 'custom'
    -- 'auto' will automatically detect your framework
    framework = 'auto',
    
    -- Vehicle Keys System
    -- Options: 'wasabi_carlock', 'qb-vehiclekeys', 'qbx_vehiclekeys', 'Renewed-VehicleKeys', 'cd_garage', 'qs-vehiclekeys', 'custom'
    vehicleKeysSystem = 'wasabi_carlock',
    
    -- Fuel System
    -- Options: 'ox_fuel', 'LegacyFuel', 'ps-fuel', 'okokFuel', 'cdn-fuel', 'nd_fuel', 'custom', 'none'
    fuelSystem = 'ox_fuel',
    
    -- Notification System
    -- Options: 'ox_lib', 'qb-core', 'esx', 'mythic_notify', 'okokNotify', 'custom'
    notifySystem = 'ox_lib',
    
    -- Text UI System
    -- Options: 'ox_lib', 'qb-core', 'esx', 'okokTextUI', 'cd_drawtextui', 'custom'
    textUISystem = 'ox_lib',
    
    -- Progress System
    -- Options: 'ox_lib_circle', 'ox_lib_bar', 'qb-core', 'esx', 'mythic_progbar', 'custom'
    progressSystem = 'ox_lib_circle',
    
    -- Target System (if you want to add target support in the future)
    -- Options: 'ox_target', 'qb-target', 'qtarget', 'interact', 'none'
    targetSystem = 'none',

    -- ====================================
    -- GENERAL SETTINGS
    -- ====================================

    progressCircle = true, -- If lib progressCircle should be used instead of progressBar (DEPRECATED - use progressSystem above)
    openDistance = 3, -- Open distance on foot
    vehicleOpenDistance = 7, -- Open Distance in vehicle
    minimumPlateGrade = 17, -- Minimum grade to change plate
    repairTime = 10, -- Repair Time in seconds

    garages = {
        { -- Police Garages

            groupRequired = 'police', -- Can be a job or gang role
            name = 'LSPD Garage',
            distance = 5,
            plate = 'LSPD '..math.random(000, 999), -- Generated Random Plate like "MRPD 452" or "MRPD 259"

            marker = {
                type = 36,
                size = 1.0,
                r = 0, 
                g = 27, 
                b = 250,
                alpha = 80
            },

            categories = {
                {
                    name = 'LSPD',
                    icon = 'shield-alt',
                    iconColor = '#1372ad',
                    gradeRequired = 0,
                    
                    vehicles = {
                        {model = 'dlpanto', label = 'Panto', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'polbmwm7', label = 'BMW 530', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'polrs6', label = 'Audi RS6', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'polsilverado19', label = 'Ram', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'valor2rb', label = 'Dodge Charger', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'valor4rb', label = 'UNDEFINED', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'valor5rb', label = 'UNDEFINED', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'valor6rb', label = 'UNDEFINED', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'valor7rb', label = 'Chevrolet SUV', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'valor8rb', label = 'UNDEFINED', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'valor9rb', label = 'Supervisor Tahoe', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'valor10rb', label = 'Dodge Durango', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'valor11rb', label = 'Vapid Scout Cruiser', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'valor13rb', label = 'Vapid Scout Crusier (Bullbar)', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'valor14rb', label = 'Patrol Ute', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'valor15rb', label = 'Patrol UTE (Bullbar)', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'onx_polalamo', label = 'TEST', icon = 'circle', iconColor = '#1372ad', mods = {stickers = {id = lspd1, disabled = false}, livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},

                    }
                },
                {
                    name = 'SPECIALIST',
                    icon = 'shield-alt',
                    iconColor = '#00d8fa',
                    gradeRequired = 12,
                    
                    vehicles = {
                        {model = 'sw_bearcat', label = 'TOU Bearcat', icon = 'circle', iconColor = '#00d8fa', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'SWATTRUCKRB', label = 'SRT RIOT', icon = 'circle', iconColor = '#ce0035', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'policegcrb', label = 'Police Buggy', icon = 'circle', iconColor = '#ce0035', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'rookrb', label = 'RIOT RAM', icon = 'circle', iconColor = '#ce0035', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'polcoach', label = 'Riot Bus', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'dlmanch', label = 'Bike 1', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'dlshin', label = 'Bike 2', icon = 'circle', iconColor = '#1372ad', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},


                    }
                },
                {
                    name = 'CID',
                    icon = 'shield-alt',
                    iconColor = '#13830c',
                    gradeRequired = 11,

                    vehicles = {
                        {model = 'gstarg1polng', label = 'UC RS6', icon = 'circle', iconColor = '#13830c', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'gstbhell1b', label = 'UC Bravado', icon = 'circle', iconColor = '#13830c', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'gstbisxl1b', label = 'UC Pickup', icon = 'circle', iconColor = '#13830c', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'gstcdy2polng', label = 'UC Mini-Ute', icon = 'circle', iconColor = '#13830c', mods = {livery = 7, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'gstsh510polng', label = 'UC Lexus', icon = 'circle', iconColor = '#13830c', mods = {livery = 7, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'gsttoros1b', label = 'UC Urus', icon = 'circle', iconColor = '#13830c', mods = {livery = 7, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'gstyxl12polng', label = 'UC Chevy Ute', icon = 'circle', iconColor = '#13830c', mods = {livery = 7, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    }
                },
                {
                    name = 'PURSUIT',
                    icon = 'shield-alt',
                    iconColor = '#FFC300',
                    gradeRequired = 4,

                    vehicles = {
                        {model = 'polmustang', label = 'Mustang', icon = 'circle', iconColor = '#FFC300', mods = {livery = 2, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'ss5rb', label = 'FordGT - COMMAND ONLY', icon = 'circle', iconColor = '#131313', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},

                    }
                },
                {
                    name = 'SWAT',
                    icon = 'shield-alt',
                    iconColor = '#131313',
                    gradeRequired = 12,

                    vehicles = { 
                        {model = 'gurkharb', label = 'SWAT Gurk', icon = 'circle', iconColor = '#131313', mods = {livery = 2, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'sw_charg', label = 'SWAT Charger', icon = 'circle', iconColor = '#131313', mods = {livery = 2, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'sw_durango', label = 'SWAT Durango', icon = 'circle', iconColor = '#131313', mods = {livery = 2, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'sw_sprinter', label = 'SWAT Sprinter', icon = 'circle', iconColor = '#131313', mods = {livery = 2, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'sw_subrb', label = 'SWAT SUB', icon = 'circle', iconColor = '#FFC300', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    }
                },
                {
                    name = 'US MARSHALL',
                    icon = 'shield-alt',
                    iconColor = '#ce0035',
                    gradeRequired = 14,

                    vehicles = {
			{model = 'dltenf2', label = 'Audi R8', icon = 'circle', iconColor = '#ce0035', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'ss1rb', label = 'UC 911', icon = 'circle', iconColor = '#ce0035', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'ss2rb', label = 'UC Ferrari', icon = 'circle', iconColor = '#ce0035', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'ss3rb', label = 'Uc 918', icon = 'circle', iconColor = '#ce0035', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'ss4rb', label = 'UC 720S', icon = 'circle', iconColor = '#ce0035', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                        {model = 'ss5rb', label = 'UC Ford GT', icon = 'circle', iconColor = '#ce0035', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
			{model = 'GL_TRX', label = 'UC TRX', icon = 'circle', iconColor = '#ce0035', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
			{model = 'SWATTRUCKRB', label = 'SRT RIOT', icon = 'circle', iconColor = '#ce0035', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},

                    }
                },

                                {
                    name = 'COM',
                    icon = 'shield-alt',
                    iconColor = '#dfdfdfff',
                    gradeRequired = 16,
                    
                    vehicles = {
                        {model = 'wildtrakpolice', label = 'Wildtrak', icon = 'circle', iconColor = '#00d8fa', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    }
                },
        
            },

            locations = {
                {menuCoords = vec3(-1109.56, -836.21, 5.06), spawnCoords = vec4(-1097.88, -840.99, 4.75, 308.08), label = 'VPD Lower Garage'},
                {menuCoords = vec3(-1087.42, -807.78, 10.78), spawnCoords = vec4(-1091.08, -817.5, 10.32, 130.86), label = 'VPD Upper Garage'},
                {menuCoords = vector3(-459.22, 6000.29, 31.34), spawnCoords = vector4(-470.74, 6012.15, 31.34, 314.65), label = 'Paleto PD'}, 
                {menuCoords = vec3(1872.17, 3691.27, 33.59), spawnCoords = vec4(1872.17, 3691.27, 33.59, 210.57), label = 'Sandy PD'}, 
                {menuCoords = vec3(-745.87, -1418.62, 4.92), spawnCoords = vec4(-734.28, -1423.87, 4.55, 326.39), label = 'Vespucci Docks'}, 
             {menuCoords = vec3(-815.32, -1203.84, 6.94), spawnCoords = vec4(-815.32, -1203.84, 6.94, 135.69), label = 'PD Vespucci Hospital Garage'}, 
                {menuCoords = vec3(-497.33, -335.98, 34.5), spawnCoords = vec4(-491.32, -342.5, 34.37, 264.54), label = 'PD Hospital Garage'}, 
            }
        },















        { -- Ambulance Garages

        groupRequired = 'ambulance', -- Can be a job or gang role
        name = 'SAES Garage',
        distance = 5,
        plate = 'SAES '..math.random(000, 999), -- Generated Random Plate like "MRPD 452" or "MRPD 259"

        marker = {
            type = 36,
            size = 1.5,
    r = 0,
    g = 255,
    b = 0,
            alpha = 80
        },

        categories = {
            {
                name = 'Student Paramedics',
                icon = 'star-of-life',
                iconColor = '#ff0000ff',
                gradeRequired = 0,
                
                vehicles = {
                    {model = 'av5', label = 'Toyota 4WD', icon = 'circle', iconColor = '#ff0000ff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'av4', label = 'Sprinter', icon = 'circle', iconColor = '#ff0000ff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                }
            },
            {
                name = 'Paramedics',
                icon = 'star-of-life',
                iconColor = '#970000ff',
                gradeRequired = 1,
                
                vehicles = {
                    {model = 'emslandcruiser', label = 'EMS Landcruiser', icon = 'circle', iconColor = '#ad0000ff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'emskiastinger', label = 'EMS Stinger', icon = 'circle', iconColor = '#ad0000ff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'nswascol', label = 'EMS Colorado', icon = 'circle', iconColor = '#ad0000ff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'answ_rav4', label = 'EMS RAV4', icon = 'circle', iconColor = '#ad0000ff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'avbike', label = 'EMS Bike', icon = 'circle', iconColor = '#ad0000ff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'answ_iload', label = 'EMS iLoad', icon = 'circle', iconColor = '#ad0000ff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'answ_ranger', label = 'EMS Ranger', icon = 'circle', iconColor = '#ad0000ff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'policegcrb', label = 'EMS Caddy', icon = 'circle', iconColor = '#ad0000ff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'answ_1200rt', label = 'EMS 1200RT', icon = 'circle', iconColor = '#ad0000ff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'answ_sprinter19b', label = 'EMS Sprinter', icon = 'circle', iconColor = '#ad0000ff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                }
            },
            {
                name = 'Special Operations',
                icon = 'star-of-life',
                iconColor = '#ffd000ff',
                gradeRequired = 2,
                
                vehicles = {
                    {model = 'swatbrickade', label = 'EMS Brickade', icon = 'circle', iconColor = '#ffd20bff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'answgx ', label = 'EMS GX', icon = 'circle', iconColor = '#ffd20bff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},

                }
            },
            {
                name = 'Management',
                icon = 'star-of-life',
                iconColor = '#00ff4cff',
                gradeRequired = 4,

                vehicles = {
                    {model = 'emsbmw', label = 'EMS Management BMW', icon = 'circle', iconColor = '#00ff62ff', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'sor21AV', label = 'EMS Sorento SUV', icon = 'circle', iconColor = '#00ff62ff', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'answ_rs6', label = 'EMS RS6', icon = 'circle', iconColor = '#00ff62ff', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'answ_m5', label = 'EMS M5', icon = 'circle', iconColor = '#00ff62ff', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},

                }
            }
            
        },

        locations = {
            {menuCoords = vec3(-672.91, 351.54, 77.52), spawnCoords = vec4(-672.41, 346.79, 77.52, 82.88), label = 'Eclipse Hospital'},
            {menuCoords = vec3(1829.14, 3657.44, 34.05), spawnCoords = vec4(1829.14, 3657.44, 34.05, 218.42), label = 'Sandy Hospital'},
            {menuCoords = vec3(-847.78, -1242.31, 6.91), spawnCoords = vec4(-850.7, -1239.24, 6.91, 318.31), label = 'Vespucci Hospital'},
        }
    },


    
        { -- NRMA Garage

        groupRequired = 'nrma', -- Can be a job or gang role
        name = 'NRMA Service Vehicles',
        distance = 5,
        plate = 'NRMA '..math.random(000, 999), -- Generated Random Plate like "MRPD 452" or "MRPD 259"

        marker = {
            type = 36,
            size = 1.5,
    r = 0,
    g = 255,
    b = 0,
            alpha = 80
        },

        categories = {
            {
                name = 'NRMA',
                icon = 'car',
                iconColor = '#2b27ffff',
                gradeRequired = 0,
                
                vehicles = {
                    {model = 'nrma1', label = 'NRMA Flatbed 4 seat', icon = 'circle', iconColor = '#2b27ffff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'nrma2', label = 'NRMA Flatbed 2 seat', icon = 'circle', iconColor = '#2b27ffff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'nrma3', label = 'NRMA Transport Van', icon = 'circle', iconColor = '#2b27ffff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'nrma4', label = 'NRMA Roadside Assistance Van', icon = 'circle', iconColor = '#2b27ffff', mods = {livery = 4, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                }
            },
            
        },

        locations = {
            {menuCoords = vec3(1126.59, -792.64, 57.6), spawnCoords = vec4(1121.9, -778.71, 57.75, 357.0), label = 'NRMA Mirror Park'},
        }

    },


        { -- Ray White Garage

        groupRequired = 'realestate', -- Can be a job or gang role
        name = 'Ray White Garage',
        distance = 5,
        plate = 'RAYWHITE '..math.random(000, 999), -- Generated Random Plate like "MRPD 452" or "MRPD 259"

        marker = {
            type = 36,
            size = 1.5,
    r = 0,
    g = 255,
    b = 0,
            alpha = 80
        },

        categories = {
            {
                name = 'RAYWHITE',
                icon = 'car',
                iconColor = '#2b27ffff',
                gradeRequired = 0,
                
                vehicles = {
                    {model = 'w223b50', label = 'Brabus B50', icon = 'circle', iconColor = '#2b27ffff', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'gxg63', label = 'Mercedes G500', icon = 'circle', iconColor = '#2b27ffff', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                }
            },
            
        },

        locations = {
            {menuCoords = vec3(-767.5, 275.02, 85.77), spawnCoords = vec4(-760.18, 277.63, 85.67, 5.93), label = 'Ray White Vinewood'},
        }
    },

        { -- Court House Garage

        groupRequired = 'doj', -- Can be a job or gang role
        name = 'Court House Garage',
        distance = 5,
        plate = 'DOJ  '..math.random(000, 999), -- Generated Random Plate like "MRPD 452" or "MRPD 259"

        marker = {
            type = 36,
            size = 1.5,
    r = 0,
    g = 255,
    b = 0,
            alpha = 80
        },

        categories = {
            {
                name = 'JUDGE',
                icon = 'car',
                iconColor = '#2b27ffff',
                gradeRequired = 3,
                
                vehicles = {
                    {model = 'iyremakerolls', label = 'Rolls Royce', icon = 'circle', iconColor = '#2b27ffff', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                }
            },

            {
                name = 'GOV',
                icon = 'car',
                iconColor = '#2b27ffff',
                gradeRequired = 1,
                
                vehicles = {
                    {model = 'slcksectahoe', label = 'TAHOE', icon = 'circle', iconColor = '#2b27ffff', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                }
            },

            {
                name = 'PUBLIC-LAWYERS',
                icon = 'car',
                iconColor = '#2b27ffff',
                gradeRequired = 0,
                
                vehicles = {
                    {model = 'washington', label = 'Washington', icon = 'circle', iconColor = '#2b27ffff', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},

                }
            },


            {
                name = 'PRIVATE-LAWYERS',
                icon = 'car',
                iconColor = '#2b27ffff',
                gradeRequired = 0,
                
                vehicles = {
                    {model = 'w223b50', label = 'Brabus B50', icon = 'circle', iconColor = '#2b27ffff', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},
                    {model = 'gxg63', label = 'Mercedes G500', icon = 'circle', iconColor = '#2b27ffff', mods = {livery = 1, extras = {{id = 1, disabled = false}, {id = 2, disabled = true}}}},

                }
            },

	
            
        },

        locations = {
            {menuCoords = vec3(213.92, -440.71, 36.24), spawnCoords = vec4(212.29, -449.58, 36.24, 154.72), label = 'Court House'},
        }
    },



    },




    -- ====================================
    -- CUSTOM INTEGRATION FUNCTIONS
    -- ====================================

    -- Detect Framework (Auto-detection)
    -- Returns: 'esx', 'qbcore', 'qbx', 'ox_core', or nil
    detectFramework = function()
        if config.framework ~= 'auto' then
            return config.framework
        end
        
        -- Check for QBX first (it has QBCore global too)
        if GetResourceState('qbx_core') == 'started' then
            return 'qbx'
        end
        
        -- Check for QBCore
        if GetResourceState('qb-core') == 'started' then
            return 'qbcore'
        end
        
        -- Check for ESX
        if GetResourceState('es_extended') == 'started' then
            return 'esx'
        end
        
        -- Check for OX Core
        if GetResourceState('ox_core') == 'started' then
            return 'ox_core'
        end
        
        return nil
    end,

    -- Get Player Job Information
    -- Returns: { name = 'police', grade = 5, isJob = true } or { name = 'ballas', grade = 2, isJob = false }
    getPlayerJob = function()
        local framework = config.detectFramework()
        
        if framework == 'esx' then
            local ESX = exports['es_extended']:getSharedObject()
            local playerData = ESX.GetPlayerData()
            
            -- Check job first
            if playerData.job and playerData.job.name then
                return {
                    name = playerData.job.name,
                    grade = playerData.job.grade or 0,
                    isJob = true
                }
            end
            
            -- ESX doesn't have gangs by default, but some servers add it
            if playerData.gang and playerData.gang.name then
                return {
                    name = playerData.gang.name,
                    grade = playerData.gang.grade or 0,
                    isJob = false
                }
            end
            
        elseif framework == 'qbcore' then
            local QBCore = exports['qb-core']:GetCoreObject()
            local playerData = QBCore.Functions.GetPlayerData()
            
            -- Check job
            if playerData.job and playerData.job.name then
                return {
                    name = playerData.job.name,
                    grade = playerData.job.grade.level or 0,
                    isJob = true
                }
            end
            
            -- Check gang
            if playerData.gang and playerData.gang.name then
                return {
                    name = playerData.gang.name,
                    grade = playerData.gang.grade.level or 0,
                    isJob = false
                }
            end
            
        elseif framework == 'qbx' then
            local player = exports.qbx_core:GetPlayerData()
            
            -- Check job
            if player.job and player.job.name then
                return {
                    name = player.job.name,
                    grade = player.job.grade.level or 0,
                    isJob = true
                }
            end
            
            -- Check gang
            if player.gang and player.gang.name then
                return {
                    name = player.gang.name,
                    grade = player.gang.grade.level or 0,
                    isJob = false
                }
            end
            
        elseif framework == 'ox_core' then
            local player = Ox.GetPlayer()
            
            if player then
                local groups = player.getGroups()
                -- OX Core uses groups, find the highest grade group
                for groupName, groupGrade in pairs(groups) do
                    return {
                        name = groupName,
                        grade = groupGrade,
                        isJob = true
                    }
                end
            end
            
        elseif framework == 'custom' then
            -- Add your custom framework logic here
            -- Example:
            -- local MyFramework = exports['my_framework']:GetCore()
            -- local playerData = MyFramework.GetPlayerData()
            -- return {
            --     name = playerData.job.name,
            --     grade = playerData.job.grade,
            --     isJob = true
            -- }
        end
        
        -- Default fallback
        return {
            name = 'unemployed',
            grade = 0,
            isJob = true
        }
    end,

    -- Give Vehicle Keys Function
    -- Automatically uses the system specified in vehicleKeysSystem
    -- Add your custom key system here if using 'custom'
    giveVehicleKeys = function(entity, plate)
        local system = config.vehicleKeysSystem
        
        if system == 'wasabi_carlock' then
            exports.wasabi_carlock:GiveKey(plate)
            
        elseif system == 'qb-vehiclekeys' or system == 'qbx_vehiclekeys' then
            TriggerEvent("vehiclekeys:client:SetOwner", plate)
            
        elseif system == 'Renewed-VehicleKeys' then
            exports['Renewed-VehicleKeys']:GiveVehicleKey(plate)
            
        elseif system == 'cd_garage' then
            TriggerEvent('cd_garage:AddKeys', plate)
            
        elseif system == 'qs-vehiclekeys' then
            exports['qs-vehiclekeys']:GiveKeys(plate)
            
        elseif system == 'custom' then
            -- Add your custom vehicle keys give logic here
            -- Example:
            -- exports['your_keys_script']:GiveKey(plate)
            
        end
    end,

    -- Remove Vehicle Keys Function
    -- Automatically uses the system specified in vehicleKeysSystem
    -- Add your custom key system here if using 'custom'
    removeVehicleKeys = function(entity, plate)
        local system = config.vehicleKeysSystem
        
        if system == 'wasabi_carlock' then
            exports.wasabi_carlock:RemoveKey(plate)
            
        elseif system == 'qb-vehiclekeys' or system == 'qbx_vehiclekeys' then
            TriggerEvent("vehiclekeys:client:RemoveOwner", plate)
            
        elseif system == 'Renewed-VehicleKeys' then
            exports['Renewed-VehicleKeys']:RemoveVehicleKey(plate)
            
        elseif system == 'cd_garage' then
            TriggerEvent('cd_garage:RemoveKeys', plate)
            
        elseif system == 'qs-vehiclekeys' then
            exports['qs-vehiclekeys']:RemoveKeys(plate)
            
        elseif system == 'custom' then
            -- Add your custom vehicle keys remove logic here
            -- Example:
            -- exports['your_keys_script']:RemoveKey(plate)
            
        end
    end,

    -- Set Vehicle Fuel Function
    -- Automatically uses the system specified in fuelSystem
    -- Add your custom fuel system here if using 'custom'
    setVehicleFuel = function(vehicle, amount)
        local system = config.fuelSystem
        
        if system == 'ox_fuel' then
            -- ox_fuel uses statebag API
            if Entity and type(Entity) == 'function' then
                Entity(vehicle).state.fuel = amount
            end
            
        elseif system == 'LegacyFuel' then
            exports['LegacyFuel']:SetFuel(vehicle, amount)
            
        elseif system == 'ps-fuel' then
            exports['ps-fuel']:SetFuel(vehicle, amount)
            
        elseif system == 'okokFuel' then
            exports['okokFuel']:SetFuel(vehicle, amount)
            
        elseif system == 'cdn-fuel' then
            exports['cdn-fuel']:SetFuel(vehicle, amount)
            
        elseif system == 'nd_fuel' then
            exports['nd_fuel']:SetFuel(vehicle, amount)
            
        elseif system == 'custom' then
            -- Add your custom fuel system logic here
            -- Example:
            -- exports['your_fuel_script']:SetFuel(vehicle, amount)
            
        elseif system == 'none' then
            -- No fuel system integration
            SetVehicleFuelLevel(vehicle, amount)
        end
    end,

    -- Send Notification Function
    -- Automatically uses the system specified in notifySystem
    -- Add your custom notification system here if using 'custom'
    sendNotification = function(message, type, duration)
        local system = config.notifySystem
        
        if system == 'ox_lib' then
            lib.notify({
                title = 'Garage',
                description = message,
                type = type,
                duration = duration
            })
            
        elseif system == 'qb-core' then
            TriggerEvent('QBCore:Notify', message, type, duration)
            
        elseif system == 'esx' then
            TriggerEvent('esx:showNotification', message)
            
        elseif system == 'mythic_notify' then
            exports['mythic_notify']:DoHudText(type, message)
            
        elseif system == 'okokNotify' then
            exports['okokNotify']:Alert('Garage', message, duration, type)
            
        elseif system == 'custom' then
            -- Add your custom notification system logic here
            -- Example:
            -- exports['your_notify_script']:ShowNotification(message, type)
            
        end
    end,

    -- Show Text UI Function
    -- Automatically uses the system specified in textUISystem
    -- Add your custom text UI system here if using 'custom'
    showTextUI = function(text, icon)
        local system = config.textUISystem
        
        if system == 'ox_lib' then
            lib.showTextUI(text, {
                position = 'left-center',
                icon = icon or 'car',
                style = {
                    borderRadius = 8,
                    backgroundColor = '#0f1117',
                    color = '#ffffff',
                    borderColor = '#18baf5'
                }
            })
            
        elseif system == 'qb-core' then
            exports['qb-core']:DrawText(text, 'left')
            
        elseif system == 'esx' then
            TriggerEvent('esx:showHelpNotification', text)
            
        elseif system == 'okokTextUI' then
            exports['okokTextUI']:Open(text, 'darkblue', 'left')
            
        elseif system == 'cd_drawtextui' then
            exports['cd_drawtextui']:ShowUI('show', text)
            
        elseif system == 'custom' then
            -- Add your custom text UI system logic here
            -- Example:
            -- exports['your_textui_script']:Show(text)
            
        end
    end,

    -- Hide Text UI Function
    -- Automatically uses the system specified in textUISystem
    hideTextUI = function()
        local system = config.textUISystem
        
        if system == 'ox_lib' then
            lib.hideTextUI()
            
        elseif system == 'qb-core' then
            exports['qb-core']:HideText()
            
        elseif system == 'esx' then
            TriggerEvent('esx:hideHelpNotification')
            
        elseif system == 'okokTextUI' then
            exports['okokTextUI']:Close()
            
        elseif system == 'cd_drawtextui' then
            exports['cd_drawtextui']:HideUI()
            
        elseif system == 'custom' then
            -- Add your custom text UI hide logic here
            -- Example:
            -- exports['your_textui_script']:Hide()
            
        end
    end,

    -- Progress Bar/Circle Function
    -- Automatically uses the system specified in progressSystem
    -- Returns true if completed, false if cancelled
    showProgress = function(data)
        local system = config.progressSystem
        
        if system == 'ox_lib_circle' then
            return lib.progressCircle(data)
            
        elseif system == 'ox_lib_bar' then
            return lib.progressBar(data)
            
        elseif system == 'qb-core' then
            local finished = false
            QBCore.Functions.Progressbar(data.label or 'progress', data.label or 'Loading...', data.duration or 5000, false, true, {
                disableMovement = data.disable and data.disable.move or false,
                disableCarMovement = data.disable and data.disable.car or false,
                disableMouse = data.disable and data.disable.mouse or false,
                disableCombat = data.disable and data.disable.combat or false,
            }, {}, {}, {}, function()
                finished = true
            end, function()
                finished = false
            end)
            Wait(data.duration or 5000)
            return finished
            
        elseif system == 'esx' then
            local finished = false
            TriggerEvent('esx:progressBar', {
                duration = data.duration or 5000,
                label = data.label or 'Loading...',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = data.disable and data.disable.move or false,
                    car = data.disable and data.disable.car or false,
                    mouse = data.disable and data.disable.mouse or false,
                    combat = data.disable and data.disable.combat or false,
                }
            }, function(status)
                finished = not status
            end)
            Wait(data.duration or 5000)
            return finished
            
        elseif system == 'mythic_progbar' then
            local finished = false
            exports['mythic_progbar']:Progress({
                name = data.label or 'progress',
                duration = data.duration or 5000,
                label = data.label or 'Loading...',
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = data.disable and data.disable.move or false,
                    disableCarMovement = data.disable and data.disable.car or false,
                    disableMouse = data.disable and data.disable.mouse or false,
                    disableCombat = data.disable and data.disable.combat or false,
                }
            }, function(status)
                finished = not status
            end)
            Wait(data.duration or 5000)
            return finished
            
        elseif system == 'custom' then
            -- Add your custom progress system logic here
            -- Should return true if completed, false if cancelled
            -- Example:
            -- return exports['your_progress_script']:ShowProgress(data)
            return true
        end
        
        return true
    end,
    
}
