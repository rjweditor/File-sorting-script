import os
import shutil

def sort_files():
    directory = input("Enter the directory location: ")

    if not os.path.exists(directory):
        print("Directory does not exist.")
        return

    jpg_dir = os.path.join(directory, 'JPG')
    raf_dir = os.path.join(directory, 'RAF')

    # Create JPG and RAF directories if they don't exist
    os.makedirs(jpg_dir, exist_ok=True)
    os.makedirs(raf_dir, exist_ok=True)

    # Get a list of files in the specified directory
    files = os.listdir(directory)

    for file in files:
        if file.endswith('.JPG'):
            shutil.move(os.path.join(directory, file), os.path.join(jpg_dir, file))
        elif file.endswith('.RAF'):
            shutil.move(os.path.join(directory, file), os.path.join(raf_dir, file))

    print("Files sorted successfully!")

# Call the function
sort_files()
