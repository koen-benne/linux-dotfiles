if status is-login
    and status is-interactive
    # To add a key, set -Ua SSH_KEYS_TO_AUTOLOAD keypath
    # To remove a key, set -U --erase
    set -Ua SSH_KEYS_TO_AUTOLOAD ~/.ssh/github
    set -Ua SSH_KEYS_TO_AUTOLOAD ~/.ssh/gitlab
    set -Ua SSH_KEYS_TO_AUTOLOAD ~/.ssh/bitbucket
    keychain --quiet --eval $SSH_KEYS_TO_AUTOLOAD | source
end
