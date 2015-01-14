# Setup SERVER_ENV_DIR environment variable
export SERVER_ENV_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Source the aliases
source $SERVER_ENV_DIR/aliases.sh

# Source the functions
source $SERVER_ENV_DIR/functions.sh

# Setup the server environment
server-setup
