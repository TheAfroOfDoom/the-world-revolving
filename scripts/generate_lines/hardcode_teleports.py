# Jordan "TheAfroOfDoom" Williams
# Meant for use formatted file generation given an equation

from os import chdir, getcwd
from math import pi, radians, sin

parameters = {}

def usePreset():

    presets = [
        "1: carousel bullet_diff_0 velocity",
        "2: carousel bullet_diff_1 velocity",
        "3: carousel summoner_diff_0 loc/vel",
        "4: carousel summoner_diff_1 loc/vel"
    ]

    print(presets)
    preset = input("Selection: ")

    # carousel bullet_diff_0 velocity
    if(preset == "1"):    
        
        chdir(getcwd() + "\\carousel")

        parameters["destination_file"] = "bullet_d0_velocity"
        parameters["objective"] = "attack_rad_min"
        parameters["objective_min"] = 0
        parameters["objective_max"] = 39
        parameters["horizontal_speed"] = 1.0
        parameters["wave_amplitude"] = 0.7
        parameters["period_coefficient"] = -1.0
        parameters["wave_offset"] = radians(90)

        modifyParameters()
    
        generateNewFile()

    # carousel bullet_diff_1 velocity
    elif(preset == "2"):    
        
        chdir(getcwd() + "\\carousel")

        parameters["destination_file"] = "bullet_d1_velocity"
        parameters["objective"] = "attack_rad_min"
        parameters["objective_min"] = 0
        parameters["objective_max"] = 39
        parameters["horizontal_speed"] = 1.0
        parameters["wave_amplitude"] = 0.4
        parameters["period_coefficient"] = -1.0
        parameters["wave_offset"] = radians(90)

        modifyParameters()
    
        generateNewFile()

    # carousel summoner_diff_0 velocity
    elif(preset == "3"):    
        
        chdir(getcwd() + "\\carousel")

        parameters["destination_file"] = "summoner_d0_velocity"
        parameters["objective"] = "attack_rad_min"
        parameters["objective_min"] = 0
        parameters["objective_max"] = 39
        parameters["horizontal_speed"] = 0.0
        parameters["wave_amplitude"] = 0.7
        parameters["period_coefficient"] = -1.0
        parameters["wave_offset"] = radians(90)

        modifyParameters()
    
        generateNewFile()

        # summoner_diff_0 location
        parameters["destination_file"] = "summoner_d0_location"
        parameters["objective"] = "attack_rad_min"
        parameters["wave_amplitude"] *= 20 / (pi * parameters["period_coefficient"])
        parameters["period_coefficient"] *= -1.0
        parameters["wave_offset"] += radians(90)
        generateNewFile()

    # carousel summoner_diff_1 velocity
    elif(preset == "4"):    
        
        chdir(getcwd() + "\\carousel")

        parameters["destination_file"] = "summoner_d1_velocity"
        parameters["objective"] = "afro.math_0"
        parameters["objective_min"] = 0
        parameters["objective_max"] = 79
        parameters["horizontal_speed"] = 0.0
        parameters["wave_amplitude"] = 0.7
        parameters["period_coefficient"] = -1.0
        parameters["wave_offset"] = radians(90)
        
        modifyParameters()
    
        generateNewFile()

        # summoner_diff_1 location
        parameters["destination_file"] = "summoner_d1_location"
        parameters["objective"] = "attack_rad_min"
        parameters["wave_amplitude"] *= 20 / (pi * parameters["period_coefficient"])
        parameters["period_coefficient"] *= -1.0
        parameters["wave_offset"] += radians(90)
        generateNewFile()

    else:
        print("Invalid preset\n")

# usePreset()

def modifyParameters():

    print(parameters)
    loop = 1
    while(loop == 1):
        change_parameter = input("Enter the parameter name to change (c to continue): ")

        if(change_parameter.lower() == "c"):
            loop = 0

        elif(change_parameter == "objective"):
            parameters["objective"] = input("Objective to iterate through: ")

        elif(change_parameter == "objective_min"):
            parameters["objective_min"] = int(input("Starting value: "))

        elif(change_parameter == "objective_max"):
            parameters["objective_max"] = int(input("Maximum value: "))

        elif(change_parameter == "horizontal_speed"):
            parameters["horizontal_speed"] = float("{0:.9f}".format(float(input("Horizontal speed: "))))

        elif(change_parameter == "wave_amplitude"):
            parameters["wave_amplitude"] = float(input("Amplitude: "))
        
        elif(change_parameter == "period_coefficient"):
            parameters["period_coefficient"] = float(input("Period coefficient: "))

        elif(change_parameter == "wave_offset"):
            parameters["wave_offset"] = float(input("\tOffset (degrees): "))
            parameters["wave_offset"] = radians(parameters["wave_offset"])

        else:
            print("Invalid parameter")

    print("Final parameters: " + str(parameters))

# modifyParameters()

def generateNewFile():

    new_file = open(parameters["destination_file"] + ".mcfunction", "w+")

    new_file.write("\n")

    for t in range(parameters["objective_min"], parameters["objective_max"] + 1):

        # A*sin(offset + c(t/40)*2*pi())
        z = float("{0:.9f}".format(parameters["wave_amplitude"] * sin(parameters["wave_offset"] + 
                                    parameters["period_coefficient"] * (2 * pi * (t / abs(parameters["objective_max"] - parameters["objective_min"] + 1))))))

        line = ("execute if score @s " + str(parameters["objective"]) + " matches " +
                str(t) + " run teleport @s ~")
        
        if(parameters["horizontal_speed"] > -0.000000001 and parameters["horizontal_speed"] < 0.000000001):
            line = line + " ~ ~" + str(z) + "\n"

        else:
            line = line + str(parameters["horizontal_speed"]) + " ~ ~" + str(z) + "\n"

        new_file.write(line)

    new_file.close()

    print("New file generated: \"" + parameters["destination_file"] + "\"\n")

# generateNewFile()

if __name__ == "__main__":
    
    chdir(getcwd() + "\\outputs")

    use_preset = input("Use preset? (y/n) ") 
    if(use_preset.lower() == "y"):
        usePreset()

    else:               
        parameters["destination_file"] = input("File to write: ")

        parameters["objective"] = input("Objective to iterate through: ")
        # TODO(jordan): Consider having modular step
        parameters["objective_min"] = int(input("Starting value: "))
        parameters["objective_max"] = int(input("Maximum value: "))

        parameters["horizontal_speed"] = float("{0:.9f}".format(float(input("Horizontal speed: "))))

        # A*2*sin(offset + (t/40)*2*pi())
        # Sine parameters
        print("Wave parameters:")
        parameters["wave_amplitude"] = float(input("\tAmplitude: "))
        parameters["period_coefficient"] = float(input("\tPeriod coefficient: "))
        parameters["wave_offset"] = float(input("\tOffset (degrees): "))

        parameters["wave_offset"] = radians(parameters["wave_offset"])

        generateNewFile()

# main()
