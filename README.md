## Anadolu University - Graduate School of Science - LaTeX Thesis Template

I just graduated with a PhD degree from [Graduate School of Science](http://www.fenbilens.anadolu.edu.tr), [Anadolu University](https://www.anadolu.edu.tr).
I would like to share my LaTeX template that satisfies the [thesis specifications](http://www.fenbilens.anadolu.edu.tr/assets/bilgibankasi/20160229110143_tt.pdf) issued in December, 2015.

It has all the newly added pages (approval, ethics, resume, etc.) and it is highly automated.

You can compile individual chapters (`Chapter1.tex`, `Chapter2.tex` and so on) independently.
If you want to compile the whole thesis (`AhmetArslan_PhDThesis.tex`), you need to run `./strip.sh` script, which will generate stripped chapters.
You will love the sensation :relieved: of seeing whole thesis in one piece for the first time.
Currently I do not have windows counterpart of the script. The contribution of `strip.bat` would be highly appreciated.

The cover page (`Kapak.tex`) needs to be compiled separately since it is not a part of the thesis.

P.S. Do not forget to use "actual size" option while printing the PDF file.


###Author
Please feel free to contact Ahmet Arslan at `aarslan2@anadolu.edu.tr` if you have any questions, comments or contributions. 
Please do not forget to give a star to the project if you use this template.

P.S. I strongly suggest you to maintain your LaTeX files in a private GitHub repo, which is free with your university e-mail (`@anadolu.edu.tr`) address.