export EC2_HOME=/usr/local/ec2
export AWS_RDS_HOME=/usr/local/rdscli
export JAVA_HOME=/Library/Java/Home
PATH=/usr/local/bin:/usr/local/sbin:${PATH}:/usr/local/mysql/bin:/usr/local/ec2/bin:/usr/local/git/bin:/usr/local/jruby/bin:/usr/local/rdscli/bin

# Capuccino
export OBJJ_HOME=/usr/local/share/objj
export STEAM_BUILD=/Users/martinrehfeld/objj_build

# Bundler
export BUNDLER_EDITOR=mvim

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
