# Setup SERVER_ENV_DIR environment variable
export SERVER="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Source the aliases
source $SERVER/env/aliases.sh

# Source the functions
source $SERVER/env/functions.sh

# Setup the server environment
server-setup
