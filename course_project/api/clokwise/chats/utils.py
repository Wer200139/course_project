from PIL import Image
from magic import Magic
import os

def is_valid_image_pillow(file):
    try:
        with Image.open(file) as img:
            img.verify()
            return True
    except (IOError, SyntaxError):
        return False

def detect_mime_type(uploaded_file) -> str:
    magic = Magic(mime=True)
    chunk = next(uploaded_file.chunks(chunk_size=2048))
    return magic.from_buffer(chunk)

def get_extension(file):
    filename, file_extension = os.path.splitext(file.name)
    return file_extension.lower()