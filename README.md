Fattural (Factur-x As Training daTa for neURAL networks)
was the attempt to providing tools and procedures to generate 
training data for Open-Source neural invoice recognition.

Training data can be [essential](https://arxiv.org/pdf/1708.07403.pdf) 
for neural networks and is available in hybrid invoices like Factur-X.

The first procedure is a combination of [Corpus](https://github.com/ZUGFeRD/corpus/),
[Mustang](https://mustangproject.org), 
XSLT and a [open source neural invoice recogition](https://github.com/naiveHobo/InvoiceNet)

The main issue is that I don't get Invoicenet to run on Ubuntu 18.04 or 20.04, no matter how I try to install anaconda, tensorflow would always
error on an invalid opcode, core dumped ("Ungültiger Maschinenbefehl (Speicherabzug geschrieben)")

Otherwise the usage would ne:
Download a XSLT processor like [Saxon](http://saxon.sourceforge.net/)  and [Java](https://www.azul.com/downloads/zulu-community/?package=jdk)
and run
`java -jar C:\Users\jstaerk\workspace\XMLExamples\saxon9he.jar .\input.xml .\xslt.xsl`

The output will be InvoiceNet JSON, the input can be any UN/CEFACT CII 2016b file, like XRechnung, or 
XML extracted from Factur-X/ZUGFeRD 2 files e.g. using [Mustangs](https://www.mustangproject.org/commandline/) 
`--action=extract` on the commandline. 
```

sudo apt-install default-jre libsaxon-java git
git clone https://github.com/naiveHobo/InvoiceNet.git
cd InvoiceNet/

# Run installation script
./install.sh
cd ..

wget https://www.mustangproject.org/deploy/Mustang-CLI-2.1.1.jar
git clone git@github.com:ZUGFeRD/corpus.git
java -jar ~/Downloads/Mustang-CLI-2.1.1.jar --action=extract --source=Avoir_FR_type380_BASIC.pdf --out=Avoir_FR_type380_BASIC.xml

saxon-xslt FNFE-factur-x-examples/Avoir_FR_type380_BASIC.xml fattural/xslt.xsl > Avoir_FR_type380_BASIC.json

find corpus-master/ZUGFeRDv2/correct -name "*.pdf"
```
My attempts to 
Download and install  [InvoiceNet](https://github.com/naiveHobo/InvoiceNet) include
```

sudo apt install git python3-pip python3-venv virtualenv python3-tk
sudo ln -s /usr/bin/pip3 /usr/bin/pip
pip install numpy pdf2image

git clone https://github.com/naiveHobo/InvoiceNet.git
cd InvoiceNet/
./install.sh
```
(installing the individual edition from https://docs.anaconda.com/anaconda/install/linux/ does not seem to work either)
```
ERROR: tensorflow 2.3.0 has requirement numpy<1.19.0,>=1.16.0, but you'll have numpy 1.19.5 which is incompatible.

./install.sh: Zeile 7: virtualenv: Befehl nicht gefunden
./install.sh: Zeile 8: env/bin/activate: Datei oder Verzeichnis nicht gefunden
./install.sh: Zeile 10: pip: Befehl nicht gefunden

```
