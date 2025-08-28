# _plugins/qmd_converter.rb
Jekyll::Hooks.register :site, :pre_render do |site|
  qmd_files = Dir.glob(File.join(site.source, '_posts', '*.qmd'))

  qmd_files.each do |qmd_file|
    md_file = qmd_file.sub(/\.qmd$/, '.md')

    # Only copy if .md doesn't exist or .qmd is newer
    if !File.exist?(md_file) || File.mtime(qmd_file) > File.mtime(md_file)
      FileUtils.cp(qmd_file, md_file)
    end
  end
end
