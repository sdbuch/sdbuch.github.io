# _plugins/qmd_converter.rb
require 'yaml'

Jekyll::Hooks.register :site, :pre_render do |site|
  qmd_files = Dir.glob(File.join(site.source, '_posts', '*.qmd'))

  qmd_files.each do |qmd_file|
    md_file = qmd_file.sub(/\.qmd$/, '.md')

    # Only process if .md doesn't exist or .qmd is newer
    if !File.exist?(md_file) || File.mtime(qmd_file) > File.mtime(md_file)
      content = File.read(qmd_file)
      
      # Parse YAML frontmatter if it exists
      if content.start_with?('---')
        parts = content.split(/^---\s*$/, 3)
        if parts.length >= 3
          # Has frontmatter
          frontmatter = parts[1].strip
          body = parts[2].strip
          
          # Write the .md file with frontmatter preserved
          File.open(md_file, 'w') do |f|
            f.write("---\n")
            f.write(frontmatter)
            f.write("\n---\n\n")
            f.write(body)
          end
        else
          # No valid frontmatter, just copy
          File.write(md_file, content)
        end
      else
        # No frontmatter, just copy
        File.write(md_file, content)
      end
    end
  end
end
