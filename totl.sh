#!/bin/bash
# AUTOMATICALLY CREATE NEW BASIC WEBSITE TEMPLATE

# NEAT-O COLORS!!!!!
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # NO COLOR


echo -n -e "${GREEN}Enter project name:${NC} "
read text
echo -e "${GREEN}You entered:${NC} $text"

# MAKE PROJECT FOLDER
mkdir $text && cd $text

# NEW MAIN HTML FILE
touch index.html

# SEND TEMPLATE TO HTML FILE
cat > index.html <<- EOM
<!DOCTYPE html>
<html>
  <head>
    <title>$text</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style/stylesheet.css">
    <script src="js/app.js"></script>
  </head>
  <body>

  </body>
</html>
EOM

# NEW STYLESHEET FILE
mkdir style && cd style
touch stylesheet.css
cd ..

# NEW JAVASCRIPT FILE
mkdir js && cd js
touch app.js
cd ..

# echo "Project $text created, enjoy."
echo -e "${BLUE}New project template $text created${NC}"

