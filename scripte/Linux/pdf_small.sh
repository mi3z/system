#!/bin/bash


for f in *.pdf; do
    echo "File -> $f"
#    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile="small_$f" "$f"
#    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile="small_$f" "$f"
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile="small_$f" "$f"
done



# /screen selects low-resolution output similar to the Acrobat Distiller "Screen Optimized" setting.
# /ebook selects medium-resolution output similar to the Acrobat Distiller "eBook" setting.
# /printer selects output similar to the Acrobat Distiller "Print Optimized" setting.
# /prepress selects output similar to Acrobat Distiller "Prepress Optimized" setting.
# /default selects output intended to be useful across a wide variety of uses, possibly at the expense of a larger output file.



