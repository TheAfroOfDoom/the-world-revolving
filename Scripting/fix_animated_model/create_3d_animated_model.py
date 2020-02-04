# Jordan "TheAfroOfDoom" Williams
# Creates an animated 3D model in JSON from a texture and a directory of models
# Assumes ONLY one palette texture was used for the original models

import json, math, os, pprint
from PIL import Image

png_path = "texture.png"
models_folder = "models"
animated_path = "animated.json"
debug = True
pp = pprint.PrettyPrinter(2, compact = True)

def import_model_information():

    if(debug):
        print("<<Enter import_model_information()>>")

    animated_model = json.loads('{}')
    model_index = 0

    # For each model.json file in the models directory
    for model_file in os.listdir(models_folder):
        if(debug):
            print("\tCurrent model: " + model_file)
        
        raw = open(models_folder + "\\" + model_file).read()
        model_json = json.loads(raw)
        
        # Copy the first model's basic information:
        #   - 'credit'
        #   - 'textures'
        #   - etc.
        if(model_index == 0):
            for key in model_json:

                # Skip over 'elements' and 'groups'
                if(key == "elements" or key == "groups"):
                    continue

                if(debug):
                    print("\t\tAppending \"" + key + "\": " + json.dumps(model_json[key]))

                animated_model[key] = model_json[key]

        if(debug):
            pp.pprint("\t\tAppending \"elements\": " + json.dumps(model_json["elements"]))

        # Edit elements of current model.json
        for element in model_json["elements"]:

            # Append an "index" key for later UV re-mapping
            element["index"] = model_index

            # If "name" exists, append model file name to "name" tag of current element
            # Example: "cube_x" in "model_1.json" becomes "model_1.cube_x"
            if(element["name"] != ""):
                if(debug):
                    print("\t\tElement \"" + element["name"] + " -> ", end = "")

                element["name"] = os.path.splitext(model_file)[0] + "." + element["name"]

                if(debug):
                    print(element["name"])
        
        # Import all elements of current model
        if(model_index == 0):
            animated_model["elements"] = model_json["elements"]
        else:
            for element in model_json["elements"]:
                animated_model["elements"].append(element)

        model_index += 1

    animated_model_information = {}
    animated_model_information["model_count"] = model_index
    animated_model_information["animated_model"] = animated_model

    return animated_model_information

# import_model_information()

def expand_png(animated_model_information):

    # Load source PNG
    # NOTE: Assumed to be 16x16
    source_texture = Image.open(png_path)

    if(debug):
        print("Source path: " + png_path)

    # Calculate image dimensions in pixels
    width = 16 * math.ceil(math.sqrt(animated_model_information["model_count"]))
    height = width * animated_model_information["model_count"]

    if(debug):
        print("Calculations:\n\tWidth = " + str(width) + "\n\tHeight = " + str(height) + "\n")

    # Create fully transparent PNG file with calculated width and height
    expanded_texture = Image.new("RGBA", (width, height), (0xff, 0xff, 0xff, 0))

    # 0 - n - 1, where n = number of models being animated together
    for image_index in range(animated_model_information["model_count"]):
        image_x = 16 * (image_index // (width // 16))
        image_y = (image_index * width) + ((16 * image_index) % width)

        if(debug):
            print("\t\timage_index: " + str(image_index))
            print("\t\timage_x: " + str(image_x))
            print("\t\timage_y: " + str(image_y))

        expanded_texture.paste(source_texture, (image_x, image_y, image_x + 16, image_y + 16))

    # Get texture name from "textures" key in JSON
    # TODO(jordan): Extract last word from the file path in this somehow (up to the /)
    # texture_name = animated_model_information["animated_model"]["textures"][0]
    texture_name = "animated"

    # Export PNG
    expanded_texture.save(texture_name + ".png", "PNG")

# expand_png()

def export_json(model):

    new_file = open(animated_path, 'w')
    new_file.write(json.dumps(model, indent = 4))

# export_json()

def remap_uv(animated_model_information):

    # Calculate required width of texture / 16
    image_width = math.ceil(math.sqrt(animated_model_information["model_count"]))

    if(debug):
        print("Calculated width: " + str(image_width))

    # For each element in the animated model
    for element in animated_model_information["animated_model"]["elements"]:

        # TODO(jordan): Make this not crash if the element doesn't have a name
        if(debug):
            print("\tNext element: " + element["name"])

            # Grab what model this element belongs to
            model_index = element["index"]
            element.pop("index")

            # Calculate x_offset and y_offset to add to UV coordinates
            x_offset = (16 / image_width) * (model_index // image_width)
            y_offset = (16 / image_width) * (model_index % image_width)

            if(debug):
                print("\tCalculated x_offset: " + str(x_offset))
                print("\tCalculated y_offset: " + str(y_offset))

            # If "name" exists, append model file name to "name" tag of current element
            # Example: "cube_x" in "model_1.json" becomes "model_1.cube_x"
            if(element["name"] != ""):
                if(debug):
                    print("\t\tElement \"" + element["name"] + " -> ", end = "")
                    
                # For each face in the element
                for face, data in element["faces"].items():

                    if(debug):
                        print("\t\t" + face + ": " + json.dumps(data["uv"]) + " -> ", end = "")

                    # Divide by the image_width
                    data["uv"][0] /= image_width
                    data["uv"][1] /= image_width
                    data["uv"][2] /= image_width
                    data["uv"][3] /= image_width

                    # Add based off the model index
                    data["uv"][0] += x_offset
                    data["uv"][1] += y_offset
                    data["uv"][2] += x_offset
                    data["uv"][3] += y_offset

                    if(debug):
                        print(json.dumps(data["uv"]))

# remap_uv()

def main():

    # Imports models into a JSON object
    animated_model_information = import_model_information()

    # Re-maps UVs of elements based on which model they originated from
    remap_uv(animated_model_information)

    # Expands the source PNG file
    expand_png(animated_model_information)

    # Exports the JSON
    export_json(animated_model_information["animated_model"])

    print("Animated model generated.\n")

# main()

if __name__ == "__main__":
    
    main()
