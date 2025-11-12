return {

    progressCircle = true, -- If lib progressCircle should be used instead of progressBar
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




    

    giveVehicleKeys = function(entity, plate)
        -- Wasabi Carlock
        exports.wasabi_carlock:GiveKey(plate)
        
        -- qb/qbx_vehiclekeys
        TriggerEvent("vehiclekeys:client:SetOwner", plate)

        --
    end,

    removeVehicleKeys = function(entity, plate)
        -- Wasabi Carlock
        exports.wasabi_carlock:RemoveKey(plate)
        
        -- qb/qbx_vehiclekeys
        TriggerEvent("vehiclekeys:client:RemoveOwner", plate)
    end,
    
}
