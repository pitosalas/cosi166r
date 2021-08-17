# Add files and commands to this file, like the example:
#   watch(%r{file/path}) { `command(s)` }
#
guard :shell do
  # clearing :on
  directories %w(. /Users/pitosalas/mydev/cg-topics)
  watch(%r{(Rules)|(.erb)|(.rb)|(.cg)|(.css)}) { `cg compile` }
end
