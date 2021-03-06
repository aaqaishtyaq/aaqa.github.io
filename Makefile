default: install

h help:
		@grep '^a-Z' Makefile

install:
		bundle config set --local path vendor/bundle
		bundle install

s serve:
		bundle exec jekyll serve --trace --livereload

build:
		yarn build && JEKYLL_ENV=production bundle exec jekyll build --trace

