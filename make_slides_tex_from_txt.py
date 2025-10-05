# Read the outline.txt and split it into sections based on double line breaks
with open('outline.txt', 'r', encoding='utf-8') as f:
    content = f.read().strip()

# Split slides whenever there's a double line break (\n\n)
slides = content.split("\n\n")

# Generate LaTeX file
with open('tex/slides.tex', 'w', encoding='utf-8') as f:
    for slide in slides:
        slide_text = slide.replace("\n", "\n\n")  # Replace newlines with spaces for multi-line entries
        # if slide_text:  # Avoid empty slides
        f.write(f'\\bottomSlide{{{slide_text}}}\n')
