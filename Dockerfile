# The dockerfile for this image can be found at _docker/Dockerfile
# It lives separately from this Dockerfile because it has a lot of dependencies already installed that
# are common for python projects to need and use. Having it separate and live on dockerhub means the
# time to run this action is drastically reduced.
FROM jacksonmaxfield/python-git-commit-action

# GH Actions labels
LABEL "com.github.actions.name"="Deploy to GitHub Pages"
LABEL "com.github.actions.description"="This action will handle the building and deploying process of the project to GitHub Pages."
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/majo-ai/majo-ai.github.io"
LABEL "homepage"="https://github.com/majo-ai/majo-ai.github.io"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
