# Jordan "TheAfroOfDoom" Williams
# Count non-whitespace and non-comment lines in a datapack

import math, os, pprint

debug = False

count = {}
commands = ["advancement",
            "bossbar",
            "clear",
            "clone",
            "data",
            "datapack",
            "debug",
            "defaultgamemode",
            "difficulty",
            "effect",
            "enchant",
            "execute",
            "experience",
            "fill",
            "forceload",
            "function",
            "gamemode",
            "gamerule",
            "give",
            "help",
            "kick",
            "kill",
            "list",
            "locate",
            "loot",
            "me",
            "msg",
            "particle",
            "playsound",
            "publish",
            "recipe",
            "reload",
            "replaceitem",
            "say",
            "schedule",
            "scoreboard",
            "seed",
            "setblock",
            "setworldspawn",
            "spawnpoint",
            "spreadplayers",
            "stopsound",
            "summon",
            "tag",
            "team",
            "teammsg",
            "teleport",
            "tell",
            "tellraw",
            "time",
            "title",
            "tm",
            "tp",
            "trigger",
            "w",
            "weather",
            "worldborder",
            "xp"]

def count_commands(filename):

    # If header format is already new format:
    with open(filename) as fxn:
        lines = fxn.readlines()

    # Add to function count
    count["functions"] += 1

    # Iterate through every line
    for line in lines:

        # If the line is not whitespace
        if(not line.isspace()):
            
            # If the line is not a comment
            if(not line[0] == "#"):

                count["characters"] += len(line)

                # Split line by whitespace
                words = line.split()
                first_word = words[0]

                # If the first word matches a command
                if first_word in commands:
                    count[first_word] += 1
                
                # If first word isn't a command, comment, or whitespace
                else:
                    print("Error in file: ")
                    print(filename)
                    print(line)
                    quit()

            # If the line is a comment
            else:
                count["comments"] += 1

# count_commands()

def main():
    
    # Initialize command count
    for command in commands:
        count[command] = 0
    count["functions"] = 0
    count["comments"] = 0
    count["characters"] = 0

    for subdir, dirs, files in os.walk("inputs"):
        for file in files:
            filepath = subdir + os.sep + file

            if filepath.endswith(".mcfunction"):
                if(debug):
                    print(filepath)

                count_commands(filepath)

    # Count total number of commands
    command_count = 0
    for command in commands:
        command_count += count[command]

    # Print values
    print("Function count: %i" % count["functions"])
    print("Comment count: %i" % count["comments"])
    print("Character count: %i" % count["characters"])
    print("Total command count: %i\n" % command_count)
    
    print("Individual command count:")
    for command in commands:
        if(count[command] != 0):
            print("  " + command + ": %i" % count[command])

# main()

if __name__ == "__main__":
    
    main()
