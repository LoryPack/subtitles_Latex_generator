# Subtitles TXT to PDF

A simple tool that converts text outlines into PDF slides with large, bottom-aligned text - perfect for subtitle-style presentations or karaoke displays.

## Overview

This project takes a text file (`outline.txt`) and converts it into a PDF presentation where each section (separated by double line breaks) becomes a slide with large, white text positioned at the bottom of a black background.

## Features

- **Simple text input**: Just write your content in `outline.txt`
- **Automatic slide generation**: Each section separated by double line breaks becomes a slide
- **Subtitle-style formatting**: Large white text on black background, positioned at the bottom
- **16:9 aspect ratio**: Optimized for modern displays and projectors
- **One-command compilation**: Single script handles the entire process

## Requirements

- Python 3
- LaTeX distribution with `pdflatex`
- `beamer` LaTeX package

## Installation

1. Clone or download this repository
2. Ensure you have Python 3 and LaTeX installed on your system
3. Make the compilation script executable:
   ```bash
   chmod +x compile_slides.sh
   ```

## Usage

### Step 1: Prepare your content

Edit `outline.txt` with your content. Each slide is separated by a double line break (`\n\n`):

```
-This is the first slide
with multiple lines if needed

-This is the second slide
also with multiple lines

-This is the third slide
```

### Step 2: Generate the PDF

Run the compilation script:

```bash
./compile_slides.sh
```

This will:
1. Convert your `outline.txt` into LaTeX slides
2. Compile the LaTeX into a PDF
3. Clean up temporary files
4. Output the final `slides.pdf`

## File Structure

```
├── outline.txt              # Input text file with your content
├── make_slides_tex_from_txt.py  # Python script that converts text to LaTeX
├── compile_slides.sh        # Main compilation script
├── slides.pdf              # Generated PDF output
└── tex/
    ├── main.tex            # LaTeX template with slide formatting
    └── slides.tex          # Generated LaTeX slides (auto-created)
```

## Customization

### Changing the slide format

Edit `tex/main.tex` to modify:
- Font size (currently 26pt)
- Text color (currently white)
- Background color (currently black)
- Text positioning (currently bottom-aligned)

### Changing the aspect ratio

Modify the `aspectratio` parameter in `tex/main.tex`:
- `aspectratio=169` for 16:9 (widescreen)
- `aspectratio=43` for 4:3 (standard)
- `aspectratio=1610` for 16:10

## Example

Given this `outline.txt`:
```
-Introduction
Welcome to our presentation

-Key Points
First important point
Second important point

-Conclusion
Thank you for watching
```

The tool will generate a PDF with 3 slides, each displaying the text in large white font at the bottom of a black slide.

## Troubleshooting

### LaTeX not found
Make sure you have a LaTeX distribution installed:
- **macOS**: Install MacTeX
- **Ubuntu/Debian**: `sudo apt-get install texlive-full`
- **Windows**: Install MiKTeX or TeX Live

### Permission denied
Make the script executable:
```bash
chmod +x compile_slides.sh
```

### Empty slides
Ensure your `outline.txt` has content separated by double line breaks (`\n\n`).

## License

This project is open source. Feel free to modify and distribute as needed.
# subtitles_Latex_generator
