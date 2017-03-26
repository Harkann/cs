#! /bin/sh
if [ -n "$SSH_AGENT_PID" ]; then
# look for id in the ssh agent or adds one if none exists
	ssh-add -l > /dev/null || ssh-add
fi
exec /usr/bin/ssh "$@"
