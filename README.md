# edx-auto-script
This is any script to auto migrate data

# How to install
Follow these steps:
1. Install openEdx devstack in any folder (example: ~/openEdx):
   Follow step in link:
   
   `https://github.com/nghiemtientuan/devstack/tree/open-release/juniper.master`


2. Clone this project to same devstack folder (example: ~/openEdx):

    `git clone https://github.com/nghiemtientuan/edx-auto-script.git`


3. Setup and enable crontab in ubuntu (https://www.digitalocean.com/community/tutorials/how-to-use-cron-to-automate-tasks-ubuntu-1804):

    `crontab -e`
   

4. Add schedule in cron
   
   `* * * * * cd ~/openEdx/edx-auto-script && . ./run_cache_program_to_lms.sh >> ./logs/log_run.txt 2>&1`
   
   `* * * * * cd ~/openEdx/edx-auto-script && . ./run_refresh_course_metadata_to_discovery.sh >> ./logs/log_run.txt 2>&1`
   
6. Change folder edx-auto-script permission (Write + Execute)
   

5. Exit crontab check run log. Done
