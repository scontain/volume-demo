## SCONE FSPF Volume Demo
This repository contains SCONE FSPF volume demo.

### Details
Try it out by executing:
```bash
git clone https://github.com/scontain/volume-demo && cd volume-demo
```
Then, you execute the following command:
```bash
docker-compose run volume-demo bash
```
Note that running with docker-compose it automatically start CAS service for you.
Next go to the demo directory:
```bash
 cd /demo/ && ./run.sh
```
Alternatively, you can just run this demo by a single command: 
```bash
docker-compose up
```
If you check the content of the input file in the encrypted volume:
```bash
vi encrypted_volume/input.txt
```
you will see only cipher text, e.g.,: 
```
À¹^E&¡<91>D>^Eû^O~Eãç«ò^N<88>p<87>Î95
```
### Contacts
Send emails to info@scontain.com
