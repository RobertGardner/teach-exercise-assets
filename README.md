# Exercise Assets

<p align="middle">
  <img width="200" src="docs/assets/lfz.png" alt="LearningFuze Logo">
</p>

This repo is deployed on GitHub Pages and holds assets for curriculum exercises.

It is particularly useful for exercises with multiple phases, each with its own set of instructions.

## Usage

This site is built with [mkdocs](https://www.mkdocs.org/).
The site is written in Markdown in the `docs/` folder, with `index.md` as the starting page.
However, there is no navigation provided. Each exercise must be linked from the curriculum README.

The site is published to GitHub Pages using [CircleCI](https://circleci.com/).

The published site is found at [Exercise Assets](https://learning-fuze.github.io/exercise-assets).

1. Create a folder with the name of the exercise.
1. Add the folder to `index.md`.
   - Follow the pattern established there for best results.
1. Within the folder, add additional assets. E.g.,
   - `index.md`, a markdown file with additional instructions
   - image files
   - a folder with additional assets
1. Links to assets in this site will be at `https://learning-fuze.github.io/exercise-assets/[exercise-name]/[asset]`
1. Test the documents locally with the `mkdocs` server:
   - `pip install mkdocs`
   - `mkdocs serve`

## mkdocs Configuration

Configuration for mkdocs is in `mkdocs.yml`.

## CircleCI Configuration

CircleCI configuration is in `.circleci/config.yml`.

The CircleCI implementation:
- Installs `mkdocs` (a Python application)
- Publishes to the `gh-pages` branch of the `lfz-onboarding` repo

Since the `exercise-assets` repo is configured to host the `gh-pages` branch on GitHub Pages, that's all there is to it!
