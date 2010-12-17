unless system("convert --version | grep 'ImageMagick' > /dev/null")
  include_recipe "pivotal_workstation::homebrew"
    
  execute "brew install imagemagick" do
    user WS_USER
    command "brew install imagemagick"
  end
end
