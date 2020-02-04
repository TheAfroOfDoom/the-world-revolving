# Jordan "TheAfroOfDoom" Williams
# Converts old .mcfunction header formats to my new one.
# Informs of any 

import math, os, pprint

debug = False

output_folder = "outputs"
pp = pprint.PrettyPrinter(2, compact = False)

was_old = []
was_new = []
was_else = []

def fix_header(filename):
    
    # New format:
    
    # Project: THE WORLD REVOLVING
    # Author: TheAfroOfDoom
    # Function: \entity\directorial\tutorial\sort.mcfunction

    # Old format:
    
    # THE WORLD REVOLVING
    # function
    
    # theafroofdoom:entity/directorial/boss_fight/sort

    # If header format is already new format:
    with open(filename) as fxn:
        lines = fxn.readlines()

    if(lines[0] == "# Project: THE WORLD REVOLVING\n" and
        lines[1] == "# Author: TheAfroOfDoom\n" and
        lines[2].startswith("# Function: \\")):
        
        was_new.append(filename)

    elif(lines[0] == "# THE WORLD REVOLVING\n" and
        lines[1] == "# function\n" and
        lines[2] == "\n" and
        lines[3].startswith("# theafroofdoom:")):

        was_old.append(filename)

        lines[0] = "# Project: THE WORLD REVOLVING\n"
        lines[1] = "# Author: TheAfroOfDoom\n"
        lines[2] = "# Function: " + filename.replace("inputs\\theafroofdoom\\functions", "") + "\n"
        del lines[3]

        if(lines[3] != "\n"):
            lines.insert(3, "\n")

        write_file(filename.replace("inputs\\", ""), lines)

    # Else this is some other weird format
    else:
        was_else.append(filename)

# fix_header()

def write_file(filename, lines):

    os.chdir("outputs")

    filename.replace("\\", "/")

    if(filename.rfind('\\') != -1):
        directory = filename[0:filename.rfind('\\')]
        if not os.path.exists(directory):
            os.makedirs(directory)

    new_file = open(filename, 'w')
    new_file.write("".join(lines))

    os.chdir('..')

# write_file()

def main():
    
    for subdir, dirs, files in os.walk("inputs"):
        for file in files:
            filepath = subdir + os.sep + file

            if filepath.endswith(".mcfunction"):
                if(debug):
                    print(filepath)

                fix_header(filepath)

    # Print lists
    print("Was Old Format: ")
    pp.pprint(was_old)

    print("\nWas Different Format: ")
    pp.pprint(was_else)

# main()

if __name__ == "__main__":
    
    main()
