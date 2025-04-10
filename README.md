# Usage
## Bash Script
### Lottery-Draw-Audit.sh
```bash
sh Lottery-Draw-Audit.sh <initial_seed> <final_seed> <number_of_participants> <final_hash>
```
#### Example
```bash
sh Lottery-Draw-Audit.sh "-100123456789|1234|1234567890" "-100123456789|4321|0987654321" 171 "3cea51c945ea350a3a0ea6efc58a274a74a359a06e6b72059b4dc1d76c007a56"
```
## Python Script
### Lottery-Draw-Audit.py
```bash
python Lottery-Draw-Audit.py <initial_seed> <final_seed> <number_of_participants> <final_hash>
```
#### Example
```bash
python Lottery-Draw-Audit.py "-100123456789|1234|1234567890" "-100123456789|4321|0987654321" 171 "3cea51c945ea350a3a0ea6efc58a274a74a359a06e6b72059b4dc1d76c007a56"
```
## Perl Script
### Lottery-Draw-Audit.pl
```bash
perl Lottery-Draw-Audit.pl <initial_seed> <final_seed> <number_of_participants> <final_hash>
```
#### Example
```bash
perl Lottery-Draw-Audit.pl "-100123456789|1234|1234567890" "-100123456789|4321|0987654321" 171 "3cea51c945ea350a3a0ea6efc58a274a74a359a06e6b72059b4dc1d76c007a56"
```
  
# Expected Output
> Initial Seed:     -100123456789|1234|1234567890  
> Final Seed:       -100123456789|4321|0987654321  
> Participants:     171  
> Expected Hash:    3cea51c945ea350a3a0ea6efc58a274a74a359a06e6b72059b4dc1d76c007a56  
> Calculated Hash:  3cea51c945ea350a3a0ea6efc58a274a74a359a06e6b72059b4dc1d76c007a56  
>  
> 🎯 DRAW RESULT:   78  
  
## License
This project is licensed under the **GNU Affero General Public License v3.0**.  
For more details, see the [LICENSE](LICENSE) file.  
