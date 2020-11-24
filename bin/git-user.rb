#!/usr/bin/env ruby

SSH_ROOT_DIR = "~/.ssh"

USERS = {
  "gusthebus-tt": "id_rsa",
  "cmavromoustakos": "id_rsa_cmavromoustakos"
}

def switch_user(user)
  system("echo #{ARGV[0]}")
  system('ssh-add -D')

  ssh_file = USERS[user.to_sym]

  system("ssh-add #{SSH_ROOT_DIR}/#{ssh_file}")
end

switch_user(ARGV[0])
