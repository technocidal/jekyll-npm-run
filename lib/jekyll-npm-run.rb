Jekyll::Hooks.register(:site, :after_init) do |site|
  script = site.config["jekyll-npm-run"][0]["script"]

  Jekyll::Hooks.register(:site, :post_write) do |site|
    system("npm run #{script}")
  end
end
