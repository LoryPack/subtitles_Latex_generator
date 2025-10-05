#!/bin/bash

# Step 1: Run the Python script to generate slides.tex
echo "Generating slides from outline.txt..."
python3 make_slides_tex_from_txt.py

cd tex

# Step 2: Compile the LaTeX document using pdflatex
echo "Compiling LaTeX presentation..."
pdflatex -interaction=nonstopmode main.tex > /dev/null

# Step 3: Run pdflatex a second time for proper references (if needed)
# pdflatex -interaction=nonstopmode main.tex > /dev/null

# Step 4: Clean up auxiliary files (optional)
echo "Cleaning up auxiliary files..."
rm -f main.aux main.log main.nav main.out main.snm main.toc

mv main.pdf ../slides.pdf

# Completion message
echo "Presentation compiled successfully! Check slides.pdf"

