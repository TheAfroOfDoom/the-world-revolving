# Jordan "TheAfroOfDoom" Williams
# Generates translation files for all languages

import json, math, os, pprint
from collections import OrderedDict 

debug = True

output_folder = "outputs"
pp = pprint.PrettyPrinter(2, compact = False)

def import_indexes(path):
    
    if(debug):
        print("\n<<Enter import_indexes()>>")

    raw = open(path).read()
    return OrderedDict(json.loads(raw))

# import_indexes()

def generate_translation_file(indexes, key, hash_path):

    if(debug):
        print("\n<<Enter generate_translation()>>")

    hash = indexes["objects"][key]["hash"]

    # Import original translation file
    hash_path = hash_path + hash[0:2] + "/" + hash

    raw = open(hash_path).read()
    translations = json.loads(raw)

    # New color coded translation options file
    translation_options = OrderedDict()

    # Initialize missing_key list for this lang
    missing_keys = []

    # block.minecraft.bed.no_sleep
    translation_options["block.minecraft.bed.no_sleep"] = ""

    # menu.options
    if("menu.options" in translations):
        value = translations["menu.options"]
        translation_options["menu.options"] = "§6" + value
    else:
        missing_keys.append("menu.options")

    # options.chunks
    if("options.chunks" in translations):
        value = translations["options.chunks"]
        str_index = value.find("%s")
        # If '%s' is at the start, do this color order
        if(str_index == 0):
            translation_options["options.chunks"] = "§e%s§6"
            if(len(value) > 2):
                translation_options["options.chunks"] += value[2:len(value)]
        # Else, it is after the translated word, so do this color order
        else:
            translation_options["options.chunks"] = "§6" + value.replace("%s", "") + "§e%s"
    else:
        missing_keys.append("options.chunks")
        
    # options.clouds.fancy
    if("options.clouds.fancy" in translations):
        value = translations["options.clouds.fancy"]
        translation_options["options.clouds.fancy"] = "§c" + value
    else:
        missing_keys.append("options.clouds.fancy")

    # options.clouds.fast
    if("options.clouds.fast" in translations):
        value = translations["options.clouds.fast"]
        translation_options["options.clouds.fast"] = "§c" + value
    else:
        missing_keys.append("options.clouds.fast")

    # options.difficulty
    if("options.difficulty" in translations):
        value = translations["options.difficulty"]
        translation_options["options.difficulty"] = "§6" + value + "§a"
    else:
        missing_keys.append("options.difficulty")

    # options.difficulty.peaceful
    if("options.difficulty.peaceful" in translations):
        value = translations["options.difficulty.peaceful"]
        translation_options["options.difficulty.peaceful"] = "§c" + value
    else:
        missing_keys.append("options.difficulty.peaceful")

    # options.gamma
    if("options.gamma" in translations):
        value = translations["options.gamma"]
        translation_options["options.gamma"] = "§6" + value + " (" + translations["options.gamma.max"] + ")§c"
    else:
        missing_keys.append("options.gamma")

    # options.gamma.max
    if("options.gamma.max" in translations):
        value = translations["options.gamma.max"]
        translation_options["options.gamma.max"] = "§a" + value
    else:
        missing_keys.append("options.gamma.max")

    # options.off
    if("options.off" in translations):
        off = translations["options.off"]
    else:
        off = "OFF"
        missing_keys.append("options.off")

    # options.mipmapLevels
    if("options.mipmapLevels" in translations):
        value = translations["options.mipmapLevels"]
        translation_options["options.mipmapLevels"] = "§6" + value + " (" + off + ")§e"
    else:
        missing_keys.append("options.mipmapLevels")

    # options.renderClouds
    if("options.renderClouds" in translations):
        value = translations["options.renderClouds"]
        translation_options["options.renderClouds"] = "§6" + value + " (" + off + ")§a"
    else:
        missing_keys.append("options.renderClouds")

    # options.renderDistance
    if("options.renderDistance" in translations):
        value = translations["options.renderDistance"]
        translation_options["options.renderDistance"] = "§6" + value + " (7+)"
    else:
        missing_keys.append("options.renderDistance")

    # options.video
    if("options.video" in translations):
        value = translations["options.video"]
        translation_options["options.video"] = "§6" + value
    else:
        missing_keys.append("options.video")

    if(len(missing_keys) > 0):
        print("Language " + key.replace("minecraft","").replace("lang","").replace("/","").replace(".json","") + " is missing keys: ")
        pp.pprint(missing_keys)

    export_json(key, translation_options)

# generate_translation_file()

def export_json(key, translation):

    if(key.rfind('/') != -1):
        directory = key[0:key.rfind('/')]
        if not os.path.exists(directory):
            os.makedirs(directory)

    new_file = open(key, 'w')
    new_file.write(json.dumps(translation, indent = 4))

# export_json()

def main():

    # Default index_path
    index_path = "C:/Users/Jordan/AppData/Roaming/.minecraft/assets/indexes/1.14.json"

    # Default hash_path
    hash_path = "C:/Users/Jordan/AppData/Roaming/.minecraft/assets/objects/"

    # Change index path?
    if("y" == input("Change index path from '" + index_path + "'? (y/n): ").lower()):
        index_path = input("New index path: ")

    # Change hash path?
    if("y" == input("Change hash path from '" + hash_path + "'? (y/n): ").lower()):
        hash_path = input("New hash path: ")

    # Import indexes
    indexes = import_indexes(index_path)

    # Print indexes
    pp.pprint(indexes["objects"].keys())
    print("")

    # Inquire which hashes to go through
    choice = input("Starting key: ")
    while(choice not in indexes["objects"].keys()):
        choice = input("Key not found, try again: ")

    index_start = list(indexes["objects"].keys()).index(choice)

    choice = input("Final key: ")
    while(choice not in indexes["objects"].keys()):
        choice = input("Key not found, try again: ")

    index_end = list(indexes["objects"].keys()).index(choice) + 1

    if(index_end <= index_start):
        print("<<ERROR>>: index_start must be before index_end.")
        quit()

    # Change directory to output folder
    os.chdir(output_folder)

    # Generate each translation file
    for key in indexes["objects"].keys():
        if(list(indexes["objects"].keys()).index(key) >= index_start and list(indexes["objects"].keys()).index(key) < index_end):
            lang_key = key
            generate_translation_file(indexes, lang_key, hash_path)

    print("Translation files generated.\n")

# main()

if __name__ == "__main__":
    
    main()
