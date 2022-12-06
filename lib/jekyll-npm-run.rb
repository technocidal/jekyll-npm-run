Jekyll::Hooks.register :site, :post_write do |site|
  system "npm run build"
end