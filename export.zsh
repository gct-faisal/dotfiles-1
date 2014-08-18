export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

### JAVA
export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export JRE_HOME=/usr/lib/jvm/java-7-oracle/jre
#export M2_HOME=/usr/share/maven
export M2_HOME=/usr/local/apache-maven/apache-maven-3.1.1
export M2=$HOME/.m2
export PATH=$M2:$PATH
#export JAVA_HOME=/usr/lib/jvm/java-8-oracle
#export JRE_HOME=/usr/lib/jvm/java-8-oracle/jre

### ECLIPSE
export ECLIPSE_HOME=$HOME/bin/eclipse

### ORACLE
export ORACLE_HOME=/usr/lib/oracle/11.2/client64
export LD_LIBRARY_PATH=${ORACLE_HOME}/lib
export TNS_ADMIN=${ORACLE_HOME}
export PATH=$PATH:$ORACLE_HOME/bin

###  GO
export GOROOT=$HOME/bin/golang
export GOPATH=$HOME/code/gocode


### RUBY GEM
#export GEM_HOME=$HOME/.gem
#export PATH=$PATH:$HOME/.rvm/bin 
#eval "$(rbenv init -)"
#export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"


#-------------------------------#
#------------- PATH ------------#
#-------------------------------#
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
