 pkg:info "python"
 x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/pip -V' <<A
pip 21.2.4 from /home/mnnna/.x-cmd/.tmp/pkg/installed/python/py39_4.12.0/lib/python3.9/site-packages/pip (python 3.9)
A
x pkg uninstall python