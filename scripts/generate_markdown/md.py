# Jordan "TheAfroOfDoom" Williams
# Assists with generating the markdown files for a repository.

'''
Format:

# <<folder-name>>
#### <<folder-description>>

---

    - <<file-name>>: <<file-description>>
    
---

## <<subfolder-name>>
<<subfolder-description>>

'''

import os

debug = True

REPO = "A:\Minecraft\Java\Maps\THE WORLD REVOLVING"

def write_file(root, file_str):

    f = open(root + "\\README.md", 'w')
    f.write(file_str)
    f.close()

# write_file()

def main():

    # Change index path?
    if("y" == input("Change repository from '" + REPO + "'? (y/n): ").lower()):
        index_path = input("New repository: ")

    # Change directory to repository
    os.chdir(REPO)

    data = {}

    # Shorten REPO for input
    repo_index = REPO.rfind("\\") + 1
    print(REPO)
    print(REPO[repo_index:])

    # Get repo description
    data[REPO] = input("Repository description:\n")

    # After generating data for parent folder, go through each subfolder and generate data
    for root, dirs, files in os.walk(REPO):

        # Skip any .git folder/subfolders
        if ".git" in root:
            continue

        # Append folder name to file
        file_str = "# " + root[root.rfind('\\') + 1:] + "\n"

        # Append folder description to file
        file_str += "#### " + data[root] + "\n"

        # Append file names and descriptions to file
        file_str += "\n---\n\n"

        # Sift through all files and get descriptions
        for file_name in files:
            file_str += "    - " + file_name + ": " + input(file_name + ": ") + "\n\n"

        file_str += "---\n\n"

        # Append subfolder names and descriptions to file
        for dir in dirs:

            # Skip any .git folder/subfolders
            if ".git" in dir:
                continue

            file_str += "## " + dir + "\n"

            # Sift through all subfolders and get descriptions
            if root + "\\" + dir not in data:

                data[root + "\\" + dir] = input(root[repo_index:] + "\\" + dir + ":\n")

            file_str += data[root + "\\" + dir] + "\n\n"

        write_file(root, file_str)

    print("Markdown files generated.\n")

# main()

if __name__ == "__main__":
    
    main()
