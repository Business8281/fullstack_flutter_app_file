import argparse
from PIL import Image, ImageDraw, ImageFont
import os

def create_icon(path):
    # Create a 1024x1024 image
    size = (1024, 1024)
    # Purple gradient-ish background (solid for simplicity)
    color = (103, 58, 183) # Deep Purple
    img = Image.new('RGB', size, color)
    
    d = ImageDraw.Draw(img)
    
    # Add a large "A" character
    # Since we can't easily guarantee font availability, we'll draw simple shapes or text
    # Try to load default font, or just draw a circle/rect if fails
    
    # Draw a white circle in the middle
    center = (512, 512)
    radius = 300
    d.ellipse([center[0]-radius, center[1]-radius, center[0]+radius, center[1]+radius], fill=(255, 255, 255))
    
    # Draw a purple "A" shape (triangle) inside
    # (x1, y1), (x2, y2), (x3, y3)
    p1 = (512, 300)
    p2 = (350, 700)
    p3 = (674, 700)
    d.polygon([p1, p2, p3], fill=color)

    # Save
    os.makedirs(os.path.dirname(path), exist_ok=True)
    img.save(path)
    print(f"Icon saved to {path}")

if __name__ == "__main__":
    create_icon("assets/icon/app_icon.png")
