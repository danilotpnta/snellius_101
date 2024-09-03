# Copy files to local machine
rsync -av scur1045@snellius.surf.nl:~/FACT-project /Users/danilotpnta/Desktop/1. Coding/FACT-project

# Activate Env
module purge
module load 2022
module load Anaconda3/2022.05
source activate FACT

# to check jobs dynamically
watch -n 1 squeue

# get interactive session
srun --partition=gpu --gpus=1 --ntasks=1 --cpus-per-task=18 --time=03:00:00 --pty bash -i

# to check budget
accinfo -u scur1045

# After two days -->  2.43% Budget used
Initial budget       : 450000:00
Used budget          : 10952:12
Remaining budget     : 439047:47

