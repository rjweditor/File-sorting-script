```markdown
# File Sorting Script

This Python script helps organize files of specific types into separate directories within a chosen directory.

## Overview

The provided Python script sorts files with specific file extensions into separate subdirectories within the specified directory. By default, it sorts `.JPG` and `.RAF` files into 'JPG' and 'RAF' subdirectories, respectively.

## Customizing File Types

To adapt the script for sorting different file types:

1. **Open the Python Script**: Open the Python script (`sort_files.py`) in a text editor or code editor of your choice.

2. **Modify File Extensions**: Look for the section where file extensions are checked for sorting:
   
   ```python
   for file in files:
       if file.endswith('.JPG'):
           shutil.move(os.path.join(directory, file), os.path.join(jpg_dir, file))
       elif file.endswith('.RAF'):
           shutil.move(os.path.join(directory, file), os.path.join(raf_dir, file))
   ```

3. **Edit File Extension Conditions**: Modify the conditional statements (`if` conditions) to match the file extensions you want to sort. For instance, if you want to sort `.PNG` and `.TXT` files:

   ```python
   for file in files:
       if file.endswith('.PNG'):
           shutil.move(os.path.join(directory, file), os.path.join(png_dir, file))
       elif file.endswith('.TXT'):
           shutil.move(os.path.join(directory, file), os.path.join(txt_dir, file))
   ```

4. **Save Changes**: Save the modified Python script.

## Running the Script

To run the script:

1. Open a terminal or command prompt.
2. Navigate to the directory where the Python script (`sort_files.py`) is located.
3. Run the script by entering `python sort_files.py`.
4. Follow the on-screen instructions, providing the directory location when prompted.

## Important Notes

- Ensure you have necessary permissions to move files within the specified directory.
- Be cautious when modifying the script and ensure correct file extensions are used in the conditions to avoid unintended file operations.
```

