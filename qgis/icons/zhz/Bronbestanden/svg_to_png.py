import os
import glob
import cairosvg
import xml.etree.ElementTree as ET

# Set your input/output directory
input_folder = './svg'
output_folder = './png'

# Ensure output folder exists
os.makedirs(output_folder, exist_ok=True)

# Find all SVG files
svg_files = glob.glob(os.path.join(input_folder, '*.svg'))

for svg_file in svg_files:
    base_name = os.path.splitext(os.path.basename(svg_file))[0]
    output_path = os.path.join(output_folder, f'{base_name}.png')

    try:
        with open(svg_file, 'r', encoding='utf-8') as f:
            svg_data = f.read()

        # Parse SVG XML
        root = ET.fromstring(svg_data)

        viewBox = root.get('viewBox')
        if viewBox:
            parts = viewBox.strip().split()
            if len(parts) == 4:
                x_offset = float(parts[0])
                y_offset = float(parts[1])
                width = float(parts[2])
                height = float(parts[3])

                if x_offset != 0 or y_offset != 0:
                    # Move existing children into a new group with translation
                    g = ET.Element('g')
                    g.set('transform', f'translate({-x_offset}, {-y_offset})')
                    g.extend(list(root))  # move all children into group
                    root.clear()
                    root.set('viewBox', f'0 0 {width} {height}')
                    root.append(g)

        # Re-serialize modified SVG
        svg_bytes = ET.tostring(root, encoding='utf-8', method='xml')

        # Convert to PNG
        cairosvg.svg2png(
            bytestring=svg_bytes,
            write_to=output_path,
            output_width=1024,
            output_height=1024
        )

        print(f'Converted: {svg_file} → {output_path}')

    except Exception as e:
        print(f'Error converting {svg_file}: {e}')
