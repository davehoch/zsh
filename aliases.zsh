# aliases
# Do not put aliases to applications in here.  Use ln -s to make a link instead
# ln -s <source> /usr/local/bin/<target>
# ln -s "/Applications/NetBeans/Apache NetBeans 12.1.app/Contents/Resources/NetBeans/netbeans/bin/netbeans" /usr/local/bin/netbeans
alias cypress='./node_modules/cypress/bin/cypress open --env type=dev --config baseUrl=http://localhost:8084 &'
alias diff-pdf='diff-pdf --view --mark-differences'
alias lfcd='source lfcdscript' # this is required so that the cd command doesn't run in a subshell
alias ll='ls -lhFG'
alias lla='ls -alhFG'
alias ls='ls -FG'
alias mvnfix='mvn com.clearwateranalytics:dependency:resolve-transitives'
alias mvnquick='mvn -T 1C install -DskipDependencyCheck=true -DskipTests=true -Djacoco.skip=true -Dmaven.javadoc.skip=true -P dev'
alias mvndquick='mvnd install -DskipDependencyCheck=true -DskipTests=true -Djacoco.skip=true -Dmaven.javadoc.skip=true'
alias mvnupdate='mvn com.clearwateranalytics:ca-versions-maven-plugin:update-properties com.clearwateranalytics:ca-versions-maven-plugin:use-latest-releases -DallowMajorUpdates=true -Dmaven.version.rules=https://versionmanager.arbfund.com/app/rules/version-rules.xml -DgenerateBackupPoms=false'
alias tf='terraform'
alias ql='qlmanage -p "$@" > /dev/null'
alias vm='versionmanager'