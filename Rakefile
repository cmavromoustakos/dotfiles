class Installer
  def symlink(target, link)
    if File.symlink?(link)
      unlink(link)
    elsif File.exist?(link)
      puts "ERROR: File exists: #{link}"
      exit 1
    end
    puts "Symlinking #{link} => #{target}"
    File.symlink(target, link)
  end

  def delete_symlink(link)
    unlink(link) if File.symlink?(link)
  end

  def unlink(link)
    if File.exist?(link)
      descriptor = File.symlink?(link) ? "symlink" : "file"
      puts "Deleting #{descriptor} #{link}"
      File.unlink(link)
    end
  end

  def setup_nvim
    nvim_conf_dir = "#{ENV["HOME"]}/.config/nvim"

    if !Dir.exist?(nvim_conf_dir)
      Dir.mkdir(nvim_conf_dir)
    end

    symlink(
      File.join(pwd, "config/nvim/init.vim"),
      File.join(ENV["HOME"], ".config", "nvim", "init.vim")
    )
  end
end

def pwd; File.dirname(__FILE__); end
def target_path(file)
  File.join(ENV["HOME"], ".#{file}")
end

files = File.new(File.join(pwd, "MANIFEST"), "r").read.split("\n")

desc "Install all dotfiles"
task install: [:setup_nvim] do
  installer = Installer.new

  files.each do |file|
    installer.symlink(File.join(pwd, file), target_path(file))
  end
end

desc "Setup nvim"
task :setup_nvim do
  puts "setting up nvim"
  installer = Installer.new

  installer.setup_nvim
end

desc "Remove all dotfies"
task :uninstall do
  files.each do |file|
    Installer.new.unlink(target_path(file))
  end
end
