# Bash Script
#### Download
```bash
curl -o Lottery-Draw-Audit.sh https://raw.githubusercontent.com/VD171/Lottery-Draw-Audit/refs/heads/main/Lottery-Draw-Audit.sh
```
#### Run
```bash
sh Lottery-Draw-Audit.sh <initial_seed> <final_seed> <number_of_participants> <final_hash>
```
#### Example
```bash
sh Lottery-Draw-Audit.sh "-100123456789|1234|1234567890" "-100123456789|4321|0987654321" 171 "3d23237f35fda8df3d7c6f223bb55b2b9ce966e354a97c9c292a7b480cb05e09"
```
# Python Script
#### Download
```bash
curl -o Lottery-Draw-Audit.py https://raw.githubusercontent.com/VD171/Lottery-Draw-Audit/refs/heads/main/Lottery-Draw-Audit.py
```
#### Run
```bash
python Lottery-Draw-Audit.py <initial_seed> <final_seed> <number_of_participants> <final_hash>
```
#### Example
```bash
python Lottery-Draw-Audit.py "-100123456789|1234|1234567890" "-100123456789|4321|0987654321" 171 "3d23237f35fda8df3d7c6f223bb55b2b9ce966e354a97c9c292a7b480cb05e09"
```
# Perl Script
#### Download
```bash
curl -o Lottery-Draw-Audit.pl https://raw.githubusercontent.com/VD171/Lottery-Draw-Audit/refs/heads/main/Lottery-Draw-Audit.pl
```
#### Run
```bash
perl Lottery-Draw-Audit.pl <initial_seed> <final_seed> <number_of_participants> <final_hash>
```
#### Example
```bash
perl Lottery-Draw-Audit.pl "-100123456789|1234|1234567890" "-100123456789|4321|0987654321" 171 "3d23237f35fda8df3d7c6f223bb55b2b9ce966e354a97c9c292a7b480cb05e09"
```
  
# Expected Output
`Initial Seed:     -100123456789|1234|1234567890`  
`Final Seed:       -100123456789|4321|0987654321`  
`Participants:     171`  
`Final Hash:       3d23237f35fda8df3d7c6f223bb55b2b9ce966e354a97c9c292a7b480cb05e09`  
`======================`  
`🎯 DRAW RESULT:   60`  
`======================`  
  
## License
This project is licensed under the **GNU Affero General Public License v3.0**.  
For more details, see the [LICENSE](LICENSE) file.  
