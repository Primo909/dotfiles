alias erasmus="cd /home/kevinsteiner/Dokumente/Master/Erasmus-Tecnico/"
#alias energy2="cd /home/kevinsteiner/Dokumente/Master/Erasmus-Tecnico/Energy_Services/project2"
alias energy2="cd ~/Schreibtisch/EnergyDashboard && source project2/bin/activate"
alias economia="nohup firefox https://docs.google.com/document/d/1Z4DP-40BPqzVH-u9eFrCvdB7LeulKlXfmUfNcSdi0yc/edit"
#alias files="nohup nautilus -w . > /dev/null &"
alias files="nautilus -w . </dev/null &>/dev/null & >/dev/null"

spss_path="~/.local/share/IBM/SPSS/Statistics/26/bin/statistics"
alias spss="test -f $spss_path && $spss_path </dev/null &>/dev/null &"

alias m4b-tool='sudo docker run -it --rm -u $(id -u):$(id -g) -v "$(pwd)":/mnt sandreas/m4b-tool:latest'

alias madgraph="~/.local/share/MG5_aMC_v3_5_0/bin/mg5_aMC"
