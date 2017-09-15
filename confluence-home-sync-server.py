from bottle import route, run, static_file
import subprocess

#
# Download confluence-home on the fly from node1 to other node by
# ---------------------------------------------------------------
# curl -o /tmp/confluence-home.tar  http://confluence-cluster-640-node1:8888/download
# tar xfv /tmp/confluence-home.tar -C /
# ---------------------------------------------------------------

@route('/download')
def index():
    p = subprocess.Popen('tar cf /work-private/confluence-home.tar /confluence-home/bundled-plugins /confluence-home/confluence.cfg.xml /confluence-home/index /confluence-home/journal /confluence-home/synchrony-standalone.jar', shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    retval = p.wait()
    return static_file('confluence-home.tar', root='/work-private')

run(host='0.0.0.0', port=8888)
