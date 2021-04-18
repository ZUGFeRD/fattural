Fattural (Factur-x As Training daTa for neURAL networks)
aims at providing tools and procedures to generate or provide open
training data for Open-Source neural invoice recognition.

Training data can be [essential](https://arxiv.org/pdf/1708.07403.pdf) 
for neural networks and is available in hybrid invoices like Factur-X.

The first procedure is a combination of [Corpus](https://github.com/ZUGFeRD/corpus/),
[Mustang](https://mustangproject.org), 
XSLT and a [open source neural invoice recogition](https://github.com/naiveHobo/InvoiceNet)

Usage:
Download a XSLT processor like [Saxon](http://saxon.sourceforge.net/)  and [Java](https://www.azul.com/downloads/zulu-community/?package=jdk)
and run
`java -jar C:\Users\jstaerk\workspace\XMLExamples\saxon9he.jar .\input.xml .\xslt.xsl`

The output will be InvoiceNet JSON, the input can be any UN/CEFACT CII 2016b file, like XRechnung, or 
XML extracted from Factur-X/ZUGFeRD 2 files e.g. using [Mustangs](https://www.mustangproject.org/commandline/) 
`--action=extract` on the commandline. 

Download and install  [InvoiceNet](https://github.com/naiveHobo/InvoiceNet)
```
sudo apt install git python3-pip python3-venv virtualenv python3-tk
sudo ln -s /usr/bin/pip3 /usr/bin/pip
pip install numpy pdf2image

git clone https://github.com/naiveHobo/InvoiceNet.git
cd InvoiceNet/
./install.sh
```
notes 
```
ERROR: tensorflow 2.3.0 has requirement numpy<1.19.0,>=1.16.0, but you'll have numpy 1.19.5 which is incompatible.

./install.sh: Zeile 7: virtualenv: Befehl nicht gefunden
./install.sh: Zeile 8: env/bin/activate: Datei oder Verzeichnis nicht gefunden
./install.sh: Zeile 10: pip: Befehl nicht gefunden

```
