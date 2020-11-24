#!/usr/bin/env ruby

def switch_user(user)
  system("echo #{ARGV[0]}")
  system('ssh-add -D')
end
