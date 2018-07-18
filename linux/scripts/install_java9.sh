#!/bin/bash
sudo apt install software-properties-common --yes
sudo add-apt-repository ppa:webupd8team/java --yes
sudo apt update
sudo apt install oracle-java9-installer --yes
sudo apt install oracle-java9-set-default --yes

read -r -p "Update alternatives for 'java'? [Y/n] " response
case "$response" in
    [nN][eE][sS]|[nN]) 
        # dont update alternative for java
        ;;
    *)
        sudo update-alternatives --config java
        ;;
esac

read -r -p "Update alternatives for 'javac'? [Y/n] " response
case "$response" in
    [nN][eE][sS]|[nN]) 
        # dont update alternative for javac
        ;;
    *)
        sudo update-alternatives --config javac
        ;;
esac

read -r -p "Set JAVA_HOME? [Y/n] " response
case "$response" in
    [nN][eE][sS]|[nN]) 
        # dont set JAVA_HOME
        ;;
    *)
        read -r -p "Set path to JDK. Default is '/usr/lib/jvm/java-9-oracle': " response
        JAVA_HOME_NEW=$response
        JAVA_HOME_CUR=echo $JAVA_HOME

        # Check if JAVA_HOME is empty or needs to update
        if [ ! -z "$JAVA_HOME_CUR" -a "$JAVA_HOME_CUR"!=" " ]; then
            # Case JAVA_HOME not set
            echo "Adding JAVA_HOME to /etc/enviroment."
            JAVA_HOME="JAVA_HOME"\"$JAVA_HOME_NEW\"
            sudo echo $JAVA_HOME >> /etc/environment
        else
            # Case JAVA_HOME set



            # ----- TODO -----




            echo "set"
        fi
        ;;
esac