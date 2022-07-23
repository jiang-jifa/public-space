for file in *.excalidraw
do
  mv "$file" "${file/.excalidraw/.excalidraw.svg}"
done
